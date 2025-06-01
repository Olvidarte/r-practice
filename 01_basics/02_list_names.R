
# 📄 Title: 02_list_names.R
# 📆 Date: 2025-05-31
# 🧠 Purpose: 用List來儲存一個包含運動員個人資訊的傷害清單
# 💡 Topic: List structure, named elements, data access
################################################################################

#建立一個叫做injury_list的list
injury_list <- list(
  Name = "Samantha",
  Age = 35,
  Sport = "Basketball",
  Diagnosis = "Midfoot Sprain",
  TimeLoss = 10,
  Surgery = FALSE,
  RTP_Status = "In Progression"
)

#測試
print(injury_list)

#查看list的結構
str(injury_list)

#要求回傳特定欄位
print(injury_list$Diagnosis)
print(injury_list$RTP_Status)

#查看欄位名稱
print(names(injury_list))
