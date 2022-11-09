# Folder Name Explanation

An explanation of the name of each folder.

## Dataset

`yeast`: yeast dataset

## Models

`Original`: Xiang's Original model

`Homo`: Homogenizing model. Homogenizing and non-homogenizing nonsynonymous substitution rates are separated in this model.

### Null Model

`forceTau` : forceTau means we set the $\tau$ value in the model to 0. In other words, pretend there's no IGC event happening.

## Swap Tests

Swap tests use reduced datasets that only contain two paralogs of DNA sequence from cerevisiae and castellii, and one paralog of DNA sequence from kluyveri as an outgroup. Therefore, there are only five sequences for each dataset in swap tests.

`swap/unswap`: when swapping the data, we swap the data between cerevisiae paralog 2 and castellii paralog 2.

`switch/unswitch`: when switching the data, we exchange the data between castellii paralog 1 and castellii paralog2.

*Here's a figure that shows how we change the data:*

![4SwapSwitchCases](../../../plots/4SwapSwitchCases.jpg)



