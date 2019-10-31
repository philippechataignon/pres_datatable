data.table::fread("~/temp/extrait.csv", sep=";") -> chcarr
chcarr[,.N,cpostat_code]
options(datatable.print.topn = 10)
library(dplyr)
w1 <- as_tibble(chcarr)
w1
w2 <- as_data_frame(chcarr)
w2
w2 <- data.frame(chcarr)
w2
chcarr[pers_id==15051, pers_id]
chcarr[pers_id==15051, cpostat_code]
chcarr[pers_id==15051, cpostat_code]
class(chcarr[pers_id==15051, cpostat_code])
class(chcarr[pers_id==15051, list(pers_id, cpostat_code)])
chcarr[pers_id==15051, list(pers_id, cpostat_code)]
chcarr[pers_id==15051, list(cpostat_code)]
chcarr[pers_id==15051, list(pers_id, cpostat_code)]
chcarr[pers_id==15051, list(pers_id, cpostat_code)]
chcarr[pers_id==15051, c("pers_id", "cpostat_code")]
chcarr[pers_id==15051, c("pers_id", "cpostat_code")]
chcarr[pers_id==15051, list(pers_id, cpostat_code)]
chcarr[pers_id==15051, -cpostat_code]
chcarr[pers_id==15051, -c("cpostat_code")]
chcarr[pers_id==15051, list(-pers_id, -cpostat_code)]
chcarr[pers_id==15051, -list(pers_id, cpostat_code)]
chcarr[pers_id==15051, -c("pers_id", "cpostat_code")]
chcarr[pers_id==15051, list(pers_id, cpostat_code)]
chcarr[pers_id==15051, .(pers_id, cpostat_code)]
chcarr[pers_id==15051, .(cpostat_code)]
chcarr[pers_id==15051, cpostat_code]
chcarr[pers_id==15051, cpostat_code]
chcarr[pers_id==15051, .(cpostat_code)]
chcarr[pers_id==15051, "cpostat_code"]
chcarr[pers_id==15051, .(cpostat_code)]
chcarr[pers_id==15051]$cpostat_code
chcarr[pers_id==15051, .(cpostat_code)]
chcarr[,    nouvelle   := "toto"]
chcarr[cpostat_code == "ACI00", nouvelle := "titi"]
chcarr[cpostat_code == "ACI00", nouvelle2 := 1]
chcarr[grepl("^ACI", cpostat_code), ind_aci := 1]
chcarr[grepl("^ACI", cpostat_code), `:=`(ind_aci = 1, autre = "toto")]
chcarr[grepl("^ACI", cpostat_code), c("ind_aci5", "autre5") := .(1, "toto")]
chcarr[quotitw != 100]
chcarr[, nouvelle := NULL]
chcarr[, .(cpostat_code)]
chcarr[, .(pos = cpostat_code)]
chcarr[, .(ind_aci = grepl("^ACI", cpostat_code))]
chcarr[, .(pers_id, ind_aci = grepl("^ACI", cpostat_code))]
chcarr[pers_id == 15051, .(pers_id, ind_aci = grepl("^ACI", cpostat_code))]
n1 <- chcarr[pers_id == 15051, .(pers_id, ind_aci = grepl("^ACI", cpostat_code))]
chcarr
class(n1)
n1
chcarr[grepl("^ACI", cpostat_code), c("ind_aci5", "autre5") := .(1, "toto")]
chcarr
chcarr
chcarr[, .N]
nrow(chcarr)
chcarr
chcarr[, .N, by=cpostat_code]
chcarr[, .N]
chcarr[, .(.N)]
chcarr[, .N]
chcarr[, .N, by=cpostat_code]
chcarr[, .N, by=cpostat_code][order(N)]
chcarr[, .N, by=cpostat_code][-order(N)]
chcarr[, .N, by=cpostat_code][order(-N)]
chcarr[, .N, by=.(cpostat_code)][order(-N)]
chcarr[, .N, by=.(cpostat_code, cmodser_code)][order(-N)]
print(chcarr[, .N, by=.(cpostat_code, cmodser_code)][order(-N)], topn=250)
print(chcarr[, .N, by=.(cpostat_code, cmodser_code)][order(cpostat_code)], topn=250)
print(chcarr[, .N, by=.(cpostat_code, cmodser_code)][order(cpostat_code, cmodser_code)], topn=250)
order(chcarr$cpostat_code)
chcarr[, .(moyquotitw = mean(quotitw)), by=cpostat_code]
chcarr[, .(moyquotitw = mean(quotitw)), by=cpostat_code][order(cpostat_code)]
chcarr[, .(nb = .N), by=cpostat_code]
chcarr[, .(nb = .N/nrow(chcarr)), by=cpostat_code]
chcarr[, .(part = .N/nrow(chcarr)), by=cpostat_code]
chcarr[, .(part = .N/nrow(chcarr)), by=cpostat_code]
chcarr[, .(part = .N/nrow(chcarr)), by=cpostat_code]
options(scipen=15)
chcarr[, .(part = .N/nrow(chcarr)), by=cpostat_code]
chcarr[, .(part = .N/nrow(chcarr)*100), by=cpostat_code]
w1 <- chcarr[, .(nb = .N), by=cpostat_code]
w1
w1[, part := nb / .N]
w1
w1[, part := nb / sum(nb)]
w1
source('~/.active-rstudio-document', echo=TRUE)
chcarr[, .(moyquotitw = mean(quotitw)), by=cpostat_code][order(cpostat_code)]
chcarr
setkey(chcarr, pers_id, date_deb, date_fin)
chcarr
library(data.table)
setkey(chcarr, pers_id, date_deb, date_fin)
chcarr
key(chcarr)
key(w1)
w1
key(chcarr)
chcarr
chcarr[pers_id==21080251]
chcarr[.(21080251)]
chcarr
chcarr[.(14951)]
chcarr[.(14951, "1989-01-01")]
chcarr[.(14951, "2089-01-01")]
chcarr[.(14951, "2089-01-01"), nomatch=NULL]
chcarr[.(14951, "2089-01-01"), nomatch=NA]
chcarr[.(14951, "2089-01-01"), nomatch=NULL]
chcarr[.(14951, "2089-01-01"), nomatch=NA]
chcarr[.(14951, "2089-01-01"), nomatch=NA]$date_deb
chcarr[.(14951)]
chcarr[.(14951)]
chcarr[.(14951), mult="first"]
chcarr[.(14951), mult="last"]
chcarr[.(14951), mult="ll"]
chcarr[.(14951), mult="all"]
chcarr[.(14951), mult="last"]
chcarr[.(14951), mult="last"]
chcarr[.(14951), mult="last"]$date_fin
unique(chcarr[, "pers_id"])
unique(chcarr[, pers_id])
unique(chcarr[, "pers_id"])
unique(chcarr, by=pers_id)
unique(chcarr, by="pers_id")
unique(chcarr[, "pers_id"])
ids <- unique(chcarr[, "pers_id"])
ids
chcarr[.(14951), mult="last"]
chcarr[ids, mult="last"]
ids
chcarr[.(14951), mult="last"]
ids
chcarr[, mult="last"]
chcarr
ids
setnames(ids, "pers_id", "dossieridentification_id")
ids
chcarr[ids, mult="last"]
ids
chcarr[ids, mult="last"]
setnames(ids, "dossieridentification_id", "pers_id")
ids
ids[, date_deb:="1989-01-01"]
ids
chcarr[ids, mult="last"]
key(chcarr)
chcarr[(ids), mult="last"]
chcarr[ids]
chcarr[ids, on=c("pers_id", "date_deb")]
chcarr[ids, on=c("pers_id", "date_deb")]
chcarr[ids, on=c("pers_id", "date_deb"), nomatch=NULL]
chcarr[ids, on=c("pers_id", "date_deb"), nomatch=NULL]
chcarr[!ids, on=c("pers_id", "date_deb"), nomatch=NULL]
chcarr[!ids, on=c("pers_id", "date_deb")]
chcarr[!ids, on=c("pers_id", "date_deb")]
chcarr[!ids, on=c("pers_id", "date_deb")][1:25]
chcarr[ids, mult="last"]
libname(sre)
library(sre)
pg <- postgres()
db_list(pg)
library(dplyr)
library(dbplyr)
tbl(pg, in_schema("stat", "n_paye_assignation")
)
tbl(pg, in_schema("stat", "n_paye_assignation")
)
source('~/.active-rstudio-document', echo=TRUE)
source('~/.active-rstudio-document', echo=TRUE)
nomen
key(nomen)
key(nomen)
nomen
nomen["059"]$lib
nomen["059"]
nomen["059"]$lib
ex1 <- data.table(dep=c("059", "059", "02A", "075", "089"))
ex1
ex1[, lib := nomen[dep]$lib]
ex1
nomen[ex1]
nomen
nomen2 <- rbind(nomen, data.table(code="059", lib="LILLE"))
nomen2
setkey(nomen2, code)
nomen2
ex1[, lib := nomen2[dep]$lib]
ex1
nomen2[dep]$lib
nomen2[ex1$dep]$lib
nomen2[ex1$dep]
ex1
ex1[, lib := nomen2[dep, mult="first"]$lib]
ex1
ex1[, lib := nomen2[dep, mult="last"]$lib]
ex1
ex1[, lib := nomen2[dep, mult="first"]$lib]
ex1[, lib := nomen2[dep, mult="first"]$lib]
fread("~/temp/chcarr.csv") -> chcarr
fread("~/temp/chcarr.csv.gz") -> chcarr
chcarr
chcarr[,.N,cpostat_code]
ids <- unique(chcarr[, "pers_id"])
ids
chcarr[ids, mult="last"]
setkey(chcarr, pers_id, date_deb, date_fin)
chcarr[ids, mult="last"]
chcarr[,.N,pers_id][,.N,N]
w1 <- chcarr[ids, mult="last"]
w1[,.N,pers_id][,.N,N]
w1[,.N,pers_id][,.N,N]
w1[,.N,pers_id]
w1[,.N,pers_id][,.N,N]
chcarr[,.N,pers_id][,.N,N]
chcarr[,.N,pers_id][N==508]
chcarr[,.N,pers_id][N==508]
chcarr[chcarr[,.N,pers_id][N==508]]
chcarr[,.N,pers_id][order(N)]
chcarr[chcarr[,.N,pers_id][N==1232]]
chcarr[chcarr[,.N,pers_id][N==1232]]
fwrite(chcarr[pers_id %% 10 == 1], "~/temp/pipo.csv.gz", sep=";")
