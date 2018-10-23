fluidPage(
  
  titlePanel("Wolnosc w 50 stanach"),
  
          mainPanel(tabsetPanel(id="tp",
                        tabPanel("Lista Stanow", tags$hr(), tags$p("Ponizszy wykres przedstawia liste stanow ze wzgledu na poziom wolnosci ogolnej w poszczegolnych latach.Poszczegolnym stanom zostaly przyporzadkowane unikalne wartosc od 1 (Najmniej wolny) do 50 (Najbardziej wolny). Wolnosc ogolna jest wyliczona na podstawie pozostalych wskaznikow wolnosci"), tags$hr(),
                                          fluidRow(column(4, selectInput(inputId="lata", label="Wybierz rok", choices=c("2000", "2006", "2008","2010","2012","2014")))),
                                          plotOutput("Plot1", height="950")),
                        
                        tabPanel("Lista stanow w poszczegolnych grupach", tags$hr(), tags$p("Ponizsze wykresy przedstawiaja wyniki w 5 grupach wyodrebnionych w zaleznosci od stopnia wolnosci."), tags$hr(),
                                 fluidRow(column(4, selectInput(inputId="lata11", label="Wybierz rok", choices=c("2000", "2006", "2008","2010","2012","2014")))),
                                 plotOutput("Plot11",height="550px"),plotOutput("Plot12",height="550px"),plotOutput("Plot13",height="550px"),plotOutput("Plot14",height="550px"),plotOutput("Plot15",height="550px")),
                        
                        tabPanel("Kategorie", tags$hr(), tags$p("Ponizszy wykres przedstawia wyniki dla kazdego z regionow w wybranych aspektach wolnosci"), tags$hr(),
                                          fluidRow(column(4, selectInput(inputId="lata2", label="Wybierz rok", choices=c("2000", "2006", "2008","2010","2012","2014")))),
                                          plotOutput("Plot3"),plotOutput("Plot32"),plotOutput("Plot33"),plotOutput("Plot34")),
                       
                        tabPanel("Mapy", tags$hr(), tags$p("Ponizsze mapy przedstawiaja wyniki wolnosci dla kazdego z stanow w poszczegolnych kategoriach"), tags$hr(),
                                 fluidRow(column(4, selectInput(inputId="lata4", label="Wybierz rok", choices=c("2000", "2006", "2008","2010","2012","2014")))),
                                 plotOutput("Plot4",height="500px", width="750px"), plotOutput("Plot42",height="500px", width="750px"), plotOutput("Plot43",height="500px", width="750px"), plotOutput("Plot44",height="500px", width="750px"),plotOutput("Plot45",height="500px", width="750px")),
                        
                      
                        tabPanel("Dane 2000", dataTableOutput("Tab")),
                        tabPanel("Dane 2006", dataTableOutput("Tab2")),
                        tabPanel("Dane 2008", dataTableOutput("Tab3")),
                        tabPanel("Dane 2010", dataTableOutput("Tab4")),
                        tabPanel("Dane 2012", dataTableOutput("Tab5")),
                        tabPanel("Dane 2014", dataTableOutput("Tab6"))
                        
)))