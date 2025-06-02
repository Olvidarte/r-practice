
##################################################
# 📄 Title: 07_deput_deget_practice.R
# 📆 Date: 2025-06-02
# 🧠 Purpose: 練習用deput和deget來保存資料的原始欄位型別
# 💡 Topic: deput, deget, text-based data format
# 🎓 Source: Coursera - R Programming - 第1單元 - Textual Data Formats
##################################################

# ✏️ 說明區：
# 這一區你可以簡單寫下這次練習的背景或想練習的語法重點。
# 例如：使用 list 儲存一筆傷害紀錄，並練習 list 的命名與取值方式。

# 設定工作目錄
setwd("~/Documents/R practice")

# 執行整個檔案
source("injury_log_dput_practice.R")  

dput(injury_log, file = "injury_log.R")
injury_new <- dget("injury_log.R")

# 測試
str(injury_new) 
