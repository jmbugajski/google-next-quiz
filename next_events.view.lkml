view: next_events {
  sql_table_name: bruce.next_events ;;

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }

  dimension: question {
    type: string
    hidden:  yes
    sql: ${TABLE}.question ;;
  }

  dimension: question_type {
    type: string
    sql: ${TABLE}.question.type ;;
  }

  dimension: question_question_id {
    type: string
    sql: ${TABLE}.question.questionId ;;
  }

  dimension: question_question {
    type: string
    sql: ${TABLE}.question.question ;;
  }

  dimension: question_difficulty {
    type: number
    sql: ${TABLE}.question.difficulty ;;
  }

  dimension_group: question_added {
    type: time
    sql: TIMESTAMP_MILLIS(${TABLE}.question.dateAdded) ;;
  }

  dimension: question_choices {
    type: string
    sql: ${TABLE}.question.choices ;;
  }

  dimension_group: page_created {
    type: time
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

  dimension_group: answer_submit {
    type: time
    sql: TIMESTAMP_MILLIS(${TABLE}.answerSubmitDate) ;;
  }

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
