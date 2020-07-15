connection: "marketing"

# include all the views
include: "/views/**/*.view"

datagroup:email_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: email_data_default_datagroup

explore: klaviyo_event_data_tbl {
  label: "Klaviyo Data"
}

case_sensitive: no
