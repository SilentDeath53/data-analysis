library(ggplot2)    
library(dplyr)     

data <- read.csv("dataset.csv")   # replace it with your actual dataset file

summary(data)       
str(data)          
head(data)         

# Perform data visualization
ggplot(data, aes(x = category)) +
  geom_bar() +
  labs(title = "Distribution of Categories")

# Perform trend analysis
ggplot(data, aes(x = date, y = value)) +
  geom_line() +
  labs(title = "Trend Analysis", x = "Date", y = "Value")

# Perform statistical analysis
group1 <- data$value[data$group == "Group 1"]
group2 <- data$value[data$group == "Group 2"]
t.test(group1, group2)

# Perform data manipulation
filtered_data <- data %>% filter(variable == "Condition") %>% select(value, category)

ggsave("plot.png", plot = last_plot(), width = 6, height = 4)
