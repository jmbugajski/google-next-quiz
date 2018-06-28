view: next_events {
  sql_table_name: bruce.next_events ;;

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }

  dimension: question {
    group_label: "Questions"
    type: string
    hidden:  yes
    sql: ${TABLE}.question ;;
  }

  dimension: question_type {
    group_label: "Questions"
    type: string
    sql: ${TABLE}.question.type ;;
  }

  dimension: question_question_id {
    group_label: "Questions"
    type: number
    sql: ${TABLE}.question.questionId ;;
  }

  dimension: question_question {
    group_label: "Questions"
    type: string
    sql: ${TABLE}.question.question ;;
  }

  dimension: question_difficulty {
    group_label: "Questions"
    type: number
    sql: ${TABLE}.question.difficulty ;;
  }

  dimension_group: question_added {
    type: time
    sql: TIMESTAMP_MILLIS(${TABLE}.question.dateAdded) ;;
  }

  dimension: question_choices {
    group_label: "Questions"
    type: string
    sql: ${TABLE}.question.choices ;;
  }

  dimension_group: page_created {
    type: time
    sql: TIMESTAMP_MILLIS(${TABLE}.pageCreatedDate) ;;
  }

  dimension: is_answer_correct {
    group_label: "Answers"
    type: yesno
    sql: ${TABLE}.isAnswerCorrect ;;
  }

  dimension: answered_question_id {
    group_label:  "Answers"
    type: number
    sql: ${TABLE}.questionId ;;
  }

  dimension_group: answer_submitted {
    type: time
    sql: TIMESTAMP_MILLIS(${TABLE}.answerSubmitDate) ;;
  }

  dimension: answer {
    group_label: "Answers"
    type: string
    sql: ${TABLE}.answer ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
