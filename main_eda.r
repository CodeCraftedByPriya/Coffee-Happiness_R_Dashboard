# Happiness vs Coffee

# Load packages
library(readr)
library(rvest)
library(dplyr)
library(ggplot2)
library(plotly)
library(shinydashboard)
library(leaflet)
library(tidyr)
library(rnaturalearth)
library(reshape2)
library(stringr)
library(sf)

# 1. READ HAPPINESS CSV (LOCAL)
happiness_file <- "C:\\Users\\Priyalakshmi\\Desktop\\Dashboard_R\\happiest-countries-in-the-world-2025.csv"

happiness_clean <- read_csv(happiness_file, show_col_types = FALSE) %>%
  select(country, WorldHappinessScore_2024) %>%
  rename(Country = country, Happiness_Score = WorldHappinessScore_2024) %>%
  mutate(Happiness_Score = as.numeric(Happiness_Score))


# 2. SCRAPE COFFEE CONSUMPTION DATA

coffee_url <- "https://worldpopulationreview.com/country-rankings/coffee-consumption-by-country"
coffee_page <- read_html(coffee_url)

# Extract first HTML table safely
coffee_table <- coffee_page %>%
  html_element("table") %>%
  html_table(fill = TRUE)

# Check structure
if (is.null(coffee_table) || ncol(coffee_table) < 3) {
  stop("Coffee table structure changed on the website. Please check the page manually.")
}

# Clean column names safely
colnames(coffee_table) <- make.names(colnames(coffee_table))

# Try to identify columns dynamically
coffee_clean <- coffee_table %>%
  rename(
    Country = dplyr::matches("Country", ignore.case = TRUE),
    Coffee_Consumption_kg = dplyr::matches("Rate|Per.Capita|kg", ignore.case = TRUE),
    Total_Consumption_Tons = dplyr::matches("Total|2000|Ton", ignore.case = TRUE)
  ) %>%
  mutate(
    Coffee_Consumption_kg = as.numeric(gsub("[^0-9\\.]", "", Coffee_Consumption_kg)),
    Total_Consumption_Tons = as.numeric(gsub("[^0-9\\.]", "", Total_Consumption_Tons))
  ) %>%
  filter(!is.na(Coffee_Consumption_kg))


# 3. MERGE DATASETS

merged_data <- left_join(happiness_clean, coffee_clean, by = "Country") %>%
  drop_na() %>%
  mutate(Happiness_Quintile = ntile(Happiness_Score, 5))


# 4. VISUALIZATIONS

scatter_plot <- ggplot(merged_data, aes(x = Happiness_Score, y = Coffee_Consumption_kg)) +
  geom_point(aes(color = Happiness_Score), size = 4) +
  labs(title = "Happiness Score vs Coffee Consumption", 
       x = "Happiness Score", 
       y = "Coffee Consumption (kg per capita)") +
  theme_minimal()

box_plot <- ggplot(merged_data, aes(x = factor(Happiness_Quintile), y = Coffee_Consumption_kg)) +
  geom_boxplot(aes(fill = factor(Happiness_Quintile))) +
  labs(title = "Coffee Consumption by Happiness Quintile", 
       x = "Happiness Quintile", 
       y = "Coffee Consumption (kg per capita)") +
  theme_minimal()

cor_matrix <- cor(merged_data %>% select(Happiness_Score, Coffee_Consumption_kg), use = "complete.obs")
cor_matrix_melted <- melt(cor_matrix)

heatmap_plot <- ggplot(cor_matrix_melted, aes(Var1, Var2, fill = value)) +
  geom_tile() +
  scale_fill_gradient2(mid = "white", low = "blue", high = "red") +
  labs(title = "Correlation Heatmap") +
  theme_minimal()
