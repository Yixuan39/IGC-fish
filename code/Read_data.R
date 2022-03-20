rm(list = ls())
source('./code/Functions.R')

# read in data
# forward differentiation
rm(list = ls())
source('./code/Functions.R')
## single analysis
### IGC1
path = './input_files/ForwardDiff/SingleAnalysis/'
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

## joint analysis
path = './input_files/ForwardDiff/JointAnalysis/'
Joint_2omega = joint_summary(str_c(path, 'Joint_2omega_newModel'))
Joint_igcOmega = joint_summary(str_c(path, 'Joint_igcOmega_newModel'))
Joint_omega = joint_summary(str_c(path, 'Joint_omega'))
Joint_omega_new = joint_summary(str_c(path, 'Joint_omega_newModel'))

save.image(file = "./Rdata/ForwardFish.Rdata")


# center differentiation
rm(list = ls())
source('./code/Functions.R')
## single analysis
### IGC1
path = './input_files/CenterDiff/SingleAnalysis/'
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

save.image(file = "./Rdata/CenterFish.Rdata")

