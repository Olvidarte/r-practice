
##################################################
# 📄 Title: 05_reading_tabular_data.R
# 📆 Date: 2025-06-01
# 🧠 Purpose: 練習讀取table的資料
# 💡 Topic: read.table, read.csv
# 🎓 Source: Coursera - R Programming - 第1單元 - Reading Tabular Data
##################################################

# 題目:
# 你有一個檔案叫injury_data.text，她的內容如下（每一欄由逗號分開）
# Name,InjuryType,TimeLoss
# Samantha,Concussion,14
# Anita, Ankle Sprain,21


# 寫出一段read.table()的程式碼，把這份資料正確讀進一個data frame，且不要把字串轉成factor
injury_record <-read.table("injury_data.text",
  header = TRUE,
  sep = ",",
  stringAsFactors = FALSE
)



# 🧪 測試：




