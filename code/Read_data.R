
source('./code/Functions.R')

# read in data
## single analysis
### IGC1
path = './input_files/SingleAnalysis/'
IGC1_Full = IGC_summary(str_c(path, 'IGC1_Full'))
IGC1_Full_Force = IGC_summary(str_c(path, 'IGC1_Full_Force'))
IGC1_Full_Force_igcOmega = IGC_summary(str_c(path, 'IGC1_Full_Force_igcOmega08'))
IGC1_Full_igcOmega = IGC_summary(str_c(path, 'IGC1_Full_igcOmega08'))
IGC1_Full_reparameter = IGC_summary(str_c(path, 'IGC1_Full_reparameter1'))
IGC1_Swap_Clock = IGC_summary(str_c(path, 'IGC1_Swap_Clock'))
IGC1_Unswap_Clock = IGC_summary(str_c(path, 'IGC1_Unswap_Clock'))
IGC1_Swap_Clock_igcOmega = IGC_summary(str_c(path, 'IGC1_Swap_Clock_igcOmega08'))
IGC1_Unswap_Clock_igcOmega = IGC_summary(str_c(path, 'IGC1_Unswap_Clock_igcOmega08'))
IGC1_Swap_Clock_reparameter = IGC_summary(str_c(path, 'IGC1_Swap_Clock_reparameter1'))
IGC1_Unswap_Clock_reparameter = IGC_summary(str_c(path, 'IGC1_Unswap_Clock_reparameter1'))
###IGC2
# IGC2_Full = IGC_summary(str_c(path, 'IGC2_Full'))
# IGC2_Full_Force = IGC_summary(str_c(path, 'IGC2_Full_Force'))
# IGC2_Full_Force_igcOmega = IGC_summary(str_c(path, 'IGC2_Full_Force_igcOmega08'))
# IGC2_Full_igcOmega = IGC_summary(str_c(path, 'IGC2_Full_igcOmega08'))
# IGC2_Full_reparameter = IGC_summary(str_c(path, 'IGC2_Full_reparameter2'))
# IGC2_Swap_Clock = IGC_summary(str_c(path, 'IGC2_Swap_Clock'))
# IGC2_Unswap_Clock = IGC_summary(str_c(path, 'IGC2_Unswap_Clock'))
# IGC2_Swap_Clock_igcOmega = IGC_summary(str_c(path, 'IGC2_Swap_Clock_igcOmega08'))
# IGC2_Unswap_Clock_igcOmega = IGC_summary(str_c(path, 'IGC2_Unswap_Clock_igcOmega08'))

path = './input_files/JointAnalysis/'
Joint_2omega = joint_summary(str_c(path, 'Joint_2omega_newModel'))
Joint_igcOmega = joint_summary(str_c(path, 'Joint_igcOmega_newModel'))
Joint_omega = joint_summary(str_c(path, 'Joint_omega'))
Joint_omega_new = joint_summary(str_c(path, 'Joint_omega_newModel'))

save.image(file = "./Rdata/Fish.Rdata")