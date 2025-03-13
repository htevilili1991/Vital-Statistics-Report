library(rmarkdown)

# Render the HTML report (Quarto)
system("quarto render VitalStatisticsReport_html.qmd --to html")

# Render the LaTeX (PDF) report (Quarto)
system("quarto render VitalStatisticsReport_latex.qmd --to pdf")

