# -*- coding: utf-8 -*-
"""
Created on Wed May 13 12:43:58 2015

@author: christian
edited by Ying 9/21/2016 to remove near-splice codingsites

Parses Clares Drosophila snpEff file

Effect ( Effect_Impact | Functional_Class | Codon_Change | Amino_Acid_Change| Amino_Acid_length | Gene_Name | Transcript_BioType | Gene_Coding | Transcript_ID | Exon_Rank  | Genotype [ | ERRORS | WARNINGS ] )

Format of input file effect string: 
Effect ( Effect_Impact | Functional_Class | Codon_Change | Amino_Acid_change| Gene_Name | Transcript_BioType | Gene_Coding | Transcript_ID | Exon [ | ERRORS | WARNINGS ] )

first line:
['#CHROM', 'POS', 'ID', 'REF', 'ALT', 'QUAL', 'FILTER', 'INFO', 'FORMAT', 'ZI103', 'ZI104', 'ZI10', 'ZI112N',...

GOAL:
Write a python script that also checks if the exon is of protein_coding type, and that also reports all genes of possibly overlapping exons, not just the first one.

Output:
chr pos ref alt AC AN effect annGenes allGenes
2L      39466   C       .       0       194     EXON    Cda5    Cda5
2L      39467   G       .       0       194     EXON    Cda5    Cda5
2L      39468   T       C       1       194     NON_SYNONYMOUS  Cda5    Cda5
2L      39469   C       .       0       194     EXON    Cda5    Cda5
2L      39470   T       .       0       194     EXON    Cda5    Cda5
...

If there are several genes annotated for the same position (e.g. overlapping exons), they will be separated by a colon.

Usage (chromosome 2L):
python parse_drosoph_snpEff_file.py BDGP5_75_INFOadded_MERGED_2L_MASKED_bcftools.vcf BDGP5_75_INFOadded_MERGED_2L_MASKED_bcftools_parseCH.txt

"""

import sys, os
import re

fnIN = sys.argv[1]
fnOUT = sys.argv[2]

fileIN = open(fnIN, "r")
fileOUT = open(fnOUT, "w")

#print >> fileOUT, "chr pos ref alt AC AN effect annGenes allGenes"

for line in fileIN:
    line = line.split("\t")
    #set contigs or chromosomes you are interesting
    if line[0] not in ["NW_023496800.1", "NW_023496812.1", "NW_023496807.1", "NW_023496845.1", "NW_023496808.1", "NW_023496835.1", "NW_023496846.1", "NW_023496836.1", "NW_023496837.1", "NW_023496816.1", "NW_023496841.1", "NW_023496817.1", "NW_023496842.1", "NW_023496819.1", "NC_050699.1", "NW_023496810.1", "NW_023496843.1", "NW_023496915.1", "NW_023496921.1", "NW_023496822.1", "NW_023496954.1", "NW_023496828.1", "NW_023496844.1", "NW_023497044.1", "NW_023497053.1", "NW_023496803.1", "NW_023497066.1", "NW_023497093.1", "NW_023497102.1", "NW_023496833.1", "NW_023497160.1","NW_023497179.1", "NW_023497195.1" , "NW_023496834.1", "NW_023497259.1", "NW_023497268.1", "NW_023497287.1", "NW_023497308.1", "NW_023497318.1", "NW_023497319.1", "NW_023497326.1", "NW_023497328.1", "NW_023497329.1", "NW_023496847.1", "NW_023497333.1" , "NW_023497334.1", "NW_023497335.1","NW_023497336.1", "NW_023497340.1", "NW_023497342.1", "NW_023497343.1", "NW_023496804.1", "NW_023496849.1" ,"NW_023496850.1" ,"NW_023496851.1"]:
        continue
    chro = line[0]
    pos = int(line[1])
    ref = line[3]
    alt = line[4]
    info = line[7]
    
    info = info.split(";")    
    #AN = info[2].split("=")[1]
    #AC = info[0].split("=")[1]
    EFF = info[-1].split("=")[1].split(",")
    EFF_Effect = [x.split("(")[0] for x in EFF]
    EFF_String = [x.split("(")[1][:-1].split("|") for x in EFF]
    
    EFF_EXONS = [[j, i] for i,j in zip(EFF_String, EFF_Effect) if re.search("^EXON.*",  j) and i[6] == "protein_coding"]  # check if there are exons that are also protein coding (there are some ncRNA exons...)
    EFF_SYN = [[j, i] for i,j in zip(EFF_String, EFF_Effect) if re.search("^SYNONYMOUS.*",  j) and i[6] == "protein_coding"]  #just select SYNONYMOUS_CODING or SYNONYMOUS_START or SYNONYMOUS_STOP, not include Multiple effects, such as SPLICE_SITE_REGION+SYNONYMOUS_CODING,or any other effects type+SYNONYMOUS*
    EFF_NONSYN = [[j, i] for i,j in zip(EFF_String, EFF_Effect) if re.search("^NON_SYNONYMOUS.*",  j) and i[6] == "protein_coding"]  
    EFF_SPLICE = [[j, i] for i,j in zip(EFF_String, EFF_Effect) if re.search("^SPLICE_SITE_REGION", j) and i[6] == "protein_coding"]
    # EFF_INTRON = [[j, i] for i,j in zip(EFF_String, EFF_Effect) if re.search("^INTRON.*",  j) and i[6] == "protein_coding"]  
    
    # if pos > 7528: break  # for testing -> in 2L this is a position with only UTR's that are not also annotated as exons
    
    if EFF_EXONS == [] and EFF_SYN == [] and EFF_NONSYN == []:
        continue  # the site is not in an exon
        
    #EFF_GENE = []
    #if EFF_NONSYN != []: EFF_GENE.append(EFF_NONSYN)
    #if EFF_SYN != []: EFF_GENE.append(EFF_SYN)
    #if EFF_EXONS != []: EFF_GENE.append(EFF_EXONS)   # Note that exons technically contain UTR's, but in this file they do not! I.e. an exon position is never an UTR, it is always coding.
    #allGenes = set([x[0][1][5] for x in EFF_GENE])   # all annotated genes at this position
    
    if (EFF_NONSYN + EFF_SYN) != [] and EFF_SPLICE != []:
        continue # the site is near splice, remove
        
    #elif EFF_NONSYN != [] and EFF_SPLICE == []:
    #    effect = "NON_SYNONYMOUS"
    #    annGenes = set([x[1][5] for x in EFF_NONSYN])   # genes that lead to the nonsynonymous SNP
    elif EFF_SYN != [] and EFF_SPLICE == []:
        effect = "SYNONYMOUS"
        annGenes = set([x[1][5] for x in EFF_SYN])   # genes that lead to the synonymous SNP
    #elif EFF_EXONS != []:
    #    effect = "EXON"
    #    annGenes = set([x[1][5] for x in EFF_EXONS])   # genes that lead to the exon
      
    # print EFF_SYN
    # print EFF_EXONS
    # print EFF_SYN
    #print "\t".join([chro, str(pos), ref, alt, AC, AN, effect, ",".join(annGenes), ",".join(allGenes)])
    #print >> fileOUT, "\t".join([chro, str(pos), ref, alt, AC, AN, effect, ",".join(annGenes), ",".join(allGenes)])
        #print >> fileOUT, "\t".join([chro, str(pos), ref, alt, AC, AN, effect, ",".join(annGenes)])
        print >> fileOUT, "\t".join([chro, str(pos), ref, alt, effect, ",".join(annGenes)])
