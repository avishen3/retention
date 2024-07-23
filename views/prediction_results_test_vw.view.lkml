view: prediction_results_test_vw {
  sql_table_name: `omega-post-184817.Julia.prediction_results_test_vw` ;;

  dimension: actual {
    type: number
    sql: ${TABLE}.actual ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: dataset_type {
    type: string
    sql: ${TABLE}.dataset_type ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }
  dimension: old_pred_refund_rate {
    type: number
    sql: ${TABLE}.old_pred_refund_rate ;;
  }
  dimension: old_pred_refund_rate_1 {
    type: number
    sql: ${TABLE}.old_pred_refund_rate_1 ;;
  }
  dimension: pre_post {
    type: string
    sql: ${TABLE}.pre_post ;;
  }
  dimension: prediction {
    type: number
    sql: ${TABLE}.prediction ;;
  }
  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }
  dimension_group: run {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.run_date ;;
  }

}
