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


# Hidden dimension to control the sort order of the cohorts.
# This ensures they appear logically in charts and tables.
  dimension: cohort_days_between_orders_sort_order {
    type: number
    hidden: yes
    sql:
    CASE
      WHEN ${days_between_orders} = 0  THEN 1
      WHEN ${days_between_orders} = 1  THEN 2
      WHEN ${days_between_orders} BETWEEN 2 AND 7 THEN 3
      WHEN ${days_between_orders} BETWEEN 8 AND 30 THEN 4
      WHEN ${days_between_orders} BETWEEN 31 AND 60 THEN 5
      WHEN ${days_between_orders} BETWEEN 61 AND 150 THEN 6
      WHEN ${days_between_orders} BETWEEN 151 AND 365 THEN 7
      WHEN ${days_between_orders} BETWEEN 366 AND 450 THEN 8
      WHEN ${days_between_orders} >= 451 THEN 9
      ELSE null
    END ;;
  }

# The cohort dimension that users will see and use in the Explore.
  dimension: cohort_days_between_orders {
    label: "Cohort - Days Between Orders" # Optional: A user-friendly label
    type: string
    order_by_field: cohort_days_between_orders_sort_order # Links to the sorting dimension
    sql:
    CASE
      WHEN ${days_between_orders} = 0  THEN '0 days'
      WHEN ${days_between_orders} = 1  THEN '1 day'
      WHEN ${days_between_orders} BETWEEN 2 AND 7 THEN '2-7 days'
      WHEN ${days_between_orders} BETWEEN 8 AND 30 THEN '8-30 days'
      WHEN ${days_between_orders} BETWEEN 31 AND 60 THEN '31-60 days'
      WHEN ${days_between_orders} BETWEEN 61 AND 150 THEN '61-150 days'
      WHEN ${days_between_orders} BETWEEN 151 AND 365 THEN '151-365 days'
      WHEN ${days_between_orders} BETWEEN 366 AND 450 THEN '366-450 days'
      WHEN ${days_between_orders} >= 451 THEN '451+ days'
      ELSE null
    END ;;
  }

  measure: Total_current_orders {
    type: count_distinct
    sql: ${current_short_id} ;;
    drill_fields: [campaign_name]
  }


}
