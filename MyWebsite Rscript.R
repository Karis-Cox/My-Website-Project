#Install necessary packages

install.packages("distill")
install.packages("rmarkdown")
install.packages("postcards")

#Check Website Version

packageVersion("distill")
packageVersion("rmarkdown")
packageVersion("postcards")

# Run libraries
library(postcards)
library(distill)
library(rmarkdown)

create_website(dir = ".", title = "mfeo", gh_pages = TRUE)

#Create a new postcard 
# future name of rmd file

create_postcard(file = "MyWebsite.Rmd")

#Adding custom theme

create_theme("postcards")

create_post("welcome")

file.edit("blog.Rmd")