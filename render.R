# render markdown files

# render main script
path_in <- here::here("main.Rmd")

# report as index file (html version), ready for publishing
rmarkdown::render(input = path_in, output_dir = here::here(), output_file = "index", output_format = "html_document")