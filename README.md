# Interlocus Gene Conversion, Natural Selection, and Paralog Homogenization Supplementary Material

## File Structure

All the results are stored in the `input_files` folder, and each subfolder has its detailed readme file explaining its content.

For example, the folder `input_files/fish/Analysis/IGC1_forceTau_Homo/Pillar211R` contains the `Run.py` file to perform the analysis of Pillar 211 data set where all ingroup species have 2 paralogs present under the ![equation](https://latex.codecogs.com/svg.image?%5Comega_H/%5Comega_N-IGC) model.

## Models

Here is a list of folder name convention with their model as described in the manuscript.

|Model name in folder | Model in manuscript|
|:---------:|:----------:|
| `Original` | ![equation](https://latex.codecogs.com/svg.image?%5Comega&plus;IGC)|
| `Homo` | ![equation](https://latex.codecogs.com/svg.image?%5Comega_H/%5Comega_N&plus;IGC)|
| `forceTau` |![equation](https://latex.codecogs.com/svg.image?%5Comega-IGC)|
| `forceTau_Homo` | ![equation](https://latex.codecogs.com/svg.image?%5Comega_H/%5Comega_N-IGC)|

## Swap Tests

Swap tests use reduced datasets that only contain two paralogs of DNA sequence from ingroup species, and one paralog of DNA sequence from an outgroup species.  Therefore, there are only five sequences for each dataset in swap tests.  Please refer to the readme file in `fish` and `yeast` folder for detailed choice os these species. 

`swap/unswap`: when swapping the data, we swap the sequence of `paralog 2` between two ingroup species.

`switch/unswitch`: when switching the data, we exchange the sequence between `ingroup species 1 paralog 1` and `ingroup species 2 paralog2`.

*Here's a figure that shows how we change the data:*

![4SwapSwitchCases](plots/4SwapSwitchCases.jpg)


## Software

To reproduce the results, you need to install the `IGCexpansion` software. The installation instruction and tutorial are at: <https://github.com/xji3/IGCexpansion.git>

After installing the `IGCexpansion` software, you can run the script `Run.py` in each Pillar folder to get the results.

## Phylogenetic Tree for Teleost
<img src="./plots/Figure1.png" alt="fish-tree" style="zoom:25%;" />

