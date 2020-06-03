view: admin_orders_retention_tbl {
  sql_table_name: retention.admin_orders_retention_tbl ;;
  view_label: "Retention - Orders"

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: days_from_previous_order {
    type: number
    sql: ${TABLE}.days_from_previous_order ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: gift_blankets {
    type: number
    sql: ${TABLE}.gift_blankets ;;
  }

  dimension: gift_mps {
    type: number
    sql: ${TABLE}.gift_MPs ;;
  }

  dimension: gift_pillows {
    type: number
    sql: ${TABLE}.gift_pillows ;;
  }

  dimension: gift_sheets {
    type: number
    sql: ${TABLE}.gift_sheets ;;
  }

  dimension: gross_sales {
    type: number
    sql: ${TABLE}.gross_sales ;;
  }

  dimension: is_repeat_user {
    type: yesno
    sql: ${TABLE}.is_repeat_user ;;
  }

  dimension: is_retention {
    type: yesno
    sql: ${TABLE}.is_retention ;;
  }

  dimension_group: order_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.order_created AS TIMESTAMP) ;;
  }

  dimension: order_index {
    type: number
    sql: ${TABLE}.order_index ;;
  }

  dimension: paid_bedframes {
    type: number
    sql: ${TABLE}.paid_bedframes ;;
  }

  dimension: paid_blankets {
    type: number
    sql: ${TABLE}.paid_blankets ;;
  }

  dimension: paid_furniture {
    type: number
    sql: ${TABLE}.paid_furniture ;;
  }

  dimension: paid_mattresses {
    type: number
    sql: ${TABLE}.paid_mattresses ;;
  }

  dimension: paid_mps {
    type: number
    sql: ${TABLE}.paid_MPs ;;
  }

  dimension: paid_pillows {
    type: number
    sql: ${TABLE}.paid_pillows ;;
  }

  dimension: paid_rugs {
    type: number
    sql: ${TABLE}.paid_rugs ;;
  }

  dimension: paid_sheets {
    type: number
    sql: ${TABLE}.paid_sheets ;;
  }

  dimension_group: previous_order_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.previous_order_ts AS TIMESTAMP) ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: typeform_reported_income {
    type: string
    sql: ${TABLE}.typeform_reported_income ;;
  }

  dimension: typeform_reported_mattress_budget {
    type: string
    sql: ${TABLE}.typeform_reported_mattress_budget ;;
  }

  dimension: typeform_reported_purchase_budget {
    type: string
    sql: ${TABLE}.typeform_reported_purchase_budget ;;
  }

  dimension: typeform_score {
    type: number
    sql: ${TABLE}.typeform_score ;;
  }

  dimension: yotpo_score {
    type: number
    sql: ${TABLE}.yotpo_score ;;
  }

  dimension: yotpo_sentiment {
    type: number
    sql: ${TABLE}.yotpo_sentiment ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
