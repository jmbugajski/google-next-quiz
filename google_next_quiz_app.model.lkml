connection: "bigquery"
include: "*.view"
include: "*.dashboard"

datagroup: google_next_quiz_app_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google_next_quiz_app_default_datagroup

explore: next_events {}
