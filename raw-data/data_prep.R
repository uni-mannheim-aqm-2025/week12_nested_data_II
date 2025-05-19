
load("raw-data/ward_macro_week11.Rdata")
cl <- read.csv2("raw-data/country_level_dta.csv")


matching_ids <- match(dta$country,
                      cl$country)

dta$c_parliamentary <- cl$parliamentary[matching_ids]
dta$c_unitary <- cl$unitary[matching_ids]
dta$c_bicameral <- cl$bicameral[matching_ids]

save(dta, file = "raw-data/ward_macro_week12.Rdata")

