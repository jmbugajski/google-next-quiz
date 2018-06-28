view: next_events {
  sql_table_name: bruce.next_events ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension_group: answer_submit {
    type: time
    sql: TIMESTAMP_MILLIS(${TABLE}.answerSubmitDate) ;;
  }

  dimension: is_answer_correct {
    type: yesno
    sql: ${TABLE}.isAnswerCorrect ;;
  }

  dimension_group: page_created {
    type: time
    sql: TIMESTAMP_MILLIS(${TABLE}.pageCreatedDate) ;;
  }

  dimension: question_id {
    type: number
    sql: ${TABLE}.questionId ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }

  dimension: question_choices {
    type: string
    sql: ${TABLE}.question.choices ;;
  }

  dimension_group: question_added {
    type: time
    sql: TIMESTAMP_MILLIS(${TABLE}.question.dateAdded) ;;
  }

  dimension: question_difficulty {
    type: number
    sql: ${TABLE}.question.difficulty ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question.question ;;
  }

  dimension: question_type {
    type: string
    sql: ${TABLE}.question.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
