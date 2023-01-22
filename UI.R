#The packages we need to run the app
library(shiny)
library(ggplot2)

#The ui
ui <- fluidPage(
  
# The app title ----
titlePanel( 
  strong("Airline Safety from 1985 to 2014")),

# Fluidrow for the choosing of the y-axis ----
fluidRow(
  column(width = 12),
 varSelectInput( inputId = "variable_x", label = "Select the x-variable:", airline_safety, selected = "incidents_85_99", width =  1000)
),

# Main panel for displaying  the outputs ----
 mainPanel(
   h1("Data Description and the Interactive Plots"),
   p("The dataset is about 57 airlines and their numbers of incidents, accidents and total deads and divided in data from 1985 to 1999 and from 2000 to 2014."),
   p("The attributes are: Airlines = airline, Available Kilometers Seats per Week = avail_seat_per_week , Incidents = incidents, Fatal Accidents = fatal_accidents , Total Dead People = fatalities, where the first two attributes is the same values for both time of the time peroids."),
   p("Airlines tells about what airline the data is from."),
   p("Available Kilometers Seats per Week tells about how the maximum length the airline could have flown each week."),
   p("Incidents tells about how many incident the airline had in each of the time periods, where no one died"),
   p("Fatal accidents tells about how many accidents the airline had and where 1 or more people died in it"),
   p("Total Dead People tells about how many people died in the Fatal Accidents from each of the time periods."),
   plotOutput("plot1", brush = "plot1_brush", width =  1030, height = 700),
   tableOutput("table")
 )
)