shinyUI(pageWithSidebar(
  headerPanel("Regression Model for the outcome, mpg (Miles per Gallon) using mtcars Dataframe"),
  sidebarPanel(
    
    radioButtons("id1", "Select variables to build regression model",
                       c("Weight(wt)" = "wt",
                         "wt + Transmission mode(am)" = "wt + am",
                         "wt + am + qsec (1/4 mile)" = "wt + am + qsec",
                         "wt + am + qsec + Horse Power(hp)" = "wt + am + qsec + hp"))
    
      
  ),
  mainPanel(
    h3('Regression Model Output Panel'),
    h4('Regression Model'),
    verbatimTextOutput("oid1"),
    h4('Coeficients'),
    verbatimTextOutput("oid2"),
    h3("Instructions on using this Shiny App"),
    h4("1. Select a combination of predictors from the Side Bar Panel"),
    h4("2. Check the created Regression Model in the Main Panel"),
    h4("3. Check the Coefficients from the Regression Model")
  )
))
