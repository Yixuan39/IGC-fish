# Remove old Rdata files
# file.remove("./Rdata/ForwardFish.Rdata")
# file.remove("./Rdata/CenterFish.Rdata")

# read in data
# forward differentiation
# rm(list = ls())
# source('./code/Functions.R')
# ## single analysis
# ### IGC1
# path = './input_files/ForwardDiff/SingleAnalysis/'
# IGC1_Full = IGC_summary(str_c(path, 'IGC1_Full'))
# IGC1_Full_Force = IGC_summary(str_c(path, 'IGC1_Full_Force'))
# IGC1_Full_Force_igcOmega = IGC_summary(str_c(path, 'IGC1_Full_Force_igcOmega08'))
# IGC1_Full_igcOmega = IGC_summary(str_c(path, 'IGC1_Full_igcOmega08'))
# IGC1_Full_reparameter = IGC_summary(str_c(path, 'IGC1_Full_reparameter1'))
# IGC1_Swap_Clock = IGC_summary(str_c(path, 'IGC1_Swap_Clock'))
# IGC1_Unswap_Clock = IGC_summary(str_c(path, 'IGC1_Unswap_Clock'))
# IGC1_Swap_Clock_igcOmega = IGC_summary(str_c(path, 'IGC1_Swap_Clock_igcOmega08'))
# IGC1_Unswap_Clock_igcOmega = IGC_summary(str_c(path, 'IGC1_Unswap_Clock_igcOmega08'))
# IGC1_Swap_Clock_reparameter = IGC_summary(str_c(path, 'IGC1_Swap_Clock_reparameter1'))
# IGC1_Unswap_Clock_reparameter = IGC_summary(str_c(path, 'IGC1_Unswap_Clock_reparameter1'))
# 
# ## joint analysis
# path = './input_files/ForwardDiff/JointAnalysis/'
# Joint_2omega = joint_summary(str_c(path, 'Joint_2omega_newModel'))
# Joint_igcOmega = joint_summary(str_c(path, 'Joint_igcOmega_newModel'))
# Joint_omega = joint_summary(str_c(path, 'Joint_omega'))
# Joint_omega_new = joint_summary(str_c(path, 'Joint_omega_newModel'))
# 
# save.image(file = "./Rdata/ForwardFish.Rdata")


# center differentiation
rm(list = ls())
source('./code/Functions.R')
## single analysis
### IGC1
path = './input_files/CenterDiff/SingleAnalysis/'
IGC1_Full = IGC_summary(str_c(path, 'IGC1_Full')) # original model
IGC1_Full_forceTau = IGC_summary(str_c(path, 'IGC1_Full_Force'))
IGC1_Full_forceTau_igcOmega = IGC_summary(str_c(path, 'IGC1_Full_Force_igcOmega08'))
IGC1_Full_igcOmega = IGC_summary(str_c(path, 'IGC1_Full_igcOmega08'))
IGC1_Full_tauOmega = IGC_summary(str_c(path, 'IGC1_Full_reparameter1'))
IGC1_Swap_Clock = IGC_summary(str_c(path, 'IGC1_Swap_Clock'))
IGC1_Unswap_Clock = IGC_summary(str_c(path, 'IGC1_Unswap_Clock'))
IGC1_Swap_Clock_igcOmega = IGC_summary(str_c(path, 'IGC1_Swap_Clock_igcOmega08'))
IGC1_Unswap_Clock_igcOmega = IGC_summary(str_c(path, 'IGC1_Unswap_Clock_igcOmega08'))
IGC1_Swap_Clock_tauOmega = IGC_summary(str_c(path, 'IGC1_Swap_Clock_reparameter1'))
IGC1_Unswap_Clock_tauOmega = IGC_summary(str_c(path, 'IGC1_Unswap_Clock_reparameter1'))
IGC1_Full_igcOmega0 = IGC_summary(str_c(path, 'IGC1_Full_igcOmega0'))
IGC1_Full_igcOmega0_tau0 = IGC_summary(str_c(path, 'IGC1_Full_igcOmega0_tau0'))
# add Homo Omega Model
path = './input_files/HomoModel/SingleAnalysis_Homo/'
IGC1_Full_Homo = IGC_summary(str_c(path, 'IGC1_Full_Homo'))
IGC1_Full_forceTau_homoOmega = IGC_summary(str_c(path, 'IGC1_Full_forceTau_homoOmega'))
IGC1_Swap_Clock_homoOmega = IGC_summary(str_c(path, 'IGC1_swap_clock_homoOmega'))
IGC1_Unswap_Clock_homoOmega = IGC_summary(str_c(path, 'IGC1_unswap_clock_homoOmega'))

## joint analysis
path = './input_files/CenterDiff/JointAnalysis/'
Joint_2omega_igcOmega = joint_summary(str_c(path, 'Joint_2omega_newModel'))
Joint_igcOmega_igcOmega = joint_summary(str_c(path, 'Joint_igcOmega_newModel'))
Joint_omega = joint_summary(str_c(path, 'Joint_omega'))
Joint_omega_igcOmega = joint_summary(str_c(path, 'Joint_omega_newModel'))

Joint_tau = joint_summary(str_c(path, 'Joint_tau'))
Joint_tau_igcOmega = joint_summary(str_c(path, 'Joint_tau_igcOmega08'))
Joint_tau_and_igcOmega = joint_summary(str_c(path, 'Joint_tau+igcOmega08'))

Joint_all_igcOmega = joint_summary(str_c(path, 'Joint_all'))
Joint_all_free56_igcOmega = joint_summary(str_c(path, 'Joint_all_free_2omega'))
Joint_all_free6_igcOmega = joint_summary(str_c(path, 'Joint_all_free_igcOmega'))
Joint_all_free5_igcOmega = joint_summary(str_c(path, 'Joint_all_free_omega'))
Joint_all_free7_igcOmega = joint_summary(str_c(path, 'joint_all_free_tau'))


save.image(file = "./Rdata/Fish.Rdata")














