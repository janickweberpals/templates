# flextable defaults
flextable_default <- function(data = NULL, # df, tibble or table1 object
                              ...){
  
  arguments <- list(...)
  
  if(any(class(data) %in% "matrix")){ # for tableone objects
    
    data_in <- data %>% 
      as.data.frame() %>% 
      tibble::rownames_to_column(var = "Characteristics") %>% 
      dplyr::mutate(Characteristics = stringr::str_remove_all(Characteristics, " \\(median \\[IQR\\]\\)"))
    
    indent_vec <- which(str_detect(data_in$Characteristics, "   "))

    
  }else{
    
    data_in <- data
    
  }
  
  table_out <- data_in %>%
    dplyr::rename_with(function(x) tools::toTitleCase(x), .cols = tidyselect::everything()) %>% 
    flextable::flextable() %>% 
    flextable::autofit() %>% 
    flextable::bold(part = "header") %>% 
    flextable::height(height = 0.1, part = "body") %>% 
    flextable::align(part = "all", align = "left")
  
  if(exists("indent_vec")){
    
    table_out <- table_out %>% 
      flextable::padding(i=indent_vec, j=1, padding.left=20)
    
  }
  
  return(table_out)
  
}
