
<!-- README.md is generated from README.Rmd. Please edit that file -->

# openappr

<!-- badges: start -->

[![R-CMD-check](https://github.com/IDEMSInternational/openappr/workflows/R-CMD-check/badge.svg)](https://github.com/IDEMSInternational/openappr/actions)
[![Codecov test
coverage](https://codecov.io/gh/IDEMSInternational/openappr/branch/main/graph/badge.svg)](https://app.codecov.io/gh/IDEMSInternational/openappr?branch=main)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-green.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![CRAN
status](https://www.r-pkg.org/badges/version/openappr)](https://CRAN.R-project.org/package=openappr)
[![license](https://img.shields.io/badge/license-LGPL%20(%3E=%203)-lightgrey.svg)](https://www.gnu.org/licenses/lgpl-3.0.en.html)
<!-- badges: end -->

The goal of `openappr` is to import app data from OpenAppBuilder.

## Installation

You can install the development version of openappr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("IDEMSInternational/openappr")
```

## About `openappr`

The use of `openappr` begins by establishing a connection to
‘OpenAppBuilder’. This can be achieved using the `get_app_connection()`
function, which is simply a wrapper to the `dbconnect` function from the
`DBI` package. By using the `get_app_connection()` function, the
connection is stored in the package environment, ensuring that
subsequent calls to retrieve the app data uses this connection.

The primary functionality of `openappr` revolves around two main types
of data retrieval:

- Notification Data: Users can retrieve notification-related data using
  the function `get_nf_data()`. This function is optimised for quick
  access to notifications generated by the system, structured to provide
  immediate insights into user engagement and system performance.

- User Data: The function `get_user_data()` is designed to access
  detailed information about users. This is particularly useful for
  analysis that requires a deep dive into user behaviour and
  demographics.

Both functions utilise the underlying capabilities of the `RPostgres`
package but are tailored to provide a more user-friendly interface that
requires minimal SQL knowledge.

## Example

This is a basic example which shows you how can import notification and
user data from open-app builder into R:

``` r
# Before retrieving data, you must establish a connection to your OpenAppBuilder (PostgreSQL) database using the `set_app_connection()` function:

openappr::set_app_connection(
  dbname = "vmc",
  host = "apps-server.idems.international",
  port = 5432,
  user = "vmc",
  password = "LSQkyYg5KzL747"
)

# Once the connection is established, you can retrieve it at any time using the get_app_connection() function:

con <- get_app_connection()

# For specific user data, use the `get_user_data()` function:

valid_ids <- c("3e68fcda-d4cd-400e-8b12-6ddfabced348", "223925c7-443a-411c-aa2a-a394f991dd52")
data_filtered_notifications <- get_openapp_data(
  name = "app_users",
  filter = TRUE,
  filter_variable = "app_user_id",
  filter_variable_value = valid_ids
)

# Similarly, the `get_nf_data()` function allows you to retrieve and process notification interaction data:

filtered_notification_data <- get_nf_data(
  filter = TRUE,
  filter_variable = "Country",
  filter_variable_value = "USA"
)
```

## Conclusion

The `openappr` package provides a convenient way to connect to
OpenAppBuilder and retrieve data, customise your queries, and filter to
suit your data needs.
