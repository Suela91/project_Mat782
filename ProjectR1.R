#I loaded the Summer_Sports_Experience data into variable "sports"
library(readr)
sports <- read_csv("Summer_Sports_Experience.csv")
View(sports)

#I changed the name of my columns into simpler names and i used dplyr to do so
library(dplyr)
sports<-sports%>%
rename(
borough="Borough Location",
park="Park Location",
games="Sports Played",
start="Week Start Date",
end="Week End Date",
sun="Sunday's Attendance",
mon="Monday's Attendance",
tue="Tuesday's Attendance",
wed="Wednesday's Attendance",
Thu="Thursday's Attendance",
fri="Friday's Attendance",
sat="Saturday's Attendance",
tot_attend="Attendance Sum"
)

#I check my data with the changes i made
sports

#I made a histogram of the tot_attend column and i relized that i had to crop it my x axes
hist(sports$tot_attend)

#I changed my x axes to calculate values <3000
sports2<-subset(sports,tot_attend<3000)
hist(sports2$tot_attend)

#Then I graphet again the histogram and I also added a title and i named my x and y axes 
hist(sports2$tot_attend,main = "Total Attendance", xlab="number of people", ylab="number of activities")

#here I made a baplot about the game column (which was supposed to show me all the frequency of all games)
# but, the plot was unclear i because of the many varieties of games played.
barplot(table(sports$games))

# the same here I made a barplot of the borough column
barplot(table(sports$borough))
#I gave a title to my plot and i named my x and y axes.
barplot(table(sports$borough),main="All Boroughs", ylab="Frequency",xlab="Name of Borough")

#here I ploted a histogram about my mon (monday)column
hist(sports$mon)
# I had to cut some of my data from mon column so to have a better shaped histogram 
sports2<-subset(sports, mon<50)
#I named my histogram plot of the mon column
hist(sports2$mon, main="Monday Attendance", xlab="Number of Partecipants", ylab="Frequency")

#I also made a barplot of the park column 
barplot(table(sports$park), main="Park Location", ylab="Frequency Played",xlab="Names of Park Location")

