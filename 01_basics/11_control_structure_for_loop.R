
##################################################
# 📄 Title: 11_control_structure_for_loop
# 📆 Date: 2025-06-06
# 🧠 Purpose: 練習使用for loop和if/else實現不同injury severity的分類
# 💡 Topic: Control Structure - For loop + if/else
# 🎓 Source: Coursera - R Programming - Week 2 - Control Struction: for loop
##################################################

# 情境 1
# 你是某校女籃隊的運動防護員，正在整理球員的傷害紀錄。你有一個dataset:

injury_data <- data.frame(
  Athlete = c("Anita", "Samantha", "Jemma", "Ping", "Carolyn"),
  Diagnosis = c("Ankle Sprain", "Hamstring Strain", "ACL Tear", "Concussion", "Patellofemoral joint chondral pain"),
  Time_loss = c(5, 10, 180, 7, 21)
)

# 使用for迴圈列出每位選手的傷害與傷停天數
for(i in 1:nrow(injury_data)){
  injury <- injury_data$Diagnosis[i]
  time_loss_days <- injury_data$Time_loss[i]
  athlete <- injury_data$Athlete[i]
  
  cat(athlete, "的傷害診斷為", injury, "，預估傷停", time_loss_days, "天。\n")
}

severity <- c()

for (i in 1:nrow(injury_data)) {
  days <- injury_data$Time_loss[i]
  
  if (days > 30) {
    severity[i] <- "Severe"
  } else if (days > 7) {
    severity[i] <- "Moderate"
  } else {
    severity[i] <- "Mild"
  }
}

injury_data$Severity <- severity

# 測試
print(injury_data)

# 將 athlete 欄位轉為 factor，依照 Time_loss 遞減排序
injury_data$athlete <- factor(injury_data$athlete,
                              levels = injury_data$athlete[order(-injury_data$Time_loss)])
# 輸出圖表
library(ggplot2)

ggplot(injury_data, aes(x = athlete, y = Time_loss, fill = Severity)) +
  geom_col() +
  scale_fill_manual(values = c(
    "Mild" = "#C0D2D9",     # 淺灰藍
    "Moderate" = "#6C8C99", # 中藍灰
    "Severe" = "#2F4F5F"    # 深藍灰
  )) +
  labs(title = "Time Loss and Injury Severity by Athlete",
       x = "Athlete",
       y = "Time Loss (days)") +
  theme_minimal() +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
  )


# 情境 2
# 你正在協助整理女籃選手的功能性測試分數，分數越高表示功能越好。球隊的標準如下：

  ## Funtional Test ≥90   -> 通過 (Pass)
  ## Funtional Test 75-89 -> 及格邊緣 (Borderline)
  ## Funtional Test ≤75   -> 不通過(Fail)

test_data <- data.frame(
  athlete = c("Anita", "Samantha", "Jemma", "Ping", "Carolyn"),
  Function_score = c(92, 84, 70, 95, 78)
)

# 請使用 for 迴圈和 if / else 結構，為每位選手建立一個新欄位 Clearance，
# 標示她的功能評估結果（"Pass"、"Borderline" 或 "Fail"）

clearence <- c()

for(i in 1:nrow(test_data)){
  athlete <- test_data$athlete[i]
  functional_score <- test_data$Function_score[i]
  
  if(functional_score >= 90){
    clearence[i] <- "Pass"
  }else if (functional_score >75 && functional_score <= 89){
    clearence[i] <- "Borderline"
  }else{
    clearence[i] <- "Fail"
  }
}

test_data$Clearence <- clearence
print(test_data)
