# EEB 390: Example of a reproducible project using targets

**NOTE:** This version of the project uses the targets package to organize steps into a pipeline. To run the pipeline yourself, you will need to install and load the targets package, then run "tar_make()". See <https://books.ropensci.org/targets/> for additional information on the targets package.

## Exploring the effect of radar tilt on marbled murrelet detections

Author: Sam Walmsley

Email: [sam.walmsley\@princeton.edu](mailto:sam.walmsley@princeton.edu){.email}

Office: A344 Briger Hall, Princeton University

2026-10-14

#### Overview

This repository contains data and code for the example project for Module 3 of EEB 390 at Princeton University (Fall 2026). The aim of this exercise was to use a real, published dataset to practice building reproducible analyses. We used a dataset of marbled murrelets (*Brachyramphus marmoratus*) available at <https://doi.org/10.6084/m9.figshare.25308250>. This dataset includes 1203 radar surveys with counts of marbled murrelets travelling out to sea or coming back to land from field seasons spanning 1996-2018. This specific project aims to read the data in R, perform some basic data exploration, and create a simple figure to explore the association between the tilt of the radar on the counts of incoming murrelet counts.

#### Contents

This repository includes raw data ('Data' folder), code specifying the analysis pipeline ('\_targets.R'), code to specify necessary packages and custom functions ('R' folder), and the resulting outputs of the pipeline ('Output' folder). Intermediate objects created by the pipeline are stored in the '\_targets' folder. The main dataset used for analysis is “mamu-count-data.csv”. Metadata detailing each column is available in “mamu-count-metadata.csv”. There is also a data-specific README file included in the ‘Data’ folder, which includes further details on how the data were collected.
