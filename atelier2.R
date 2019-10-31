tbl(pg, in_schema("stat", "n_paye_assignation")) %>%
      collect %>%
      setDT(key="code") ->nomen
