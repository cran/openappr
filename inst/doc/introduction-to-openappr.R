## ----eval = FALSE-------------------------------------------------------------
#  library(openappr)
#  
#  set_app_connection(
#    dbname = "vmc",
#    host = "apps-server.idems.international",
#    port = 5432,
#    user = "vmc",
#    password = "LSQkyYg5KzL747"
#  )

## ----eval = FALSE-------------------------------------------------------------
#  con <- get_app_connection()

## ----eval = FALSE-------------------------------------------------------------
#  # Retrieve user data filtered by user ID
#  valid_ids <- c("3e68fcda-d4cd-400e-8b12-6ddfabced348", "223925c7-443a-411c-aa2a-a394f991dd52")
#  data_filtered_users <- get_openapp_data(
#    name = "app_users",
#    filter = TRUE,
#    filter_variable = "app_user_id",
#    filter_variable_value = valid_ids
#  )

## ----eval = FALSE-------------------------------------------------------------
#  # Retrieve filtered notification interaction data
#  filtered_notification_data <- get_nf_data(
#    filter = TRUE,
#    filter_variable = "app_user_id",
#    filter_variable_value = valid_ids
#  )

## ----eval = FALSE-------------------------------------------------------------
#  # Retrieve all data from the 'app_users' table
#  data_all_users <- get_openapp_data()
#  
#  # Retrieve filtered data from the 'app_users' table
#  valid_ids <- c("3e68fcda-d4cd-400e-8b12-6ddfabced348", "223925c7-443a-411c-aa2a-a394f991dd52")
#  data_filtered_notifications <- get_openapp_data(
#    name = "app_users",
#    filter = TRUE,
#    filter_variable = "app_user_id",
#    filter_variable_value = valid_ids
#  )

