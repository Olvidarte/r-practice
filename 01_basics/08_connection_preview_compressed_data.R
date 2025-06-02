
##################################################
# 📄 Title: 08_connection_preview_compressed_data.R
# 📆 Date: 2025-06-02
# 🧠 Purpose: 練習利用connection來預先讀取大型壓縮檔案的欄位，降低記憶體的運算壓力
# 💡 Topic: gz.file
# 🎓 Source: Coursera - R Programming - 第1單元 - Connection: Interfaces to the outside World
##################################################

# 使用情境
# 我向國外的大型資料庫HS RIO申請了一個傷害資料檔案 injury_data_2024.gz，
# 檔案是 gzip 壓縮格式（副檔名為 .gz），內容可能包含數十萬筆紀錄，
# 為了不要增加記憶體運算的負擔，我希望在不讀取完整檔案的情況下，
# 先讀取前10行，確認資料欄位名稱與資料結構是否包含「受傷日期」、「受傷類型」和「回場日期」

# 開啟connection讀取壓縮檔
con <- gzfile("injury_data_2024.gz", "r")

# 讀取前10行的欄位名稱與資料
preview_lines <- readlines(con, row = 10)

# 關閉結果
close(con)

# 測試



# 測試


