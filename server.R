#
# simpler bmi app

library(shiny)


METRIC   = 1;
US = 2;
conversion_const = 703;

bmi <- function(mass, height, units) {
    bmi = mass / height^2
    
    if (units == US) {
        bmi = bmi * conversion_const
    }
    
    bmi = round(bmi, digits = 1)
    return (bmi)
}

shinyServer(
    function(input, output) {

        output$prediction <- renderPrint({bmi(input$mass, input$height, input$units)})
    }
)