library(stringr)

#Create directories if necessary

if(!dir.exists("Results")) {
  dir.create("Results")
}

if(!dir.exists("Dictionaries")) {
  dir.create("Dictionaries")
}

if(!dir.exists("Data to Anon")) {
  dir.create("Data to Anon")
}

#Get dictionaries

dictionaries<-paste(
  getwd(),
  "/Dictionaries/",
  list.files(
    path =  "./Dictionaries/",
    pattern="*.txt"
  ),
  sep=""
)

mydictionaries <- lapply(
  dictionaries,
  function(x){
    read.csv(
      x,
      header=FALSE,
      sep=";",
      quote = ""
    )
  }
)

old_code<-mydictionaries[[1]][,1]
new_code<-mydictionaries[[1]][,2]

#Get data

data_names <- list.files(
  path =  "./Data to Anon/",
  pattern="*.csv"
)

data_dir<-paste(
  getwd(),
  "/Data to Anon/",
  data_names,sep=""
)

myfiles <- lapply(
  data_dir,
  function(x){
    read.delim(
      x,
      quote=""
    )
  }
)

names(myfiles)<-data_names

#Init Vars

list<-list()

k=0

#Loop

for (i in myfiles) {
  
  k=k+1
  
  results<-data.frame(
    apply(
      i,
      2,
      function(x){
        str_replace_all(
          x,
          setNames(
            new_code,
            old_code
          )
        )
      }
    )
  )
  
  list[[k]]<-results
  
  write.table(
    list[[k]],
    paste(
      getwd(),
      "/Results/",
      names(myfiles)[k],
      sep=""
    ),
    sep = "\t",
    row.names=FALSE,
    quote = FALSE
  )
  
}








