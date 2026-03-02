import dadi
'''
usage: python dadi_1D_00_projections.py
Find the best combination of downsampling for maximizing number of segregating sites.
'''
#get snps file
snps1 = "China_dadi_1pop_random_snps.txt"

#Create python dictionary from snps file
dd1 = dadi.Misc.make_data_dict(snps1)
#pop_ids is a target name which should match the population header of your SNPs file columns
pop_ids=["China"]
#projection sizes, in ALLELES not individuals
proj_1 = [2]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [4]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [6]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [8]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [10]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [12]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [14]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [16]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [18]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [20]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [22]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [24]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [26]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [28]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [30]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [32]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [34]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [36]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [38]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [40]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [42]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [44]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [46]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [48]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [50]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [52]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [54]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [56]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [58]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [60]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [62]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [64]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [66]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [68]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [70]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [72]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [74]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [76]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [78]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [80]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [82]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [84]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [86]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [88]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [90]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [92]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [94]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [96]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [98]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [100]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [102]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [104]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [106]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [108]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [110]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [112]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [114]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [116]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [118]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [120]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [122]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [124]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [126]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [128]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
proj_1 = [130]
fs_1 = dadi.Spectrum.from_data_dict(dd1, pop_ids=pop_ids, projections = proj_1, polarized = False)
print ("sample sizes {}".format(fs_1.sample_sizes))
print ("Segregating sites {}".format(fs_1.S()))
