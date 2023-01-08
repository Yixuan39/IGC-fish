# Folder Name Explanation

An explanation of the name of each folder.

## Dataset

`yeast`: yeast dataset

## Models

Here is a list of folder name convention with their model as described in the manuscript.

|Model name in folder | Model in manuscript|
|:---------:|:----------:|
| `Original` | ![equation](https://latex.codecogs.com/svg.image?%5Comega&plus;IGC)|
| `Homo` | ![equation](https://latex.codecogs.com/svg.image?%5Comega_H/%5Comega_N&plus;IGC)|
| `forceTau` |![equation](https://latex.codecogs.com/svg.image?%5Comega-IGC)|
| `forceTau_Homo` | ![equation](https://latex.codecogs.com/svg.image?%5Comega_H/%5Comega_N-IGC)|

## Swap Tests

Swap tests use reduced datasets that only contain two paralogs of DNA sequence from cerevisiae and castellii, and one paralog of DNA sequence from kluyveri as an outgroup. Therefore, there are only five sequences for each dataset in swap tests.

`swap/unswap`: when swapping the data, we swap the sequence between cerevisiae paralog 2 and castellii paralog 2.

`switch/unswitch`: when switching the data, we exchange the sequence between castellii paralog 1 and castellii paralog2.

*Here's a figure that shows how we change the data:*

![4SwapSwitchCases](../../../plots/4SwapSwitchCases.pdf)



