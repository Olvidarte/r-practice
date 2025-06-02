
##################################################
# 📄 Title: 06_large_data_reading_practice.R
# 📆 Date: 2025-06-02
# 🧠 Purpose: 練習讀取大數據的資料庫，並估算可能需要的記憶體
# 💡 Topic: read.table, read.csv, memory calculation
# 🎓 Source: Coursera - R Programming - 第1單元 - Reading Large Tables
##################################################

# 使用情境
# 假設我需要分析一筆運動傷害數據，資料是CSV檔injury_data.csv，內含200萬列、80欄，且全部都是數值欄位。請寫出：
  # 如何估算需要的記憶體大小（以GB為單位）
  # 實際讀入該資料檔的程式碼，並優化執行效率



# 估算需要的記憶體大小

rows <- 2000000 
col <- 80
total_byte <- rows*col*8
mb <- total_byte / 2^20
GB <- mb / 2^10

print(GB) #讀取資料的記憶體大小需要1.19GB，實際需求可能要2倍以上


# 實際讀入該資料檔的程式碼，並優化執行效率
data <- read.csv("injury_data.csv", colClasses = rep("numeric",80, nrows = 2000000, comment.char = ""))

