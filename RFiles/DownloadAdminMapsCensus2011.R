# for (num in 2:34)
for (thisrow in row(StateCodes,FALSE))
{
 # for(part in 1:3)
  #{
    
    # url <- 'http://www.censusindia.gov.in/2011census/maps/atlas/01part3.pdf'
    stateprefix <- StateCodes[thisrow,1]
    statename <- StateCodes[thisrow,2]
    statename
    url <- paste('http://www.censusindia.gov.in/2011census/maps/atlas/',stateprefix,'part',1,'.pdf',sep = "")
    
    # localpath <- "./Documents/PLSS/DataDownloaded/Maps/01part3JammuKashmir.pdf"
    localpath <- paste("./Documents/PLSS/DataDownloaded/Maps/",stateprefix,statename,'part',1,'.pdf',sep ="" )
    download.file(url,localpath)
    print(url)
    print(localpath)
    print("next")
  #}
}

for (thisrow in row(sb,FALSE))
{
  # for(part in 1:3)
  #{
  
  # url <- 'http://www.censusindia.gov.in/2011census/maps/atlas/01part3.pdf'
  stateprefix <- sb[thisrow,1]
  statename <- sb[thisrow,2]
  statename
  url <- paste('http://www.censusindia.gov.in/2011census/maps/atlas/',stateprefix,'part',1,'.pdf',sep = "")
  
  # localpath <- "./Documents/PLSS/DataDownloaded/Maps/01part3JammuKashmir.pdf"
  localpath <- paste("./Documents/PLSS/DataDownloaded/Maps/",stateprefix,statename,'part',1,'.pdf',sep ="" )
  download.file(url,localpath)
  print(url)
  print(localpath)
  print("next")
  #}
}

for (thisrow in row(StateCodes,FALSE))
{
  print(thisrow)
  print(StateCodes[thisrow,1])

  print("end")
}
for (thisrow in strsplit("new plf"," ",FALSE))
{
  print(thisrow)
  print("end")
}

