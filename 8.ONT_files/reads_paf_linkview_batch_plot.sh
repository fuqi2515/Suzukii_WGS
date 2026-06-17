#!/bin/bash

# =============================================================================
# Script: reads_paf_linkview_batch_plot.sh
# Author: Yan Hou
# Date: 2025-06-19
# Note  : Developed with assistance from ChatGPT.
# Purpose: For each read ID in a list, extract mapping coordinates from a PAF
#          alignment file, generate edited .tsv and karyotype files, and plot
#          collinearity using LINKVIEW2.
# =============================================================================

# ------------------------
# Usage explanation
# ------------------------
usage() {
  echo "Usage: $0 --paf alignment.paf --reads ONT.reads.ID --contigID NW_XXXX --min lowerboundary --max upperboundary"
  echo "  --paf       : input PAF alignment file"
  echo "  --reads     : file containing list of ONT read IDs"
  echo "  --contigID  : target contig ID"
  echo "  --min       : minimum position on the reference"
  echo "  --max       : maximum position on the reference"
  exit 1
}

# ------------------------
# Parse input arguments
# ------------------------
while [[ "$#" -gt 0 ]]; do
  case $1 in
    --paf) paf="$2"; shift ;;
    --reads) reads="$2"; shift ;;
    --contigID) contig="$2"; shift ;;
    --min) min="$2"; shift ;;
    --max) max="$2"; shift ;;
    *) echo "Unknown parameter passed: $1"; usage ;;
  esac
  shift
done

# ------------------------
# Check required arguments
# ------------------------
if [[ -z "$paf" || -z "$reads" || -z "$contig" || -z "$min" || -z "$max" ]]; then
  usage
fi

# ------------------------
# Create output directory
# ------------------------
mkdir -p linkview_plots

# ------------------------
# Main loop: process each read ID individually
# ------------------------
while read -r readid; do
  tsv="${readid}.tsv"

  # Extract mapping information for this read and the target contig
  {
    echo -e "referenceID\treference_start\treference_end\treadsID\tread_start\treads_end\tstrand\tmatchLength\tblockLength\tmapQuality\treadLength"
    awk -v id="$readid" -v ref="$contig" -v minv="$min" -v maxv="$max" '
      $1 == id && $6 == ref && $8 > minv && $9 < maxv {
        strand = $5;
        read_start = $3;
        read_end = $4;
        readLength = $2;
        if (strand == "-") {
          tmp = read_start;
          read_start = read_end;
          read_end = tmp;
        }
        print $6, $8, $9, $1, read_start, read_end, strand, $10, $11, $12, readLength
      }
    ' "$paf" | sort -k2,2n
  } > "$tsv"

  # Skip if no alignments found
  if [ "$(wc -l < "$tsv")" -le 1 ]; then
    echo "No match found for $readid, skipping."
    continue
  fi

  # Generate aligned file (first 6 columns, no header)
  aligned="${readid}.tsv.edited"
  tail -n +2 "$tsv" | cut -f 1-6 -d " " > "$aligned"

  # Create karyotype (.K.edited) file
  kedit="${readid}.K.edited"
  awk 'NR > 1 {printf "%s:%s:%s\t", $1, $2, $3} END{print ""}' "$tsv" > "$kedit"

  # Check whether the minimum value is in the last two lines
  last2=$(tail -n 2 "$tsv")
  minval=$(awk 'NR > 1 {print $5; print $6}' "$tsv" | sort -n | head -n 1)
  found=0
  for val in $(echo "$last2" | awk '{print $5"\n"$6}'); do
    if [ "$val" -eq "$minval" ]; then
      found=1
      break
    fi
  done

  # Extract read length (assume unique)
  readlen=$(awk 'NR > 1 {print $NF}' "$tsv" | sort -u)

  # Append second line to karyotype file
  if [ "$found" -eq 1 ]; then
    echo "${readid}:${readlen}:1" >> "$kedit"
  else
    echo "${readid}:1:${readlen}" >> "$kedit"
  fi

  # Plot collinearity using LINKVIEW2
  LINKVIEW2 -k "$kedit" "$aligned" -o "linkview_plots/${readid}_syn" --chro_axis --align left

done < "$reads"
