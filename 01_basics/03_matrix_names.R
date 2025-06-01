
##################################################
# 📄 Title: 03_matrix_names.R
# 📆 Date: 2025-06-01
# 🧠 Purpose: 練習用矩陣儲存跨賽季與傷害部位的Time Loss天數，並加上row/column的名稱
# 💡 Topic: Matrix, dimnames, indexing
##################################################


#建立一個2x3的矩陣來表示2個賽季x3種傷害類型 
time_loss_days <- matrix(c(295,289,287, 280, 275, 120), nrow = 2, byrow = TRUE)


#指定row和column的名稱
dimnames(time_loss_days) <- list(
  Season = c("2023","2024"),
  Injury = c("ACL Rupture", "MCL Partial Tear", "PCL Rupture")
) 


#測試

print(time_loss_days)


