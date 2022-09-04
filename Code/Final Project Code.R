# Combining the individual files into 1 group

Group1 <- rbind(FM04_1,MJ04_2)
Group <-rbind(Group1, ON04_3)

Group2 <- rbind(MA07_4, ON07_5)
GroupA <- rbind(Group2, FM08_6)

# Changing the column names to reflect what the numbers are

names(Group)[names(Group) == 'X1'] <- 'Time'
names(Group)[names(Group) == 'X2'] <- 'Latitude'
names(Group)[names(Group) == 'X3'] <- 'Longitude'
names(Group)[names(Group) == 'X4'] <- 'Sea Ice Freeboard'
names(Group)[names(Group) == 'X5'] <- 'Sea Ice Thickness'

names(GroupA)[names(GroupA) == 'X1'] <- 'Time'
names(GroupA)[names(GroupA) == 'X2'] <- 'Latitude'
names(GroupA)[names(GroupA) == 'X3'] <- 'Longitude'
names(GroupA)[names(GroupA) == 'X4'] <- 'Sea Ice Freeboard'
names(GroupA)[names(GroupA) == 'X5'] <- 'Sea Ice Thickness'

# Adding a new column

Group[,'Month/Day'] = NA 
GroupA[,'Month/Day'] = NA 

# Converting the files from txt file to a csv file and saving it to my computer

write.csv(Group, "/Users/kendrarhoades/Desktop/Data Science/DSO110 Final Project/Code/Group.csv", row.names = FALSE)
write.csv(GroupA, "/Users/kendrarhoades/Desktop/Data Science/DSO110 Final Project/Code/GroupA.csv", row.names = FALSE)