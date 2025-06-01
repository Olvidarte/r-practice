
##################################################
# 📄 Title: 04_data_frame_intro.R
# 📆 Date: 2025-06-01
# 🧠 Purpose: 練習建立一筆小型的運動傷害紀錄資料，並熟悉data.frame()的使用情境與撰寫技術
# 💡 Topic: data.frame, colum types, indexing, summary
##################################################

# 使用情境
  ##模擬EMR現有的SOAP欄位，用R來記錄、管理我的傷害紀錄：
  ##欄位包含：姓名、隊伍、傷害機轉、診斷結果、傷停天數、回場狀態


# 建立一個叫做injury_report的傷害紀錄資料
injury_report <- data.frame(
  Name = c("Samantha", "Anita", "Ping", "Jemma"),
  Sport_Team = c("Field and Track", "Judo", "Basketball", "Basketball"),
  Injury_Mechanism = c("Joint Sprain", "Muscle Strain", "Contusion", "Joint Sprain"),
  Diagnosis = c("Midfoot Sprain", "Hamsting Sprain", "Quadriceps Contusion", "ACL Parial Tear"),
  Time_Loss = c(28, 21, 7, 90),
  RTP_Status = c("No", "Yes", "Yes", "No"),
  stringAsFactors = FALSE
)

# 測試
print(injury_report)

#查看這筆資料的結構
str(injury_report)

#查看這筆資料有哪些欄位
head(injury_report)

#查看已回場與未回場的人數統計
table(injury_report$RTP_Status)

#計算平均傷停天數
mean(injury_report$Time_Loss)
