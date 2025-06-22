##################################################
# 📄 Title: 12_control_structure_nested_for_loop
# 📆 Date: 2025-06-07
# 🧠 Purpose: 練習利用巢狀迴圈擷取矩陣資料
# 💡 Topic: Control Structure - Nested For loop + if/else
# 🎓 Source: Coursera - R Programming - Week 2 - Control Structure: for loop
##################################################

# 情境 1
# 你正在分析 5 位女籃選手在 3 個不同功能測試項目的分數結果（hop test、T-test、Y-Balance）。
# 這些資料是用一個矩陣儲存的：

scores <- matrix(
  c(92, 87, 70, 95, 78,
  88, 85, 72, 93, 80,
  90, 81, 65, 97, 76),
nrow = 3,
byrow = TRUE
)
print(scores)

rownames(scores) <- c("hop test", "T-Test", "Y-Balance")
colnames(scores) <- c("Anita", "Samantha", "Jemma", "Ping", "Carolyn")

# 查看資料
print(scores)

# 請使用 nested for loop，列出每位選手在每項測試的分數，格式如下：

  ## Anita 在 Hop Test 的分數是 92
  ## Anita 在 T-Test 的分數是 88

for(i in 1:nrow(scores)){
 for(j in 1:ncol(scores)){
   test_name <- rownames(scores)[i]
   athlete_name <- colnames(scores)[j]
   score <- scores[i, j]
   
   cat(athlete_name,"在", test_name,"的分數是",score, "\n")
 }
}


  