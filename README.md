<h1 align="center">☕ Happiness vs Coffee Consumption ☀️</h1>
<p align="center"><i>Exploring how caffeine connects to happiness through R programming, data visualization, and web scraping</i></p>

<p align="center">
  <img src="https://img.shields.io/github/last-commit/YourGitHubUsername/Happiness-vs-Coffee?style=flat-square">
  <img src="https://img.shields.io/badge/R-100%25-blue?style=flat-square">
  <img src="https://img.shields.io/badge/languages-1-blue?style=flat-square">
</p>

---

<h3 align="center">🧰 Tools & Libraries</h3>
<div align="center">  
  <img src="https://img.shields.io/badge/-R-276DC3?style=for-the-badge&logo=r&logoColor=white" style="margin:4px;" />  
  <img src="https://img.shields.io/badge/-readr-3776AB?style=for-the-badge" style="margin:4px;" />  
  <img src="https://img.shields.io/badge/-rvest-228B22?style=for-the-badge" style="margin:4px;" />  
  <img src="https://img.shields.io/badge/-dplyr-1C6B72?style=for-the-badge" style="margin:4px;" />  
  <img src="https://img.shields.io/badge/-ggplot2-8A2BE2?style=for-the-badge" style="margin:4px;" />  
  <img src="https://img.shields.io/badge/-plotly-F96302?style=for-the-badge" style="margin:4px;" />  
  <img src="https://img.shields.io/badge/-shinydashboard-FF4500?style=for-the-badge" style="margin:4px;" />  
  <img src="https://img.shields.io/badge/-leaflet-199900?style=for-the-badge" style="margin:4px;" />  
  <img src="https://img.shields.io/badge/-sf-0066CC?style=for-the-badge" style="margin:4px;" />  
  <img src="https://img.shields.io/badge/-tidyr-FF69B4?style=for-the-badge" style="margin:4px;" />  
  <img src="https://img.shields.io/badge/-rnaturalearth-9cf?style=for-the-badge" style="margin:4px;" />  
  <img src="https://img.shields.io/badge/-reshape2-9B59B6?style=for-the-badge" style="margin:4px;" />  
  <img src="https://img.shields.io/badge/-stringr-3498DB?style=for-the-badge" style="margin:4px;" />  
</div>

---

## 📘 Project Overview
The **Happiness vs Coffee Consumption** project explores the relationship between global happiness levels and coffee consumption per capita.  
Using R, this project combines **data scraping**, **data cleaning**, and **visual analytics** to reveal how lifestyle habits (like coffee drinking ☕) correlate with national happiness scores 😊.

---

## 🎯 Objectives
- Combine **World Happiness Index 2024** data with **Coffee Consumption by Country**  
- Analyze if happier countries tend to consume more coffee  
- Visualize patterns using interactive and static graphs  
- Build a dashboard using **Shiny** for exploration  

---

## 🧠 Methodology

1. **Data Collection**  
   - Read Happiness dataset (`happiest-countries-in-the-world-2025.csv`)  
   - Scrape coffee consumption table from [WorldPopulationReview](https://worldpopulationreview.com/country-rankings/coffee-consumption-by-country)  

2. **Data Cleaning**  
   - Handle missing values and incorrect formats  
   - Standardize country names and numeric columns  

3. **Data Merging**  
   - Merge happiness and coffee data by `Country`  
   - Create `Happiness_Quintile` variable  

4. **Visualization**  
   - **Scatter Plot:** Happiness vs Coffee Consumption  
   - **Box Plot:** Coffee consumption by happiness quintile  
   - **Correlation Heatmap:** Relationship strength  
   - (Optional) Interactive **Leaflet map** for spatial visualization  

---

## 🧩 Languages Used
| Language | Purpose |
|-----------|----------|
| **R** | Core programming language for data scraping, cleaning, and visualization |

---

## 🧰 Libraries Used
| Category | Libraries |
|-----------|------------|
| Data Handling | `readr`, `dplyr`, `tidyr`, `stringr` |
| Web Scraping | `rvest` |
| Visualization | `ggplot2`, `plotly` |
| Mapping | `sf`, `rnaturalearth`, `leaflet` |
| Dashboard | `shinydashboard` |
| Utilities | `reshape2` |

---

## 💡 Key Features
- Dynamic merging of happiness and coffee data  
- Automatic column detection for web-scraped data  
- Clean, reproducible data transformation pipeline  
- Visual insights via **ggplot2** and **plotly**  
- Extensible dashboard for geographic and statistical views  

---

## Insights
- 

---

## Contributors
- **Priyalakshmi SP and Shobia Nedumaran**  
  *B.Sc. Economics (Data Science) - SNUC*  

---
