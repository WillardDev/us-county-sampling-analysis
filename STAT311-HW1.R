# You will be using the "usdata" package's "county" data 
#  for this assignment. 
# You will need to run:
#  install.packages("usdata")
# once to install this library - do not include the
#  install.packages command in your submission
#  as it can cause gradescope to fail

## ## ## ## ## DO NOT MODIFY BELOW ## ## ## ## ## 
library(usdata)
county<-as.data.frame(county)
county<-county[,1:14]
county<-county[rowSums(is.na(county))==0,]
# The set.seed command will ensure your results are consistent
#  each time you run the "source" command
set.seed(311)
## ## ## ## ## DO NOT MODIFY ABOVE ## ## ## ## ## 


# Treating the "county" dataset as the population of US counties
#  create the dataframe "my.SRS" that represents a simple
#  random sample of n=250 individual counties from all counties in the US.

my.SRS <- county[sample(nrow(county), 250), ]



# Treating the "county" dataset as the population of US counties
#  create the dataframe "my.Stratified" that represents a stratified
#  sample of individual counties from all counties in the US, statified 
#  along the level of education (median_edu). Due to the different sizes of strata,
#  you should sample: 
#  1 county from "below_hs", 140 from "hs_diploma", 170 from "some_college"
#  and 4 from "bachelors"

# Create empty dataframe to store the stratified sample
my.Stratified <- data.frame()

# Get indices for each stratum
below_hs_indices <- which(county$median_edu == "below_hs")
hs_diploma_indices <- which(county$median_edu == "hs_diploma")
some_college_indices <- which(county$median_edu == "some_college")
bachelors_indices <- which(county$median_edu == "bachelors")

# Sample from each stratum
sample_below_hs <- county[sample(below_hs_indices, 1), ]
sample_hs_diploma <- county[sample(hs_diploma_indices, 140), ]
sample_some_college <- county[sample(some_college_indices, 170), ]
sample_bachelors <- county[sample(bachelors_indices, 4), ]

# Combine all strata samples
my.Stratified <- rbind(sample_below_hs, sample_hs_diploma, sample_some_college, sample_bachelors)

#The numbers here should match those specified above
# Uncomment after your data frame has been defined to check your work
#  table(my.Stratified$median_edu)

# Treating the "county" dataset as the population of US counties
#  create the dataframe "my.Clustered" that represents a cluster
#  sample of individual counties from all counties in the US, clustered by state. 
#  You should randomly sample counties from a total of 5 clusters.

# Get all unique states
all_states <- unique(county$state)

# Randomly select 5 states (clusters)
selected_states <- sample(all_states, 5)

# Get all counties from the selected states
my.Clustered <- county[county$state %in% selected_states, ]

#This should only give 5 total states
# Uncomment after your data frame has been defined to check your work
#  unique(my.Clustered$state)
