## I. Geometric Distribution
# Set the probability of success
p <- 0.2

# Generate 1000 random variables from the geometric distribution
x <- rgeom(1000, p)

# Calculate basic statistics
mean_x <- mean(x)
var_x <- var(x)
sd_x <- sd(x)

# Print the results
cat("Number of trials required to achieve first success:\n")
cat("Mean (in 2 decimal places): ", sprintf("%.2f", mean_x), "\n", sep="")
cat("Variance (in 2 decimal places): ", sprintf("%.2f", var_x), "\n", sep="")
cat("Standard deviation (in 2 decimal places): ", sprintf("%.2f", sd_x), "\n", sep="")

# Plot the histogram
hist(x, main="Histogram of Geometric Distribution", xlab="Number of trials required to achieve first success", ylab="Frequency", col="skyblue")


## II. Hypergeometric Distribution

# (1)

# Parameters
sample_size <- 10
box_size <- 40
defectives_in_population <- 0.1 * box_size  # 10% of 40

# Calculate probability
probability_more_than_10_percent <- 1 - phyper(sample_size * 0.1 - 1, defectives_in_population, box_size - defectives_in_population, sample_size)
print(probability_more_than_10_percent)

#(2)

# Parameters
sample_size <- 10
box_size <- 5000
defectives_in_population <- 0.1 * box_size  # 10% of 5000

# Calculate probability
probability_more_than_10_percent <- 1 - phyper(sample_size * 0.1 - 1, defectives_in_population, box_size - defectives_in_population, sample_size)
print(probability_more_than_10_percent)

##PLOTTING

# Required libraries
library(ggplot2)

# Function to calculate probability
calculate_probability <- function(sample_size, box_size, defectives_percentage) {
  defectives_in_population <- defectives_percentage * box_size
  probability_more_than_10_percent <- 1 - phyper(sample_size * 0.1 - 1, defectives_in_population, box_size - defectives_in_population, sample_size)
  return(probability_more_than_10_percent)
}

# Parameters
sample_sizes <- c(10, 10)
box_sizes <- c(40, 5000)
defectives_percentages <- c(0.1, 0.1)

# Calculate probabilities
probabilities <- sapply(1:length(sample_sizes), function(i) {
  calculate_probability(sample_sizes[i], box_sizes[i], defectives_percentages[i])
})

# Data frame for plotting
data <- data.frame(Sample_Size = rep(c("10 from 40", "10 from 5000"), each = 1),
                   Probability = probabilities)

# Plot
ggplot(data, aes(x = Sample_Size, y = Probability, fill = Sample_Size)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Probability of Sample Containing More than 10% Defectives",
       x = "Sample Size from Box",
       y = "Probability") +
  theme_minimal()
