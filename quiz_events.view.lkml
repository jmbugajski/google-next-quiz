view: quiz_events {
  sql_table_name: mdp-next18.raw.events ;;

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }

  dimension_group: page_created {
    type: time
    timeframes: [time, date, week, month, day_of_week, hour_of_day]
    sql: TIMESTAMP_MILLIS(${TABLE}.pageCreatedDate) ;;
  }

  dimension: is_answer_correct {
    type: yesno
    sql: ${TABLE}.isAnswerCorrect ;;
  }

  dimension: question_id {
    type: number
    sql: ${TABLE}.questionId ;;
  }

  dimension_group: answer_submitted {
    type: time
    timeframes: [time, date, week, month, day_of_week, hour_of_day]
    sql: TIMESTAMP_MILLIS(${TABLE}.answerSubmitDate) ;;
  }

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: question {
    hidden: yes
    sql: ${TABLE}.question ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: quiz_events__question {
  sql_table_name: mdp-next18.raw.events ;;

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: question_id {
    type: number
    sql: ${TABLE}.questionId ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: difficulty {
    type: number
    sql: ${TABLE}.difficulty ;;
  }

  dimension_group: date_added {
    type: time
    timeframes: [time, date, week, month, day_of_week, hour_of_day]
    sql: TIMESTAMP_MILLIS(${TABLE}.dateAdded) ;;
  }

  dimension: choices {
    type: string
    sql: ${TABLE}.choices ;;
  }

}
