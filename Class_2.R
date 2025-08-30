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





