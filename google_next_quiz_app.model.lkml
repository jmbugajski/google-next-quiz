connection: "bigquery"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: google_next_quiz_app_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google_next_quiz_app_default_datagroup

explore: next_events {}

#   joins:
#     - join: next_events__question
#       view_label: "Next Events: Question"
#       sql: LEFT JOIN UNNEST([${next_events.question}]) as next_events__question
#       relationship: one_to_one

# - explore: austin_unemployement

# - explore: bexar_unemployment

# - explore: crude_oil_distillation_capacity_gulf_coast

# - explore: crude_oil_distillation_capacity_us_copy

# - explore: db_by_partner

# - explore: etl_partner_details

# - explore: etl_partner_info

# - explore: houston_unemployment

# - explore: names

# - explore: names2

# - explore: partner_src_dest

# - explore: partners

# - explore: retail_gasoline_prices

# - explore: source_by_partner

# - explore: tech_partners

# - explore: xxx
