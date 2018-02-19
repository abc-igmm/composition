library(knitr)

knit2pdf("supp.Rnw",
         envir = new.env(),
         output = "../out/supp.pdf")
