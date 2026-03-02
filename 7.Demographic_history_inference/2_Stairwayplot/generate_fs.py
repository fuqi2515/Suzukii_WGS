import sys
import os
import numpy
import dadi
import pylab
from datetime import datetime

#===========================================================================
# Import data to create site frequency spectrum
#===========================================================================

#**************

snps = "China_dadi_1pop_random_snps.txt"

#Create python dictionary from snps file
dd = dadi.Misc.make_data_dict(snps)

#**************
#pop_ids is a list which should match the populations headers of your SNPs file columns
pop_ids=["China"]

#**************
#projection sizes, in ALLELES not individuals
proj = [128]

#Convert this dictionary into folded AFS object
#[polarized = False] creates folded spectrum object
fs = dadi.Spectrum.from_data_dict(dd, pop_ids=pop_ids, projections = proj, polarized = False)

#print some useful information about the afs or sfs
print ("\n\n============================================================================\nData for site frequency spectrum\n============================================================================\n")
print("Projection: {}".format(proj))
print("Sample sizes: {}".format(fs.sample_sizes))
print("Sum of SFS: {}".format(numpy.around(fs.S(), 2)))

fs.to_file('China.fs')
