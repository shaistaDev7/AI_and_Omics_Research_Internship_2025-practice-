#Organize Project
#1. Data
#2. Scripts
#3. Results

# -------------------------------------------------------------------------



#Create Folder
dir.create('data')
dir.create('scripts')
dir.create('results')

print("BioInformatics")
gene_expression<-c(2.8,3.4,3.9,5.6,9.4)

mean_result<-mean(gene_expression)

#Basic Visualization

plot(gene_expression)
hist(gene_expression)
barplot(gene_expression)
#Statistics
summary(gene_expression)

#R Data Types
#Numeric
x<-24.5
y<-56
z<-x+y
print(class(z))

#as integer data type consume minimum space as compared to numerical
#To convert numeric to integer
z_2<-as.integer(z)
class(z_2)
#character datatype
char_data<-c("Sara","ALi","Haider")
# 4. Factor (Categorical) Data 

# Categorical vector with string labels
disease_status <- c("cancer", "normal", "cancer", "cancer", "normal")
class(disease_status)

# Convert character vector to factor
disease_status <- as.factor(disease_status)
class(disease_status)
disease_status

# Set factor level order manually
disease_status <- factor(disease_status, 
                         levels = c("normal", "cancer"))


disease_status

# 5. Logical Data Type 

age <- c(23, 25, 28)
var_8 <- age < 25    
print(var_8   )# Returns logical vector (TRUE/FALSE)
#read csv file
data=read.csv(file.choose())
data
# Check structure of the dataset
str(data)
colnames(data) #Columns names
row.names(data)
# Convert 'height' column to factor
data$height_fac <- as.factor(data$height)
str(data)

# Reorder factor levels manually
data$height_fac <- factor(data$height_fac, 
                          levels = c("Tall", "Medium", "Short"))
levels(data$height_fac)

# Convert character/factor to numeric using factor() function
# Example # 0 = Short, 1 = Medium & 2 = Tall

data$height_num <- factor(data$height_fac,
                          levels = c("Short", "Medium", "Tall"),
                          labels = c(0, 1, 2)) 
str(data)

# Convert 'gender' to factor
data$gender_fac <- as.factor(data$gender)
str(data)

# Convert factor to numeric using ifelse statement (Female = 1, Male = 0)
data$gender_num <- ifelse(data$gender_fac == "Female", 1, 0)
class(data$gender_num)

# Convert numeric gender code to factor
data$gender_num <- as.factor(data$gender_num)
class(data$gender_num)

#### Saving Outputs ####

# To save R script use keyboard shortcut 
# ctrl + s 
# Or go to the file menu & select 'Save As' option

# To open R script use keyboard shortcut 
# ctrl + Enter 
# Or go to the file menu & select 'Open File' option


# Save file  as CSV in results folder
write.csv(disease_status, file = "results/patient_data.csv")

# Save the entire R workspace
save.image(file = "full_workspace.RData")

# Save selected objects only
save(disease_status, file = "workspace.RData")

# Load workspace
load("workspace.RData")
load("full_workspace.RData")
#how to select columns
selected_data=data[1:3]
#Rename column first
colnames(selected_data)[1]="sample-name" 

library(dplyr)



