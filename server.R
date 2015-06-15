# library(UsingR)
data(mtcars)

shinyServer(
  
    function(input, output) {
        output$oid1 <-  renderPrint({
        paste('lm(mpg ~ ',input$id1, ',data=mtcars)')
    })
    
    output$oid2 <- renderPrint({
      
      lm1 <-  switch(input$id1, 
                      "wt" = lm(mpg ~ wt, data=mtcars),
                      "wt + am" = lm(mpg ~ wt+am, data=mtcars),
                      "wt + am + qsec" = lm(mpg ~ wt+am+qsec, data=mtcars),
                      "wt + am + qsec + hp" = lm(mpg ~ wt+am+qsec+hp, data=mtcars)
                    )
            
      summary(lm1)$coef
      })
    
  }
)
