view: events {

  sql_table_name: bruce.next_events ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension_group: answer_submit_date {
    type: time
    timeframes: [time, date, week, month, day_of_week, hour_of_day]
    sql: ${TABLE}.answerSubmitDate ;;
  }

  dimension: is_answer_correct {
    type: yesno
    sql: ${TABLE}.isAnswerCorrect ;;
  }

  dimension_group: page_created_date {
    type: time
    timeframes: [time, date, week, month, day_of_week, hour_of_day]
    sql: ${TABLE}.pageCreatedDate ;;
  }

  dimension: question_id {
    type: string
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

  dimension_group: question_date_added {
    type: time
    timeframes: [time, date, week, month, day_of_week, hour_of_day]
    sql: ${TABLE}.question.dateAdded ;;
  }

  dimension: question_difficulty {
    type: number
    sql: ${TABLE}.question.difficulty ;;
  }

  dimension: question_question {
    type: string
    sql: ${TABLE}.question.question ;;
  }

  dimension: question.questionId {
    type: string
    sql: ${TABLE}.question.questionId ;;
  }

  dimension: question_type {
    type: string
    sql: ${TABLE}.question.type ;;
  }

}
