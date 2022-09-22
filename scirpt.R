# 数据导入与清洗
data <- readxl::read_xlsx("data.xlsx")
data1 <- data[, 7:10]
names(data1) <- c("性别", "是否学过", "最熟悉的编程语言", "是否愿意")
data1

# 多少人填写问卷
nrow(data1)

# 男生多少人
sum(data1$性别 == "男")

# 女生多少人
sum(data1$性别 == "女")

# table(data1$性别)
# pie(table(data1$性别))

# 多少人学习过编程语言
sum(data1$是否学过 == "是")
# mean(data1$是否学过 == "是")

# 熟悉 Python 的占比
sum(data1$最熟悉的编程语言 == "Python") / sum(data1$是否学过 == "是") * 100

# 熟悉 R 的占比
sum(data1$最熟悉的编程语言 == "R") / sum(data1$是否学过 == "是") * 100

