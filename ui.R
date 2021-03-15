#
# bmi simple

shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("BMI calculator"),
        
        
        sidebarPanel(
            
            radioButtons(
                inputId  = "units",
                label    = "Units:",
                choices  = c("Metric (kg & m)" = 1, "US (lb & in)" = 2),
                selected = 1
            ),
            
            numericInput('mass', 'Weight (kgs or lbs)', 70, min = 20, max = 400, step = 0.5),
            numericInput('height', 'Height (meters or inches)', 1, min = 0, max = 8, step = 0.1),
            
            
            submitButton('Calculate my BMI')
        ),
        mainPanel(
            h3('Calculated BMI'),
            h4('Your BMI is '),
            verbatimTextOutput("prediction")
            
            
        )
    )
)


