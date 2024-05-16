## NUMBER 6

# (a)

# Define the percentages
percent_messages <- c(40, 25, 35)
percent_errors <- c(1, 2, 1.5)

# Calculate the weighted average of error percentages
prob_error <- sum(percent_messages * percent_errors) / sum(percent_messages) / 100
prob_error

#(b)

# Calculate the complement of the error probability
prob_no_error <- 1 - prob_error
prob_no_error

#(c)

# Calculate the probability of sending a message through server 1 given no error
prob_server1_no_error <- (percent_messages[1] / 100) * prob_no_error
prob_server1_no_error

## NUMBER 9
# Define probabilities
P_A <- 0.20 # Probability of not buying
P_B <- 0.70 # Probability of buying
P_C <- 1 - P_A - P_B # Probability of undecided

P_G_given_A <- 0.10 # Probability of upgrading given not buying
P_G_given_B <- 0.40 # Probability of upgrading given buying
P_G_given_C <- 0.20 # Probability of upgrading given undecided

# Calculate complement probabilities
P_complement_G <- 1 - (P_A * P_G_given_A + P_B * P_G_given_B + P_C * P_G_given_C)

# (a) Calculate the probability that a manager chosen at random will not upgrade the computer hardware (P(complement G))
print(P_complement_G)

# Define posterior probabilities
P_B_given_G <- (P_B * P_G_given_B) / P_complement_G

# (b) Explain what is meant by the posterior probability of B given G, P(B|G)
# Posterior probability of B given G represents the probability of a manager intending to buy the graphics package given that they are interested in upgrading their computer hardware.

library(DiagrammeR)

grViz("
digraph tree {
  node [shape = circle, fontsize = 10, fontname = Helvetica]
  edge [fontsize = 10, fontname = Helvetica]

  Start -> A [tooltip = '0.20']
  Start -> B [tooltip = '0.70']
  Start -> C [tooltip = '0.10']
  A -> G [tooltip = '0.10']
  A -> complement_G [tooltip = '0.90']
  B -> G [tooltip = '0.40']
  B -> complement_G [tooltip = '0.60']
  C -> G [tooltip = '0.20']
  C -> complement_G [tooltip = '0.80']
  G -> B [tooltip = '0.50']
  G -> C [tooltip = '0.50']
  complement_G -> A [tooltip = '0.90']
  complement_G -> B [tooltip = '0.10']
}
")

# Probability of G
P_G <- 0.2 * 0.10 + 0.7 * 0.40 + 0.1 * 0.20

# Probability of B given G
P_B_given_G <- 0.7 * 0.40 / P_G

# Probability of B given complement G
P_B_given_complement_G <- 0.1 * 0.10 / (1 - P_G)

# Probability of C given G
P_C_given_G <- 0.1 * 0.50 / P_G

# Probability of complement C given complement G
P_complement_C_given_complement_G <- 0.9 * 0.90 / (1 - P_G)

# Print the probabilities
cat("P(G) =", P_G, "\n")
cat("P(B|G) =", P_B_given_G, "\n")
cat("P(B|complement G) =", P_B_given_complement_G, "\n")
cat("P(C|G) =", P_C_given_G, "\n")
cat("P(complement C|complement G) =", P_complement_C_given_complement_G, "\n")


## NUMBER 13

# Probability of infection
P_infection <- 0.70 * 1 + 0.30 * 1

# Probability of detection
P_detection <- 0.6 * 0.70 + 0.8 * 0.30

# Probability of infection given detection
P_infection_given_detection <- (0.6 * 0.70) / P_detection

# Print results
print(P_infection)
print(P_infection_given_detection)
