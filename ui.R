library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Predicted Average Chicken Weight Per Feed Type"),
  
  sidebarPanel(
    p("Select feed type from the box below."),
    p("Results will be displayed to the right."),
    selectInput("f", label =h3("Feed Type:"), list("Horse Bean" = "horsebean","Casein" = "casein", "Linseed" = "linseed", "Meat Meal" = "meatmeal", "Soybean" = "soybean", "Sunflower" = "sunflower"))),
 
  mainPanel(
    h3("Predicted Weight (grams):"),
    h4(textOutput('wt')),
    p("Note: Result based on independent research. Actual weight totals may vary.")

    )))
