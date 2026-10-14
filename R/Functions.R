
# This script contains functions used in the EEB 390 targets pipeline


# function to process murrelet data
# NOTE: for this example we simply correct one row with an erroneous value, but
# this could be expanded to include other checks, explorations, and 
# corrections.
process_murrelet_data <- function(df) {

  # remove row with erroneous survey duration
  df <- df[SurveyDuration>=0,,]
  
  # return fixed dataframe
  return(df)
    
}


# function to make simple figure using processed murrelet data
make_murrelet_tilt_figure <- function(df) {
  
  # association between tilt and incoming counts
  g <- ggplot(df, aes(x=Tilt, y=MamuIn)) +
    geom_point() + 
    labs(x='Radar tilt', y='Incoming murrelet counts')+
    geom_smooth(method='lm')
  
  # return figure
  return(g)
  
}


# function to save figure with resolution 1000
save_figure <- function(path, w, h, call) {
  
  png(path, width=w, height=h, units='in', res=1000)
  print(call)
  dev.off()
  
}
