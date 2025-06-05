
##################################################
# 📄 Title: Week 1 Quiz
# 📆 Date: 2025-06-04
# 🧠 Purpose: R Programming week 1的綜合測驗
# 💡 Topic: subsetting, missing value cleaning, mean value, max value
# 🎓 Source: Coursera
##################################################


# 4
# If I execute the expression x <- 4 in R, what is the class of the object `x' as determined by the `class()' function?

x <- 4
class(x)

# 5
# What is the class of the object defined by the expression x <- c(4, "a", TRUE)?

x <- c(4,"a", TRUE)
class(x)

# 8
# Suppose I have a list defined as x <- list(2, "a", "b", TRUE). 
#What does x[[1]] give me? Select all that apply.

x <- list(2,"a","b", TRUE)
x[[1]]
class(x[[1]])

# 9
# Suppose I have a vector x <- 1:4 and a vector y <- 2. 
# What is produced by the expression x + y?

x <- c(1:4)
y <- 2
x+y

# 12
# Extract the first 2 rows of the data frame and print them to the console. 
# What does the output look like?
demo_data <- read.csv("hw1_data.csv")
demo_data[1:2, ]

# 14
# Extract the last 2 rows of the data frame and print them to the console. 
# What does the output look like?
demo_data[152:153, ]

# 15
# What is the value of Ozone in the 47th row?
demo_data[47,"0Zone"]
demo_data$Ozone[47]

# 16
# How many missing values are in the Ozone column of this data frame?
sum(is.na(demo_data$Ozone))

# 17
# What is the mean of the Ozone column in this dataset? 
# Exclude missing values (coded as NA) from this calculation.

  # step 1: 檢查哪些列是完整的
  # step 2: 擷取排除遺漏值的列
  # step 3: 計算平均值

good <- complete.cases(demo_data$Ozone)
cleaned_data <- demo_data[good, ]
mean(cleaned_data$Ozone)

# 18
# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. 
# What is the mean of Solar.R in this subset?

  # step 1: 先篩選出大於31且小於90的值
  # step 2: 剔除遺漏值
  # step 3: 計算平均值

demo_data <- read.csv("hw1_data.csv")

subset_data <- demo_data[demo_data$Ozone > 31 & demo_data$Temp > 90, ]
mean(subset_data$Solar.R, na.rm = TRUE)

# 19
# What is the mean of "Temp" when "Month" is equal to 6? 

  # step 1: 先篩選出6月
  # step 2: 計算剔除遺漏值的氣溫平均

subset_month <- demo_data[demo_data$Month == 6, ]
mean(subset_month$Temp, na.rm = TRUE)

# 20
# What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?

  # step 1: 先篩選出5月
  # step 2: 計算剔除遺漏值後的max(ozone)

subset_may <- demo_data[demo_data$Month == 5, ]
max(subset_may$Ozone, na.rm = TRUE)
