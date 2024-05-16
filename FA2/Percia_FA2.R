### NUMBER 1

# Define the number of trials
num_trials <- 1000

# (a) Simulating coin toss
coin_toss <- sample(c("Head", "Tail"), num_trials, replace = TRUE)
prob_head <- mean(coin_toss == "Head")

# (b) Simulating card drawing
deck <- rep(c("Red", "Black"), times = 26)
card_draw <- sample(deck, num_trials, replace = TRUE)
prob_red <- mean(card_draw == "Red")

# (c) Simulating die rolling
die_roll <- sample(1:6, num_trials, replace = TRUE)
prob_even <- mean(die_roll %% 2 == 0)

cat("(a) Probability of getting a head in coin toss:", prob_head, "\n")
cat("(b) Probability of drawing a red card:", prob_red, "\n")
cat("(c) Probability of getting an even number in die roll:", prob_even, "\n")


### NUMBER 2

# Simulate 100 times
num_experiments <- 100
coin_outcomes <- replicate(num_experiments, {
  tosses <- sample(c("H", "T"), 2, replace = TRUE)
  paste(sort(tosses), collapse = "")
})
# Count the frequency of each outcome
outcome_counts <- table(coin_outcomes)
# Calculate the relative frequency
relative_freq <- prop.table(outcome_counts)
relative_freq


### NUMBER 3

# Simulate 600 times
num_experiments <- 600
die_outcomes <- sample(1:6, num_experiments, replace = TRUE)
# Count the frequency of each outcome
outcome_counts <- table(die_outcomes)
# Calculate the relative frequency
relative_freq <- prop.table(outcome_counts)
relative_freq
