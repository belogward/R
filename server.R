function(input, output) {

    output$Plot1 <- renderPlot({
    dane <- switch(input$lata, "2000"=d2000,  "2006"=d2006, "2008"=d2008,  "2010"=d2010,  "2012"=d2012, "2014"=d2014)
    par(mar = c(5, 10, 5, 2))
    barplot(height=rbind(dane$ofrank),
            horiz=TRUE, names.arg=dane$State,las=2,
            xlim=c(1,50), main="Lista stanow", col=c('light blue'))
  })
    
    output$Plot11 <- renderPlot({
      dane0 <- switch(input$lata11, "2000"=d2000,  "2006"=d2006, "2008"=d2008,  "2010"=d2010,  "2012"=d2012, "2014"=d2014)
      par(mar = c(5, 10, 5, 2))
      barplot(height=rbind(as.vector(dane0$ofrank[which(dane0$Grade=='Najmniej wolny')])),
              horiz=TRUE, names.arg=as.vector(dane0$State[which(dane0$Grade=='Najmniej wolny')]),las=2,
              ,main="Lista stanow zakwalifikowanych do grupy najmniej wolnych", col=c('red'))
    })
    output$Plot12 <- renderPlot({
      dane0 <- switch(input$lata11, "2000"=d2000,  "2006"=d2006, "2008"=d2008,  "2010"=d2010,  "2012"=d2012, "2014"=d2014)
      par(mar = c(5, 10, 5, 2))
      barplot(height=rbind(as.vector(dane0$ofrank[which(dane0$Grade=='Malo wolny')])),
              horiz=TRUE, names.arg=as.vector(dane0$State[which(dane0$Grade=='Malo wolny')]),las=2,
              main="Lista stanow zakwalifikowanych do grupy malo wolnych",xlim = c(10,20), xpd=FALSE,col=c('lightcoral'))
    })
    output$Plot13 <- renderPlot({
      dane0 <- switch(input$lata11, "2000"=d2000,  "2006"=d2006, "2008"=d2008,  "2010"=d2010,  "2012"=d2012, "2014"=d2014)
      par(mar = c(5, 10, 5, 2))
      barplot(height=rbind(as.vector(dane0$ofrank[which(dane0$Grade=='Srednio wolny')])),
              horiz=TRUE, names.arg=as.vector(dane0$State[which(dane0$Grade=='Srednio wolny')]),las=2,
               main="Lista stanow zakwalifikowanych  do grupy srednio wolnych", xlim = c(20,30),xpd=FALSE,col=c('khaki'))
    })
    output$Plot14 <- renderPlot({
      dane0 <- switch(input$lata11, "2000"=d2000,  "2006"=d2006, "2008"=d2008,  "2010"=d2010,  "2012"=d2012, "2014"=d2014)
      par(mar = c(5, 10, 5, 2))
      barplot(height=rbind(as.vector(dane0$ofrank[which(dane0$Grade=='Wolny')])),
              horiz=TRUE, names.arg=as.vector(dane0$State[which(dane0$Grade=='Wolny')]),las=2,
              main="Lista stanow zakwalifikowanych do grupy wolnych",xlim = c(30,40), xpd=FALSE,col=c('lightgreen'))
    })
    output$Plot15 <- renderPlot({
      dane0 <- switch(input$lata11, "2000"=d2000,  "2006"=d2006, "2008"=d2008,  "2010"=d2010,  "2012"=d2012, "2014"=d2014)
      par(mar = c(5, 10, 5, 2))
      barplot(height=rbind(as.vector(dane0$ofrank[which(dane0$Grade=='Najbardziej wolny')])),
              horiz=TRUE, names.arg=as.vector(dane0$State[which(dane0$Grade=='Najbardziej wolny')]),las=2,
               main="Lista stanow zakwalifikowanych do grupy najbardziej wolnych", xpd=FALSE,xlim = c(40,50),col=c('limegreen'))
    })

    
    
    output$Plot3 <- renderPlot({
      dane2 <- switch(input$lata2, "2000"=d2000, "2006"=d2006, "2008"=d2008, "2010"=d2010, "2012"=d2012,  "2014"=d2014)
      par(mar=c(3, 15, 5, 2))
      boxplot(fprank~Region,data=dane2,col='green', main='Polityka fiskalna', horizontal=TRUE, las=1)
    })
    output$Plot32 <- renderPlot({
      dane2 <- switch(input$lata2, "2000"=d2000, "2006"=d2006, "2008"=d2008, "2010"=d2010, "2012"=d2012,  "2014"=d2014)
      par(mar=c(3, 15, 5, 2))
      boxplot(rprank~Region,data=dane2,  col='red', main='Polityka regulacyjna', horizontal=TRUE, las=1)
    })

    output$Plot33 <- renderPlot({
      dane2 <- switch(input$lata2, "2000"=d2000, "2006"=d2006, "2008"=d2008, "2010"=d2010, "2012"=d2012,  "2014"=d2014)
      par(mar=c(3, 15, 5, 2))
      boxplot(pfrank~Region,data=dane2,  col='gold', main='Wolnosc osobista', horizontal=TRUE, las=1)
    })
    output$Plot34 <- renderPlot({
      dane2 <- switch(input$lata2, "2000"=d2000, "2006"=d2006, "2008"=d2008, "2010"=d2010, "2012"=d2012,  "2014"=d2014)
      par(mar=c(3, 15, 5, 2))
      boxplot(efrank~Region,data=dane2,  col='blue', main='Wolnosc ekonomiczna', horizontal=TRUE, las=1)
    })
    
    
    
    output$Plot4 <- renderPlot({
      dane3 <- switch(input$lata4, "2000"=d2000, "2006"=d2006, "2008"=d2008, "2010"=d2010, "2012"=d2012,  "2014"=d2014)
      par(mar=c(3, 15, 5, 2))
            plot_usmap(
        data = dane3, values = "fprank", lines = "blue"
      ) + 
        scale_fill_continuous(
          low = "red", high = "yellow", name = "Polityka fiskalna", label = scales::comma
        ) + 
        labs(title = "Stany ze wzgledu na polityke fiskalna") +
        theme(legend.position = "right")
      
    })
    
    output$Plot42 <- renderPlot({
      dane3 <- switch(input$lata4, "2000"=d2000, "2006"=d2006, "2008"=d2008, "2010"=d2010, "2012"=d2012,  "2014"=d2014)
      par(mar=c(3, 15, 5, 2))
      plot_usmap(
        data = dane3, values = "rprank", lines = "blue"
      ) + 
        scale_fill_continuous(
          low = "red", high = "white", name = "Polityka regulacyjna", label = scales::comma
        ) + 
        labs(title = "Stany ze wzgledu na polityke regulacyjna") +
        theme(legend.position = "right")
      
    })
    
    output$Plot43 <- renderPlot({
      dane3 <- switch(input$lata4, "2000"=d2000, "2006"=d2006, "2008"=d2008, "2010"=d2010, "2012"=d2012,  "2014"=d2014)
      par(mar=c(3, 15, 5, 2))
      plot_usmap(
        data = dane3, values = "pfrank", lines = "blue"
      ) + 
        scale_fill_continuous(
          low = "red", high = "green", name = "Wolnosc osobista", label = scales::comma
        ) + 
        labs(title = "Stany ze wzgledu na wolnosc osobista") +
        theme(legend.position = "right")
      
    })
    output$Plot44 <- renderPlot({
      dane3 <- switch(input$lata4, "2000"=d2000, "2006"=d2006, "2008"=d2008, "2010"=d2010, "2012"=d2012,  "2014"=d2014)
      par(mar=c(3, 15, 5, 2))
      plot_usmap(
        data = dane3, values = "efrank", lines = "blue"
      ) + 
        scale_fill_continuous(
          low = "red", high = "blue", name = "Wolnosc ekonomiczna", label = scales::comma
        ) + 
        labs(title = "Stany ze wzgledu na wolnosc ekonomiczna") +
        theme(legend.position = "right")
      
    })
    output$Plot45 <- renderPlot({
      dane3 <- switch(input$lata4, "2000"=d2000, "2006"=d2006, "2008"=d2008, "2010"=d2010, "2012"=d2012,  "2014"=d2014)
      par(mar=c(3, 15, 5, 2))
      plot_usmap(
        data = dane3, values = "ofrank", lines = "blue"
      ) + 
        scale_fill_continuous(
          low = "red", high = "green", name = "Wolnosc ogolna", label = scales::comma
        ) + 
        labs(title = "Stany ze wzgledu na wolnosc ogolna") +
        theme(legend.position = "right")
      
    })
    
    
    output$Tab <- renderDataTable(data.frame(d2000$State,d2000$fprank,d2000$rprank,d2000$pfrank,d2000$efrank,d2000$ofrank,d2000$Region,d2000$Grade))
    output$Tab2 <- renderDataTable(data.frame(d2006$State,d2006$fprank,d2006$rprank,d2006$pfrank,d2006$efrank,d2006$ofrank,d2006$Region,d2006$Grade))
    output$Tab3 <- renderDataTable(data.frame(d2008$State,d2008$fprank,d2008$rprank,d2008$pfrank,d2008$efrank,d2008$ofrank,d2008$Region,d2008$Grade))
    output$Tab4 <- renderDataTable(data.frame(d2010$State,d2010$fprank,d2010$rprank,d2010$pfrank,d2010$efrank,d2010$ofrank,d2010$Region,d2010$Grade))
    output$Tab5 <- renderDataTable(data.frame(d2012$State,d2012$fprank,d2012$rprank,d2012$pfrank,d2012$efrank,d2012$ofrank,d2012$Region,d2012$Grade))
    output$Tab6 <- renderDataTable(data.frame(d2014$State,d2014$fprank,d2014$rprank,d2014$pfrank,d2014$efrank,d2014$ofrank,d2014$Region,d2014$Grade))
    
    

}
    
    
    