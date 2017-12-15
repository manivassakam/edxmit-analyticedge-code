# MIT ANALYTIC EDGE R CODE #
SquareRoot2 = sqrt(2)
HourYear <- 365*24
SquareRoot2
HourYear
#Note = and <- do the same

#Vectors and Data Frames
country = c("Brazil","china","india","USA")
LifeExpectancy = c(74,76,65,79)

# c() means combine
# dont combine integers and characters
country[1]
#a vector which stores a sequence of numbers
seq(0,100,2)
CountryData = data.frame(country,LifeExpectancy)
CountryData
#Add one more variable using the $notation
CountryData$Population = c(1990000,1390000,1240000,3180000)
CountryData
country = c("Australia","Greece")
LifeExpectancy = c(72,70)
Population = c(4650000,2790000)
NewCountryData = data.frame(country,LifeExpectancy,Population)
NewCountryData
# Combine two data frames using rbind funtion which stacks rows
AllCountryData = rbind(CountryData, NewCountryData)
AllCountryData

# Reading a CSV File
WHO = read.csv("C:/myprograms/analyticedge/WHO.csv")
str(WHO)
#'data.frame':   194 obs. of  13 variables:
#$ Country                      : Factor w/ 194 levels "Afghanistan",..: 1 2 3 4 5 6 7 8 9 10 ...
#$ Region                       : Factor w/ 6 levels "Africa","Americas",..: 3 4 1 4 1 2 2 4 6 4 ...
#$ Population                   : int  29825 3162 38482 78 20821 89 41087 2969 23050 8464 ...
#$ Under15                      : num  47.4 21.3 27.4 15.2 47.6 ...
#$ Over60                       : num  3.82 14.93 7.17 22.86 3.84 ...
#$ FertilityRate                : num  5.4 1.75 2.83 NA 6.1 2.12 2.2 1.74 1.89 1.44 ...
#$ LifeExpectancy               : int  60 74 73 82 51 75 76 71 82 81 ...
#$ ChildMortality               : num  98.5 16.7 20 3.2 163.5 ...
#$ CellularSubscribers          : num  54.3 96.4 99 75.5 48.4 ...
#$ LiteracyRate                 : num  NA NA NA NA 70.1 99 97.8 99.6 NA NA ...
#$ GNI                          : num  1140 8820 8310 NA 5230 ...
#$ PrimarySchoolEnrollmentMale  : num  NA NA 98.2 78.4 93.1 91.1 NA NA 96.9 NA ...
#$ PrimarySchoolEnrollmentFemale: num  NA NA 96.4 79.4 78.2 84.5 NA NA 97.5 NA ...

#Factor variables have multiple categories
summary(WHO)
# Here NA are missing data
WHO_Europe = subset(WHO,Region == "Europe")
str(WHO_Europe)
write.csv(WHO_Europe,"C:/myprograms/analyticedge/WHO_Europe.csv")

