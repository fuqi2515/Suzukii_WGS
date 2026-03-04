from dadi import Numerics, PhiManip, Integration, Spectrum
  
'''
Models for testing various three population scenarios.

############################################

Author: QiFu
fuqi2015@gmail.com
Updated Oct 2024
'''

##########################################################################################

def split_BG_nomig(params, ns, pts):
    """
    Model with split between pop 1 and (2,3), then split between 2 and 3.
    Migration is symmetrical between all population pairs (ie 1<->2, 2<->3, and 1<->3).
    nu1a: Size of population 1 after split.
    nu1b: Size of population 1 during the period of T2
    nu2a: Size of population 2 after split.
    nu3a: Size of population 3 after split.
    nu2b: Size of population 2 at the end of T2.
    nu3b: Size of population 3 at the end of T2.
    T1: The scaled time between the split of pops 1 vs 2 and 3 (in units of 2*Na generations).
    T2: The scaled time between the split of pops 2 and 3 (in units of 2*Na generations).
    """
    #8 parameters
    nu1a, nu2a, nu3a, nu1b, nu2b, nu3b, T1, T2 = params
    xx = Numerics.default_grid(pts)
    phi = PhiManip.phi_1D(xx)
    phi = PhiManip.phi_1D_to_2D(xx, phi)
    nu1B_func = lambda t : nu1a * (nu1b/nu1a) ** (t/(T2+T1))
    nu2B_func = lambda t : nu2a * (nu2b/nu2a) ** (t/(T2+T1))
    phi = Integration.two_pops(phi, xx, T1, nu1 = nu1B_func, nu2 = nu2B_func, m12 = 0, m21 = 0)
    phi = PhiManip.phi_2D_to_3D_split_2(xx, phi)
    nu1_func = lambda t : nu1a * (nu1b/nu1a) ** ((t+T1)/(T1+T2))
    nu2_func = lambda t : nu2a * (nu2b/nu2a) ** ((t+T1)/(T1+T2))
    nu3_func = lambda t : nu3a * (nu3b/nu3a) ** (t/T2)
    phi = Integration.three_pops(phi, xx, T2, nu1=nu1_func, nu2=nu2_func, nu3=nu3_func, m12=0, m21=0, m23=0, m32=0, m13=0, m31=0)
    fs = Spectrum.from_phi(phi, ns, (xx,xx,xx))
    return fs

split_BG_nomig.__param_names__ = ["nu1a", "nu2a", "nu3a", "nu1b", "nu2b", "nu3b", "T1", "T2"]

def split_BG_symmig_all(params, ns, pts):
    """
    Model with split between pop 1 and (2,3), then split between 2 and 3.
    Migration is symmetrical between all population pairs (ie 1<->2, 2<->3, and 1<->3).
    nu1a: Size of population 1 after split.
    nu1b: Size of population 1 during the period of T2
    nu2a: Size of population 2 after split.
    nu3a: Size of population 3 after split.
    nu2b: Size of population 2 at the end of T2.
    nu3b: Size of population 3 at the end of T2.
    mA: Migration rate between population 1 and population (2,3)
    m1: Migration rate between populations 1 and 2 (2*Na*m)
    m2: Migration rate between populations 2 and 3
    m3: Migration rate between populations 1 and 3
    T1: The scaled time between the split of pops 1 vs 2 and 3 (in units of 2*Na generations).
    T2: The scaled time between the split of pops 2 and 3 (in units of 2*Na generations).
    """
    #12 parameters
    nu1a, nu2a, nu3a, nu1b, nu2b, nu3b, mA, m1, m2, m3, T1, T2 = params
    xx = Numerics.default_grid(pts)
    phi = PhiManip.phi_1D(xx)
    phi = PhiManip.phi_1D_to_2D(xx, phi)
    nu1B_func = lambda t : nu1a * (nu1b/nu1a) ** (t/(T2+T1))
    nu2B_func = lambda t : nu2a * (nu2b/nu2a) ** (t/(T2+T1))
    phi = Integration.two_pops(phi, xx, T1, nu1 = nu1B_func, nu2 = nu2B_func, m12 = mA, m21 = mA)
    phi = PhiManip.phi_2D_to_3D_split_2(xx, phi)
    nu1_func = lambda t : nu1a * (nu1b/nu1a) ** ((t+T1)/(T1+T2))
    nu2_func = lambda t : nu2a * (nu2b/nu2a) ** ((t+T1)/(T1+T2))
    nu3_func = lambda t : nu3a * (nu3b/nu3a) ** (t/T2)
    phi = Integration.three_pops(phi, xx, T2, nu1=nu1_func, nu2=nu2_func, nu3=nu3_func, m12=m1, m21=m1, m23=m2, m32=m2, m13=m3, m31=m3)
    fs = Spectrum.from_phi(phi, ns, (xx,xx,xx))
    return fs

split_BG_symmig_all.__param_names__ = ["nu1a", "nu2a", "nu3a", "nu1b", "nu2b", "nu3b", "mA", "m1", "m2", "m3", "T1", "T2"]

def split_BG_symmig_adjacent(params, ns, pts):
    """
    Model with split between pop 1 and (2,3), then split between 2 and 3.
    Migration is symmetrical between all population pairs (ie 1<->2, 2<->3, and 1<->3).
    nu1a: Size of population 1 after split.
    nu1b: Size of population 1 during the period of T2
    nu2a: Size of population 2 after split.
    nu3a: Size of population 3 after split.
    nu2b: Size of population 2 at the end of T2.
    nu3b: Size of population 3 at the end of T2.
    mA: Migration rate between population 1 and population (2,3)
    m1: Migration rate between populations 1 and 2 (2*Na*m)
    m2: Migration rate between populations 2 and 3
    T1: The scaled time between the split of pops 1 vs 2 and 3 (in units of 2*Na generations).
    T2: The scaled time between the split of pops 2 and 3 (in units of 2*Na generations).
    """
    #11 parameters
    nu1a, nu2a, nu3a, nu1b, nu2b, nu3b, mA, m1, m2, T1, T2 = params
    xx = Numerics.default_grid(pts)
    phi = PhiManip.phi_1D(xx)
    phi = PhiManip.phi_1D_to_2D(xx, phi)
    nu1B_func = lambda t : nu1a * (nu1b/nu1a) ** (t/(T2+T1))
    nu2B_func = lambda t : nu2a * (nu2b/nu2a) ** (t/(T2+T1))
    phi = Integration.two_pops(phi, xx, T1, nu1 = nu1B_func, nu2 = nu2B_func, m12 = mA, m21 = mA)
    phi = PhiManip.phi_2D_to_3D_split_2(xx, phi)
    nu1_func = lambda t : nu1a * (nu1b/nu1a) ** ((t+T1)/(T1+T2))
    nu2_func = lambda t : nu2a * (nu2b/nu2a) ** ((t+T1)/(T1+T2))
    nu3_func = lambda t : nu3a * (nu3b/nu3a) ** (t/T2)
    phi = Integration.three_pops(phi, xx, T2, nu1=nu1_func, nu2=nu2_func, nu3=nu3_func, m12=m1, m21=m1, m23=m2, m32=m2, m13=0, m31=0)
    fs = Spectrum.from_phi(phi, ns, (xx,xx,xx))
    return fs

split_BG_symmig_adjacent.__param_names__ = ["nu1a", "nu2a", "nu3a", "nu1b", "nu2b", "nu3b", "mA", "m1", "m2", "T1", "T2"]

def split_BG_asymmig_all(params, ns, pts):
    """
    Model with split between pop 1 and (2,3), then split between 2 and 3.
    Migration is symmetrical between all population pairs (ie 1<->2, 2<->3, and 1<->3).
    nu1a: Size of population 1 after split.
    nu1b: Size of population 1 during the period of T2
    nu2a: Size of population 2 after split.
    nu3a: Size of population 3 after split.
    nu2b: Size of population 2 at the end of T2.
    nu3b: Size of population 3 at the end of T2.
    mA1: Migration rate from population 1 to population (2,3)
    m1A: Migration rate from population (2,3) to population 1
    m21: Migration rate from populations 1 to 2 (2*Na*m)
    m12: Migration rate from populations 2 to 1 (2*Na*m)
    m23: Migration rate from populations 3 to 2
    m32: Migration rate from populations 2 to 3
    m31: Migration rate from populations 1 to 3
    m13: Migration rate from populations 3 to 1
    T1: The scaled time between the split of pops 1 vs 2 and 3 (in units of 2*Na generations).
    T2: The scaled time between the split of pops 2 and 3 (in units of 2*Na generations).
    """
    #16 parameters
    nu1a, nu2a, nu3a, nu1b, nu2b, nu3b, m1A, mA1, m12, m21, m23, m32, m13, m31, T1, T2 = params
    xx = Numerics.default_grid(pts)
    phi = PhiManip.phi_1D(xx)
    phi = PhiManip.phi_1D_to_2D(xx, phi)
    nu1B_func = lambda t : nu1a * (nu1b/nu1a) ** (t/(T2+T1))
    nu2B_func = lambda t : nu2a * (nu2b/nu2a) ** (t/(T2+T1))
    phi = Integration.two_pops(phi, xx, T1, nu1 = nu1B_func, nu2 = nu2B_func, m12 = m1A, m21 = mA1)
    phi = PhiManip.phi_2D_to_3D_split_2(xx, phi)
    nu1_func = lambda t : nu1a * (nu1b/nu1a) ** ((t+T1)/(T1+T2))
    nu2_func = lambda t : nu2a * (nu2b/nu2a) ** ((t+T1)/(T1+T2))
    nu3_func = lambda t : nu3a * (nu3b/nu3a) ** (t/T2)
    phi = Integration.three_pops(phi, xx, T2, nu1=nu1_func, nu2=nu2_func, nu3=nu3_func, m12=m12, m21=m21, m23=m23, m32=m32, m13=m13, m31=m31)
    fs = Spectrum.from_phi(phi, ns, (xx,xx,xx))
    return fs

split_BG_asymmig_all.__param_names__ = ["nu1a", "nu2a", "nu3a", "nu1b", "nu2b", "nu3b", "m1A", "mA1", "m12", "m21", "m23", "m32", "m13", "m31", "T1", "T2"]

def split_BG_asymmig_adjacent(params, ns, pts):
    """
    Model with split between pop 1 and (2,3), then split between 2 and 3.
    Migration is symmetrical between all population pairs (ie 1<->2, 2<->3, and 1<->3).
    nu1a: Size of population 1 after split.
    nu1b: Size of population 1 during the period of T2
    nu2a: Size of population 2 after split.
    nu3a: Size of population 3 after split.
    nu2b: Size of population 2 at the end of T2.
    nu3b: Size of population 3 at the end of T2.
    mA1: Migration rate from population 1 to population (2,3)
    m1A: Migration rate from population (2,3) to population 1
    m21: Migration rate from populations 1 to 2 (2*Na*m)
    m12: Migration rate from populations 2 to 1 (2*Na*m)
    m23: Migration rate from populations 3 to 2
    m32: Migration rate from populations 2 to 3
    T1: The scaled time between the split of pops 1 vs 2 and 3 (in units of 2*Na generations).
    T2: The scaled time between the split of pops 2 and 3 (in units of 2*Na generations).
    """
    #14 parameters
    nu1a, nu2a, nu3a, nu1b, nu2b, nu3b, m1A, mA1, m12, m21, m23, m32, T1, T2 = params
    xx = Numerics.default_grid(pts)
    phi = PhiManip.phi_1D(xx)
    phi = PhiManip.phi_1D_to_2D(xx, phi)
    nu1B_func = lambda t : nu1a * (nu1b/nu1a) ** (t/(T2+T1))
    nu2B_func = lambda t : nu2a * (nu2b/nu2a) ** (t/(T2+T1))
    phi = Integration.two_pops(phi, xx, T1, nu1 = nu1B_func, nu2 = nu2B_func, m12 = m1A, m21 = mA1)
    phi = PhiManip.phi_2D_to_3D_split_2(xx, phi)
    nu1_func = lambda t : nu1a * (nu1b/nu1a) ** ((t+T1)/(T1+T2))
    nu2_func = lambda t : nu2a * (nu2b/nu2a) ** ((t+T1)/(T1+T2))
    nu3_func = lambda t : nu3a * (nu3b/nu3a) ** (t/T2)
    phi = Integration.three_pops(phi, xx, T2, nu1=nu1_func, nu2=nu2_func, nu3=nu3_func, m12=m12, m21=m21, m23=m23, m32=m32, m13=0, m31=0)
    fs = Spectrum.from_phi(phi, ns, (xx,xx,xx))
    return fs

split_BG_asymmig_adjacent.__param_names__ = ["nu1a", "nu2a", "nu3a", "nu1b", "nu2b", "nu3b", "m1A", "mA1", "m12", "m21", "m23", "m32", "T1", "T2"]
