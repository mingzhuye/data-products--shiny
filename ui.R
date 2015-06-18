library(shiny)
# Define UI for dataset viewer application
shinyUI(fluidPage(
#Application Title
        titlePanel("Choose General Infomation about the Dataset You Want"),
        sidebarLayout(
                sidebarPanel(
                        textInput("caption", "Dataset Caption:", "Data Summary"),
                        
                        helpText(" Hint: just name what you want and then a caption on the right panel will show up."),
                        
                        selectInput("dataset", "Choose a dataset:", 
                                    choices = c("airquality", "iris", "mtcars", "swiss")),
                        
                        helpText(" Hint: we've already learned about this four datasets many times from this 
                                        Data Scientist Specialization. 
                                        Just choose one of the datasets and then review it."),
                        
                        sliderInput("slider1", label = h4("Number of observations to view:"), min = 0, 
                                    max = 30, value = 10),
                        
                        helpText(" Hint: choose number of observations. While the data view will show only the specified",
                                 "number of observations, the summary will still be based",
                                 "on the full dataset."),
                        
                        submitButton("Update View")
                ),
                mainPanel(
                       
                        h1(textOutput("caption", container = span)),
                        h4("Data Summary"),
                        verbatimTextOutput("summary"),
                        
                        h4("Observations"),
                        tableOutput("view")
                )
        )
  
        
))        