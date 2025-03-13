# Vanuatu Vital Statistics Report

## Overview

The **Vanuatu Vital Statistics Report** is an annual publication by the Vanuatu Bureau of Statistics, designed to provide a comprehensive analysis of the nation's vital demographic indicators, including births, deaths, and marriages. This project uses R and Quarto to generate a professionally formatted report in PDF format (with an optional HTML version) based on data sourced from the Department of Civil Registration & Identity Management (CRIM). The report serves as a critical resource for government agencies, researchers, and the public, offering insights into population dynamics and supporting evidence-based decision-making.

This repository contains the R code and configuration files necessary to produce the "First Annual Vital Statistics Report for Vanuatu," marking a significant milestone in establishing a systematic and standardized approach to demographic reporting.

## Purpose

The primary goals of this project are:
- To compile and analyze vital statistics data (births, deaths, marriages) for Vanuatu.
- To establish a baseline for future annual reports.
- To align with international standards for demographic reporting.
- To provide accessible, accurate, and visually appealing outputs for stakeholders.

## Project Structure

- **`VitalStatisticsReport.qmd`**: The main Quarto document containing the R code, text, and formatting instructions for generating the report.
- **`civilRegistry.SQLite`**: SQLite database file containing the vital statistics data (e.g., `vitalStats` table).
- **`cover.pdf`**: Cover page PDF included in the final report.
- **`references.bib`**: Bibliography file in BibTeX format for citations.
- **`american-sociological-association.csl`**: Citation Style Language file for formatting references.
- **`Myfonts/SourceSansPro/`**: Directory containing custom fonts (`SourceSansPro-Regular.ttf`, `SourceSansPro-Bold.ttf`, `SourceSansPro-Italic.ttf`) used in the PDF output.
- **`VitalStatisticsReport.pdf`**: The generated PDF report (output).
- **`VitalStatisticsReport_html.html`**: Optional interactive HTML version of the report.

## Features

- **Data Analysis**: Processes data from an SQLite database to calculate key demographic indicators such as total births by sex and year, sex ratio at birth, and trends over time.
- **Visualizations**: Includes graphs (e.g., line charts for birth trends, bar charts for sex ratios) using `ggplot2`.
- **Tables**: Generates formatted tables (e.g., total births by sex and year, sex ratio per year) using `kableExtra`.
- **Custom Formatting**: Uses LaTeX for PDF output with custom fonts, two-column layouts for specific sections, and a table of contents.
- **Dynamic Content**: Incorporates inline R code to dynamically populate text with calculated values (e.g., birth counts, trends).

## Dependencies

To run this project, ensure you have the following installed:

- **R** (version 4.0.0 or higher recommended)
- **R Packages**:
  - `DBI` and `RSQLite`: For database connectivity.
  - `dplyr` and `tidyr`: For data manipulation.
  - `knitr` and `kableExtra`: For report generation and table formatting.
  - `ggplot2`: For data visualization.
  - `highcharter`: For interactive charts (optional, not fully utilized in the provided code).
- **Quarto**: For rendering the `.qmd` file into PDF and HTML formats.
- **LaTeX Distribution**: Required for PDF output (e.g., TinyTeX or MiKTeX).
- **Fonts**: Source Sans Pro fonts must be available at the specified path (`C:/Users/User/Documents/Myfonts/SourceSansPro/`) or adjusted in the code.

Install R packages using:
```R
install.packages(c("DBI", "RSQLite", "dplyr", "tidyr", "knitr", "kableExtra", "ggplot2", "highcharter"))
