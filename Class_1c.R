#Class 1c practical
#Variables
gene<-"TP53"
gene
#Rules for defining variable
# 1. Don't allow space between names
# 2. Names of variable must be start from letter not a number
# 3. R is case sensitive

#To import data as variable
raw_data<-read.csv(file.choose())
raw_data
#Delete patient_ID
Clean_data<-raw_data[,-1]
#Helping function
help('reserved')
#Sort values from largest to smallest
sorted_age<-sort(Clean_data$age, decreasing = TRUE)
#Convert the Character into factor automatically

str(Clean_data)for (i in 1:ncol(Clean_data)) {
  if (is.character(Clean_data[[i]])){
    Clean_data[i]<-as.factor(Clean_data[[i]])
  }
  
}
Clean_data
