# Install CRAN packages
install.packages(c(
  "tidyverse", "palmerpenguins", "here", "janitor", "skimr", "dbplyr",
  "GGally", "naniar", "mice",
  "microbenchmark", "testthat", "profvis", "memoise", "digest",
  "doParallel", "foreach", "furrr",
  "rvest", "data.table", "sqldf",
  "rmarkdown", "tinytex",
  "gt", "gtExtras",
  "ggbeeswarm", "gghighlight", "ggh4x", "ggpubr", "png", "ggdensity",
  "ggdist", "ggbump", "ggtext", "ggalt", "ggridges", "geomtextpath",
  "colorBlindness", "patchwork",
  "shiny", "bslib",
  "gitcreds", "usethis", "devtools"
))

# Install the remotes package if not already installed
install.packages("remotes")

# Install dataxray from the correct GitHub repository
remotes::install_github("agstn/dataxray")

pkgs <- c(
  "tidyverse", "palmerpenguins", "here", "janitor", "skimr", "dbplyr",
  "GGally", "naniar", "mice",
  "microbenchmark", "testthat", "profvis", "memoise", "digest",
  "doParallel", "foreach", "furrr",
  "rvest", "data.table", "sqldf",
  "rmarkdown", "tinytex",
  "gt", "gtExtras",
  "ggbeeswarm", "gghighlight", "ggh4x", "ggpubr", "png", "ggdensity",
  "ggdist", "ggbump", "ggtext", "ggalt", "ggridges", "geomtextpath",
  "colorBlindness", "patchwork",
  "shiny", "bslib",
  "gitcreds", "usethis", "devtools", "remotes",
  "dataxray"
)


# Verify pkgs are loadable
not_found <- pkgs[!sapply(pkgs, requireNamespace, quietly = TRUE)]
if (length(not_found) > 0) {
  message("Packages not installed or not loadable: ", paste(not_found, collapse = ", "))
} else {
  message("All packages successfully installed and loadable.")
}


