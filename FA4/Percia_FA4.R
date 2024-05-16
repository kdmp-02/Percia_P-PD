## NUMBER 5

# Define the percentages
percentages <- c(15, 20, 25, 40)
relevant_percentages <- c(50, 60, 80, 85)

# Calculate the weighted average of relevant images
overall_relevant_percentage <- sum(percentages * relevant_percentages) / sum(percentages)
overall_relevant_percentage


## NUMBER 6

# Simulate tossing a fair coin twice
num_trials <- 10000
coin_tosses <- replicate(num_trials, sample(c("H", "T"), 2, replace = TRUE))

# Define the events
E_1 <- apply(coin_tosses, 2, function(x) all(x == "H" | x == "T"))
E_2 <- apply(coin_tosses, 2, function(x) x[1] == "H")
E_3 <- apply(coin_tosses, 2, function(x) x[2] == "H")

# Check pairwise independence
pairwise_independence <- all(cor(cbind(E_1, E_2, E_3)) == 0)
pairwise_independence

# Calculate the probabilities of individual events
prob_E_1 <- mean(E_1)
prob_E_2 <- mean(E_2)
prob_E_3 <- mean(E_3)

# Calculate the joint probability of all three events
joint_prob <- mean(E_1 & E_2 & E_3)

# Check for mutual independence
mutually_independence <- joint_prob == prob_E_1 * prob_E_2 * prob_E_3
mutually_independence
