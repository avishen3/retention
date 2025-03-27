view: a_i_journeys_test_march_2025_tbl {
  sql_table_name: `omega-post-184817.crm.aI_journeys_test_march_2025_tbl` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: brand_control {
    type: string
    sql: ${TABLE}.brand_control ;;
  }
  dimension: brans_ai {
    type: string
    sql: ${TABLE}.brans_ai ;;
  }
  dimension: days_to_order {
    type: number
    sql: ${TABLE}.days_to_order ;;
  }
  dimension_group: first_recived_date_ai {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.first_recived_date_ai ;;
  }
  dimension_group: first_recived_date_welcome {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.first_recived_date_welcome ;;
  }
  dimension: group_ai {
    type: string
    sql: ${TABLE}.group_Ai ;;
  }
  dimension: group_ing {
    type: string
    sql: ${TABLE}.group_ing ;;
  }
  dimension: group_v {
    type: string
    sql: ${TABLE}.group_v ;;
  }
  dimension: is_order_after_first_email {
    type: yesno
    sql: ${TABLE}.is_order_after_first_email ;;
    label: "is order after first SMS"
  }
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension: key_ai_attentive {
    type: string
    sql: ${TABLE}.key_ai_attentive ;;
  }
  dimension: key_control_attentive {
    type: string
    sql: ${TABLE}.key_control_attentive ;;
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


  measure: Total_orders {
    type: count_distinct
    sql: ${TABLE}.short_id ;;
    }



}
