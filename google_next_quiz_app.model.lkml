connection: "bigquery"
include: "*.view"
include: "*.dashboard"

datagroup: google_next_quiz_app_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google_next_quiz_app_default_datagroup

explore: quiz_events {
  # Repeated nested Object
  join: quiz_events__question {
    view_label:  "Quiz Events: Questions"
    sql:  LEFT JOIN UNNEST(quiz_events__question.choices) as question_choices ;;
    relationship:  one_to_many
  }
}
