
##################################################
# 📄 Title: 09_Subsetting operating with bracket.R
# 📆 Date: 2024-06-03
# 🧠 Purpose: 練習如何用square bracket, double square bracket和dollar sign來擷取資料
# 💡 Topic: square bracket, double square bracket, dollar sign
# 🎓 Source: Coursera - R Programming - Week 1 - Subsetting - Basics
##################################################

# Background
# 當我有一筆傷害紀錄資料，裡面包含型別不同的欄位，而我需要提取不同型別的資料

# 先建立一個傷害紀錄的data frame
injury_data <- data.frame(
  Athlete_name = c("Anita", "Jemma", "Carol", "Sam"),
  Team = c("Judo", "Basketball", "Volleyball", "Boxing"),
  Injury = c("ACL Rupture", "Osgood Schlatter", "Patella Tendonopathy","Obesity"),
  Time_loss = c(270, 3, 150, 300)
)

# 用square bracket擷取同樣型別的資料

# 情境1: 我把跨年度的傷害統計資料放在同一個資料表裡按照序列排放，
# 而我只想擷取特定範圍的資料，並且完整取用所有欄位的時候

injury_data[1:2, ]
injury_data[3:4, ]

# 用square bracket來filter特定條件的資料
# 情境2: 我想單獨把time loss超過200天的選手filter出來分析
injury_data[injury_data$Time_loss > 200, ]

# 使用double square bracket擷取資料裡的原始資料向量
# 情境3: 把time loss的資料擷取出來畫圖

# step 1: 先把time loss欄位裡的值擷取出來
days <- injury_data[["Time_loss"]]

# 測試是否印出對的資料
print(days)

# step 2: 繪製一張長條圖來表示不同選手的time loss時間長短
barplot(days, name.arg = injury_data$athletes_name,
        main = "Time loss by Athlete",
        ylab = "Time Loss")

# 情境4: 我想跟教練報告特定選手的傷害情形
injury_data$Injury[injury_data$Athlete_name == "Anita"]
injury_data$Time_loss[injury_data$Athlete_name == "Anita"]
