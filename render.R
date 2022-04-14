# render markdown files

# render scholarship script
path_in <- here::here("scripts", "scholarship.Rmd")

# report of scholarship (html version)
rmarkdown::render(input = path_in, output_dir = here::here(), output_file = "index", output_format = "html_document")

# .docx version (not really used but useful to have)
# rmarkdown::render(input = path_in, output_dir = here::here("output"), output_format = "word_document")