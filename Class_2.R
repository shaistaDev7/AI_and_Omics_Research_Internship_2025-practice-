###############Class 2 lecture##########################
##Assignment operators
#<- (rightward assignment operators)
height<-c(78,56.8,38.9,24.2)

#-> (leftward assignment operator)
c(20,28,46,58)->weight
#= (assign value, used in function argument)
smoking_status=c("Yes", "No", "No","Yes")

#Arithmetic operators (+,-,\,*,^)
BMI<-weight/(height^2)
BMI

#Comparison operators (<,>,<=,>=,==)
BMI<15
#Logical operators (&,|,!)
(BMI>15) & (smoking_status=="Yes")

################Data Structure#####################
numerical_vect<-c(2,4,7,6.8) 
class(numerical_vect)
#mean(numerical_vect)
character_vect<-c("gene1","gene2", "gene3")
#Combined vectors for columns. it fill empty value to any number from vector 
data<-cbind(numerical_vect, character_vect) 
#Combined list. it  doesn't fill empty value to any number from vector 
#Unlike vector, list hold multiple types  together
data2<-list(numerical_vect, character_vect)

##########matrix############
mat<-matrix(1:9, nrow=3,ncol=3, byrow=TRUE)
mat
#How to access value from matrix
mat[2,3]
mat[2,] #it return second row complete
######Data Frame
df<-data.frame(
  patient_id=c("p1","p2","p3"),
  age=c(23,40,NA),
  Dignosis=c("cancer","diabetes","cancer")
)
df
#####Dataset Assessment
str(df)
head(df, n=2)
tail(df, n=2)
dim(df)
names(df)

# Access data using:
df$patient_id     # extract single column
df[1:2, c(1,3)]   # extract specific rows and columns

# Create new columns:
df$new_column <- c(1, 2, 3)

df
#######Missing value########
# You must check and handle them before analysis.

is.na(df)                # identify missing values
sum(is.na(df))           # total missing values
colSums(is.na(df))       # missing values per column
rowSums(is.na(df))       # missing values per row

# Ways to handle NA:

# remove rows with NA
clean_data1 <- na.omit(df)   
clean_data1


# remove columns with NA
clean_data_2 <- df[, colSums(is.na(df))==0]
clean_data_2

# replace NA value with 0
clean_data_3 <- df
clean_data_3[is.na(clean_data_3)] <- 0
clean_data_3
# replace NA value with mean
clean_data_4 <- df
clean_data_4[is.na(clean_data_4)] <- mean(df$age, na.rm = TRUE)
clean_data_4
##########Function#############
# Example: A function to calculate Body Mass Index (BMI)

# 1. Function Name: calculate_BMI
# 2. Arguments: weight (in kg), height (in meters)
# 3. Body: performs BMI calculation e.g   # Formula: BMI = weight / (height^2)
# 4. Return Value: the BMI value

calculate_BMI <- function(weight, height) {
  # Perform the BMI calculation
  Bmi <- weight / (height ^ 2)
  
  # Return the BMI value
  return(Bmi)
}

# Call the function by naming arguments explicitly
calculate_BMI(weight = 60, height = 1.75)

# Call the function using variables as arguments
calculate_BMI(weight = weight, height = height)

# If a function expects two arguments, you must provide both


