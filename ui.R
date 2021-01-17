
library(shiny)

shinyUI(fluidPage(
    titlePanel("Height_Prediction"),
    sidebarLayout(
        sidebarPanel(
            helpText("Prediction of the child's height considering gender and parent's height"),
            helpText("Parameters:"),
            sliderInput(inputId = "inFh",
                        label = "Father's height (cm):",
                        value = 168,
                        min = 110,
                        max = 220,
                        step = 1),
            sliderInput(inputId = "inMh",
                        label = "Mother's height (cm):",
                        value = 155,
                        min = 100,
                        max = 200,
                        step = 1),
            radioButtons(inputId = "inGen",
                         label = "Child's gender: ",
                         choices = c("Female"="female", "Male"="male"),
                         inline = TRUE)
        ),
        
        mainPanel(
            htmlOutput("pText"),
            htmlOutput("pred"),
            plotOutput("Plot", width = "50%")
        )
    )
))