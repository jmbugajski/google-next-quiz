view: next_events {
  sql_table_name: bruce.next_events ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: answer_submit_date {
    type: number
    sql: ${TABLE}.answerSubmitDate ;;
  }

  dimension: is_answer_correct {
    type: yesno
    sql: ${TABLE}.isAnswerCorrect ;;
  }

  dimension: page_created_date {
    type: number
    sql: ${TABLE}.pageCreatedDate ;;
  }

  dimension: question {
    hidden: yes
    sql: ${TABLE}.question ;;
  }

  dimension: question_id {
    type: number
    sql: ${TABLE}.questionId ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: next_events__question {
  dimension: choices {
    type: string
    sql: ${TABLE}.choices ;;
  }

  dimension: date_added {
    type: number
    sql: ${TABLE}.dateAdded ;;
  }

  dimension: difficulty {
    type: number
    sql: ${TABLE}.difficulty ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: question_id {
    type: number
    sql: ${TABLE}.questionId ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}
