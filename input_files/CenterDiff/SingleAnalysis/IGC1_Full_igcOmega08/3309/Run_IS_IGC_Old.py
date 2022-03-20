#! /usr/bin/python3

from IGCexpansion.CodonGeneconv import ReCodonGeneconv
import os

if __name__ == '__main__':

    name = "Pillar3309"

    paralog = ['01', '02']
    alignment_file = './' + name + '.fasta'
    newicktree = './' + name + '.newick'

    Force = None
    clock = None
    model = 'MG94'
    IGC_Omega = 0.8
    Tau_Omega = None

    save_folder = './save/'
    save_name = model + name + '.txt'
    summary_name = model + name + "_summary.txt"

    summary_folder = './summary/'

    geneconv = ReCodonGeneconv(newicktree, alignment_file, paralog, Model=model,
                               IGC_Omega=IGC_Omega,Tau_Omega=Tau_Omega, Force=Force, clock=clock,
                               save_path=save_folder, save_name=save_name)
    geneconv.get_mle()
    geneconv.get_ExpectedNumGeneconv()
    geneconv.get_individual_summary(summary_path=summary_folder)

