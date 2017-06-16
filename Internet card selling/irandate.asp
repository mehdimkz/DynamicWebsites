

   <html>
 <head>
 <title></title>
  <% Function IranDate()
        Dim iFDay,iFMonth,iFYear,iFDayOfYear
        Dim iYear,iDayOfYear
        Dim iNumDayOfYear
        Dim aiFMonthDays


        aiFMonthDays=Array(31,31,31,31,31,31,30,30,30,30,30,29)
        iNumDayOfYear=365

        iYear=Year(Date)
        iDayOfYear=DatePart("y",Date)

        If IsLeapYear(iYear-1) Then
            iNumDayOfYear=366
            aiFMonthDays(11)=30
         End If


        If(iDayOfYear>79) then
            iFYear=iYear-621
            iFDayOfYear=iDayOfYear-79
        Else
            iFYear=iYear-622
            iFDayOfYear=(iNumDayOfYear-79)+iDayOfYear  
                    
        End If

       
         iFDay=iFDayOfYear
         While(iFDay>aiFMonthDays(iFMonth))
               iFDay=iFDay-aiFMonthDays(iFMonth)
               iFMonth=iFMonth+1
         Wend      
          iFMonth=iFMonth+1
          
          IranDate=iFYear & "/" &iFMonth & "/" &iFDay
      End Function

      Function IsLeapYear(nYear)
 IsLeapYear=(((nYear Mod 4)=0 And (nYear Mod 100)<>0)or (nYear Mod 400)=0)
      End Function

      %>

    </head>  
    </html>    