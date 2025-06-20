
##################################################
# 📄 Title: 07_deput_deget_practice.R
# 📆 Date: 2025-06-02
# 🧠 Purpose: 練習用deput和deget來保存資料的原始欄位型別
# 💡 Topic: deput, deget, text-based data format
# 🎓 Source: Coursera - R Programming - 第1單元 - Textual Data Formats
##################################################

# 使用情境
  # 我是一間運動防護是的head AT，我要將暫時代理的運動傷害紀錄資料移轉給新的防護員，
  # 這筆資料的欄位包含各種不同型別的數值，為了確保資料移轉的過程中不會格式轉換錯誤
  # 練習用dput來寫入資料，並用dget讀取，確認型別是否正確



# 設定工作目錄
setwd("~/Documents/R practice")
# 執行整個檔案
source("injury_log_dput_practice.R")  

# 寫入資料
dput(injury_log, file = "injury_log.R")

# 新的防護員讀取資料的方式
injury_new <- dget("injury_log.R")

# 測試
str(injury_new) 
