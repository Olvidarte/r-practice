
##################################################
# 📄 Title: 10_control structure_if else
# 📆 Date: 2025-06-05
# 🧠 Purpose: 練習用for迴圈和if-else的條件來實現資料分類擷取
# 💡 Topic: if-else
# 🎓 Source: Coursera - R Programming - Week 2 - Control Structure: if-else
##################################################

# 使用情境

# 我是一個在大學工作的防護員，正在著手開發一套簡單的傷後追蹤報告工作，希望能讓自己和教練快速掌握選手的復健進度
# 請建立一個基礎的dataset，並回應


# 建立injury_data的dataset
injury_data <- data.frame(
  Athlete = c("Anita", "Samantha", "Jemma", "Ping", "Carolyn"),
  Diagnosis = c(
    "Ankle Sprain",
    "Midfoot Sprain",
    "Concussion",
    "Hamstring Strain",
    "Patellofemoral joint chondral pain"
  ),
  
  Time_Loss = c(5, 40, 12, 20, 0),
  Cleared = c(TRUE, FALSE, TRUE, FALSE, TRUE)
)

# 1 if-else
# 你希望能快速讓教練從time loss的天數多寡判斷每位選手的傷害嚴重程度
# 請寫一段程式，為每位運動員分類傷害程度

  ## 0天     -> Healthy
  ## 1-13天  -> Minor Injury
  ## 14-29天 -> Moderate Injury
  ## ≥30天   -> Severe Injury

Severity <- c()

for(i in 1:nrow(injury_data)){
  days <- injury_data$Time_Loss[i]
  
  if(days == 0){
    Severity [i] <- "Healthy"
  }else if (days >= 1 && days <=13){
    Severity [i] <- "Minor Injury"
  }else if (days >= 14 && days <=29){
    Severity [i] <- "Moderate Injury"
  }else{
    Severity [i] <- "Severe Injury"
  }
}

# 把Severity的欄位加到原來的dataset裡
injury_data$Severity <- Severity

# 測試
print(injury_data)

# 2 for迴圈和if-else的應用
# 我希望快速掌握目前所有選手的復健狀況，讓自己和教練對選手的回場情形

  ## 分類規則

   # 已經通過評估 (cleared == TRUE) 且 Time_Loss == 0 -> "Ready"
   # 尚未通過評估 (cleared == FALSE) 且 Time_Loss <= 14 -> "In Progress"
   # 尚未通過評估 (cleared == FALSE) 且 Time_Loss > 14 -> "Delayed"
   # 其他狀況 -> "Unknown"

# Step 1: 用for迴圈檢查每個選手

Status <- c()

for(i in 1:nrow(injury_data)){
  days <- injury_data$Time_Loss[i]
  cleared <- injury_data$Cleared[i]
  
  # Step 2: 用if/else條件判斷
 if (days == 0){
   Status[i] <- "Ready"
 }else if (days <= 14){
   Status[i] <- "In Progress"
 }else if (days > 14){
   Status[i] <- "Delayed"
 }else{
   Severity <- "Unknown"
 }
}

# Step 3: 在原有的dataset裡加上Status
injury_data$Status <- Status
print(injury_data)



# 3 
