#! /usr/bin/python3

from IGCexpansion.CodonGeneconv import ReCodonGeneconv
import os

if __name__ == '__main__':
    os.makedirs('./save', exist_ok=True)
    os.makedirs('./summary', exist_ok=True)

    name = os.getcwd()
    name = name.split('/')[-1]
    alignment_file = [i for i in os.listdir('.') if 'fasta' in i][0]
    newicktree = [i for i in os.listdir('.') if 'newick' in i][0]

    paralog = ['01', '02']
    Force = None
    clock = None
    model = 'MG94'
    Homo_Omega = None
    IGC_Omega = None
    Tau_Omega = None
    
    save_folder = './save/'
    save_name = model + name + '.txt'
    summary_name = model + name + "_summary.txt"

    summary_folder = './summary/'

    geneconv = ReCodonGeneconv(newicktree, alignment_file, paralog, Model=model,
                               IGC_Omega=IGC_Omega,Tau_Omega=Tau_Omega, Homo_Omega=Homo_Omega,
                               Force=Force, clock=clock, save_path=save_folder)
    geneconv.get_mle()
    geneconv.get_ExpectedNumGeneconv()
    geneconv.get_individual_summary(summary_path=summary_folder)
