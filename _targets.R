
# load the targets package
library(targets)

# source the 'R' folder which will load key packages and functions
tar_source('R')

# here is the list of targets that defines our pipeline
list(
  
  # read in dataset of murrelet radar counts
  tar_target(d, data.table(read.csv('Data/Murrelet-data/mamu-count-data.csv'))),
  
  # read in metadata sheet in case we want to check column names
  tar_target(m, data.table(read.csv('Data/Murrelet-data/mamu-count-data.csv'))),
  
  # perform data processing
  tar_target(d_clean, process_murrelet_data(d)),
  
  # make figure and save to output
  tar_target(tilt_figure, save_figure('./Output/Tilt-Figure.png', 
                                      w=4,
                                      h=4,
                                      make_murrelet_tilt_figure(d_clean)))
)


  