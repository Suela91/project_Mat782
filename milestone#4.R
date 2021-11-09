
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
#I calculated the mean, median, variance and standard deviation of the mon column
mean(sports$mon)
median(sports$mon)
var(sports$mon)
sd(sports$mon)

#And, I also calculated mean, median, variance and standard deviation of the tot_attend column
mean(sports$tot_attend)
median(sports$tot_attend)
var(sports$tot_attend)
sd(sports$tot_attend)
