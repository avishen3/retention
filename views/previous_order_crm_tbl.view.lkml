view: previous_order_crm_tbl {
  sql_table_name: `omega-post-184817.crm_new.previous_order_crm_tbl` ;;

  dimension: ad_type {
    type: string
    sql: ${TABLE}.ad_type ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
  }
  dimension: cta {
    type: string
    sql: ${TABLE}.cta ;;
  }
  dimension: current_marketing_campaign {
    type: string
    sql: ${TABLE}.current_marketing_campaign ;;
  }
  dimension: current_marketing_source {
    type: string
    sql: ${TABLE}.current_marketing_source ;;
  }
  dimension_group: current_order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.current_order_created ;;
  }
  dimension: current_short_id {
    type: string
    sql: ${TABLE}.current_short_id ;;
  }
  dimension: current_status {
    type: string
    sql: ${TABLE}.current_status ;;
  }
  dimension: customer_key {
    type: string
    sql: ${TABLE}.customer_key ;;
  }
  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }
  dimension: days_between_orders {
    type: number
    sql: ${TABLE}.days_between_orders ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: landing_page {
    type: string
    sql: ${TABLE}.landing_page ;;
  }
  dimension: launch_date {
    type: string
    sql: ${TABLE}.launch_date ;;
  }
  dimension: length {
    type: string
    sql: ${TABLE}.length ;;
  }
  dimension: offer {
    type: string
    sql: ${TABLE}.offer ;;
  }
  dimension: previous_marketing_campaign {
    type: string
    sql: ${TABLE}.previous_marketing_campaign ;;
  }
  dimension: previous_marketing_source {
    type: string
    sql: ${TABLE}.previous_marketing_source ;;
  }
  dimension_group: previous_order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.previous_order_created ;;
  }
  dimension: previous_short_id {
    type: string
    sql: ${TABLE}.previous_short_id ;;
  }
  dimension: previous_status {
    type: string
    sql: ${TABLE}.previous_status ;;
  }
  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }
  dimension: sender {
    type: string
    sql: ${TABLE}.sender ;;
  }
  dimension: sms_number {
    type: string
    sql: ${TABLE}.sms_number ;;
  }
  dimension: subflow {
    type: string
    sql: ${TABLE}.subflow ;;
  }
  dimension: subtype {
    type: string
    sql: ${TABLE}.subtype ;;
  }
  dimension: test {
    type: string
    sql: ${TABLE}.test ;;
  }
  dimension: theme {
    type: string
    sql: ${TABLE}.theme ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: variant {
    type: string
    sql: ${TABLE}.variant ;;
  }
  dimension: week {
    type: string
    sql: ${TABLE}.week ;;
  }
  dimension: wild_card {
    type: string
    sql: ${TABLE}.wildCard ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
