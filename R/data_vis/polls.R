library(readr)
library(dplyr)
library(highcharter)


## Biden Stimulus Responses
biden_stimulus <- read_csv("C:/Users/madat/Projects/data_vis/Data/biden-stimulus-quinnipiac-02-03-2021.csv")

highchart() %>%
  hc_add_series(biden_stimulus, type = 'bar', hcaes(x = affiliation, y = support_value), color = "#119DA4", name = 'Support') %>%
  hc_add_series(biden_stimulus, type = 'bar', hcaes(x = affiliation, y = oppose_value), color = "#BF4E30", name = 'Oppose') %>%
  hc_add_series(biden_stimulus, type = 'bar', hcaes(x = affiliation, y = dk_value),  color = "#1F2041", name = "Don't Know/NA") %>% 
  hc_xAxis(tickColor = "#ffffff",
           opposite = FALSE,
           useHTML = TRUE,
           categories = c("Total", "Democrats", "Republicans","Independents")) %>%
  hc_yAxis(max = 100,
           labels = list(enabled=TRUE,
                         format = "{value}%"),
           title = list(text = "Percentage")) %>%
  hc_title(text="Support for Biden's Stimulus Plan") %>%
  hc_subtitle(text = 'Responses to "As you may know, the Biden administration has proposed a $1.9 trillion stimulus relief bill in response to the coronavirus pandemic. Do you support or oppose this bill?"') %>%
  hc_credits(
    enabled = TRUE,
    useHTML = TRUE,
    text = "Data: Quinnipiac University Poll | Graphic: Visakh Madathil")

## 1.4k Check Responses
check_responses <- read_csv("C:/Users/madat/Projects/data_vis/Data/stimulus-checks-quinnipiac-02-03-2021.csv")

highchart() %>%
  hc_add_series(check_responses, type = 'bar', hcaes(x = affiliation, y = support_value), color = "#119DA4", name = 'Support') %>%
  hc_add_series(check_responses, type = 'bar', hcaes(x = affiliation, y = oppose_value), color = "#BF4E30", name = 'Oppose') %>%
  hc_add_series(check_responses, type = 'bar', hcaes(x = affiliation, y = dk_value),  color = "#1F2041", name = "Don't Know/NA") %>% 
  hc_xAxis(tickColor = "#ffffff",
           opposite = FALSE,
           useHTML = TRUE,
           categories = c("Total", "Democrats", "Republicans","Independents")) %>%
  hc_yAxis(max = 100,
           labels = list(enabled=TRUE,
                         format = "{value}%"),
           title = list(text = "Percentage")) %>%
  hc_title(text="Support for $1,400 Stimulus Checks") %>%
  hc_subtitle(text = 'Responses to "Do you support or oppose $1,400 stimulus payments to Americans?"') %>%
  hc_credits(
    enabled = TRUE,
    useHTML = TRUE,
    text = "Data: Quinnipiac University Poll | Graphic: Visakh Madathil")

## Min Wage Responses
min_wage <- read_csv("C:/Users/madat/Projects/data_vis/Data/min-wage-quinnipiac-02-03-2021.csv")

highchart() %>%
  hc_add_series(min_wage, type = 'bar', hcaes(x = affiliation, y = support_value), color = "#119DA4", name = 'Support') %>%
  hc_add_series(min_wage, type = 'bar', hcaes(x = affiliation, y = oppose_value), color = "#BF4E30", name = 'Oppose') %>%
  hc_add_series(min_wage, type = 'bar', hcaes(x = affiliation, y = dk_value),  color = "#1F2041", name = "Don't Know/NA") %>% 
  hc_xAxis(tickColor = "#ffffff",
           opposite = FALSE,
           useHTML = TRUE,
           categories = c("Total", "Democrats", "Republicans","Independents")) %>%
  hc_yAxis(max = 100,
           labels = list(enabled=TRUE,
                         format = "{value}%"),
           title = list(text = "Percentage")) %>%
  hc_title(text="Support for $15/hour Minimum Wage") %>%
  hc_subtitle(text = 'Responses to "Do you support or oppose raising the federal minimum wage to $15 an hour?"') %>%
  hc_credits(
    enabled = TRUE,
    useHTML = TRUE,
    text = "Data: Quinnipiac University Poll | Graphic: Visakh Madathil")






## Employment discrimination all
all_stats <- read_csv("C:/Users/madat/Projects/data_vis/Data/Employment Discrimination/all_stats.csv")
all_stats <- janitor::clean_names(all_stats)

highchart() %>%
  hc_add_series(all_stats, type = 'line', hcaes(x = year, y = total_charges), color = "#119DA4", marker = FALSE) %>%
  hc_xAxis(tickColor = "#ffffff",
           opposite = FALSE,
           useHTML = TRUE) %>%
  hc_yAxis(min = 0,
           title = list(text = "Total Number")) %>%
  hc_title(text="Total Number of Employment Discrimination Complaints to the EEOC") %>%
  hc_subtitle(text = 'The total number of individual charge filings at the EEOC') %>%
  hc_legend(enabled = FALSE) %>%
  hc_credits(
    enabled = TRUE,
    useHTML = TRUE,
    text = "Data: Equal Employment Opportunity Commission (EEOC) Enforcement and Litigation Statistics | Graphic: Visakh Madathil")








## Min Wage Responses
min_wage <- read_csv("C:/Users/madat/Projects/data_vis/Data/min-wage-quinnipiac-02-03-2021.csv")

highchart() %>%
  hc_add_series(min_wage, type = 'bar', hcaes(x = affiliation, y = support_value), color = "#119DA4", name = 'Support') %>%
  hc_add_series(min_wage, type = 'bar', hcaes(x = affiliation, y = oppose_value), color = "#BF4E30", name = 'Oppose') %>%
  hc_add_series(min_wage, type = 'bar', hcaes(x = affiliation, y = dk_value),  color = "#1F2041", name = "Don't Know/NA") %>% 
  hc_xAxis(tickColor = "#ffffff",
           opposite = FALSE,
           useHTML = TRUE,
           categories = c("Total", "Democrats", "Republicans","Independents")) %>%
  hc_yAxis(max = 100,
           labels = list(enabled=TRUE,
                         format = "{value}%"),
           title = list(text = "Percentage")) %>%
  hc_title(text="Support for $15/hour Minimum Wage") %>%
  hc_subtitle(text = 'Responses to "Do you support or oppose raising the federal minimum wage to $15 an hour?"') %>%
  hc_credits(
    enabled = TRUE,
    useHTML = TRUE,
    text = "Data: Equal Employment Opportunity Commission (EEOC) Enforcement and Litigation Statistics | Graphic: Visakh Madathil")

