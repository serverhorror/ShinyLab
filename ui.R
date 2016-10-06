library(shiny)

# Define UI for application that draws a histogram
shinyUI(function(request) {
  fluidPage(# Application title

    tags$head(includeMarkdown("README.md")),

    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
      sidebarPanel(
        # bookmarkButton(),
        sliderInput(
          "bins",
          "Number of bins:",
          min = 1,
          max = 50,
          value = 30
        ),
        sliderInput(
          "histBins",
          "Number of Bins in HistPlot",
          min = 1,
          max = 15,
          value = 8
        )

      ),

      # Show a plot of the generated distribution
      mainPanel(plotOutput("distPlot", click = "plot_click"),
                plotOutput("histPlot"))
    ))
})
