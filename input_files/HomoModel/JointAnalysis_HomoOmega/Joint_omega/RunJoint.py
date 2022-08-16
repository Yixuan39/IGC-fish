#!/bin/python3

from IGCexpansion.JointAnalysis import *
import re

def atoi(text):
    return int(text) if text.isdigit() else text
def natural_keys(text):
    return [ atoi(c) for c in re.split('(\d+)',text) ]

if __name__ == '__main__':

    inputFolder = 'IGC_R'
    outputName = 'Joint_omega'

    # parameters
    Force = None
    IGC_Omega = None
    Tau_Omega = None
    Homo_Omega = None
    Model = 'MG94'
    Shared = [4]

    files = os.listdir('../../' + inputFolder)
    files = ['../../'+inputFolder+'/' + file for file in files if 'fasta' in file]
    files.sort(key=natural_keys)
    paralog_list = [['01_'+re.findall(r'\d+', file)[0], '02_'+re.findall(r'\d+', file)[0]] for file in files]
    alignment_file_list = files
    newicktree = '../../'+inputFolder+'/tree.newick'

    save_path = './save/'
    summary_path = './summary/'
    os.makedirs(save_path, exist_ok=True) # save parameters
    os.makedirs(summary_path, exist_ok=True) # save summary
    print('start to analyze')
    print('Input: ' + inputFolder)
    print('Job name: ' + outputName)
    print('IGC_Omega: ' + str(IGC_Omega))
    print('Tau_Omega: ' + str(Tau_Omega))
    print('Shared:' + str(Shared))
    print('number of files: ' + str(len(files)))
    joint_analysis = JointAnalysis(alignment_file_list, newicktree, paralog_list, Shared=Shared,
                                   IGC_Omega=IGC_Omega,
                                   Tau_Omega=Tau_Omega,
                                   Homo_Omega=Homo_Omega,
                                   Model=Model, Force=Force,
                                   save_path=save_path)
    print(joint_analysis.objective_and_gradient_multi_threaded(joint_analysis.x))
    # print(joint_analysis.objective_and_gradient(joint_analysis.x))
    joint_analysis.get_mle()
    joint_analysis.get_summary(summary_path + outputName + 'Summary.txt')
