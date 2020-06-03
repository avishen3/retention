connection: "marketing"

# include all the views
include: "/views/**/*.view"

datagroup:retention_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: retention_data_default_datagroup

explore: admin_orders_retention_tbl {
  label: "Retention - Orders"
}

case_sensitive: no
