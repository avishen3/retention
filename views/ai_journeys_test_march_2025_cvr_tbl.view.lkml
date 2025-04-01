view: ai_journeys_test_march_2025_cvr_tbl {
  sql_table_name: `omega-post-184817.crm.AI_Journeys_Test_March_2025_CVR_tbl` ;;

  dimension: admin_key {
    type: string
    sql: ${TABLE}.admin_key ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: brand_admin {
    type: string
    sql: ${TABLE}.brand_admin ;;
  }
  dimension_group: first_lead_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.first_lead_created ;;
  }
  dimension_group: first_recived_date_ai {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.first_recived_date_ai ;;
  }
  dimension: group_ing {
    type: string
    sql: ${TABLE}.group_ing ;;
  }
  dimension: is_order_placed {
    type: number
    sql: ${TABLE}.is_order_placed ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension: marketing_campaign {
    type: string
    sql: ${TABLE}.marketing_campaign ;;
  }
  dimension: marketing_campaign_name {
    type: string
    sql: ${TABLE}.marketing_campaign_name ;;
  }
  dimension: marketing_platform {
    type: string
    sql: ${TABLE}.marketing_platform ;;
  }
  dimension: marketing_source {
    type: string
    sql: ${TABLE}.marketing_source ;;
  }
  dimension_group: order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created ;;
  }
  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }
  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
  }
  measure: count {
    type: count
    drill_fields: [marketing_campaign_name]
  }


  measure: total_user {
    type: count_distinct
  sql:  ${key} ;;
  }

  measure: count_dis_short_id {
    type: count_distinct
    sql:  ${short_id} ;;
  }

  measure: Total_orders {
    type: sum
    sql:  ${is_order_placed} ;;
  }

  measure: CVR {
    type: number
    sql:  ${count_dis_short_id}/${total_user} ;;
    value_format: "0.0%"
  }

  measure: Total_price {
    type: sum
    sql:  ${price} ;;
    value_format: "#,##0"
  }

  measure: Total_tax {
    type: sum
    sql:  ${tax} ;;
    value_format: "#,##0"
  }

  measure: Total_revenue{
    type: sum
    sql:  ${price}-${tax} ;;
    value_format: "#,##0"
  }

}
