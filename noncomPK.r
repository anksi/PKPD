#### Non compartmental PK analysis
#Step 1: Create a dummy PK data
set.seed(123)  # For reproducibility

# Generate time points (0 to 24 hours)
time_points <- seq(0, 24, by = 0.5)

# Generate concentration data using a simple exponential decay model
# Assume initial concentration (C0) = 100 and elimination rate constant (kel) = 0.2
C0 <- 100
kel <- 0.2
concentration <- C0 * exp(-kel * time_points)

# Create a data frame
dummy_data <- data.frame(
  time = time_points,
  concentration = concentration,
  subject_id = rep(1, length(time_points))  # Single subject
)

# View the dummy data
head(dummy_data)

