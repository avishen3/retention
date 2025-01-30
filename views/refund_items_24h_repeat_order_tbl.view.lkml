view: refund_items_24h_repeat_order_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.Refund_Items_24h_repeat_order_tbl` ;;

  dimension: agent_email_2_order {
    type: string
    sql: ${TABLE}.agent_email_2_order ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: brand_2_order {
    type: string
    sql: ${TABLE}.brand_2_order ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: category_2_order {
    type: string
    sql: ${TABLE}.category_2_order ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: email_2_order {
    type: string
    sql: ${TABLE}.email_2_order ;;
  }
  dimension: hours_from_order_to_refund {
    type: number
    sql: ${TABLE}.hours_from_order_to_refund ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension: key_2_order {
    type: string
    sql: ${TABLE}.key_2_order ;;
  }
  dimension_group: max_first_refund_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.max_first_refund_ts ;;
  }
  dimension_group: min_first_refund_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.min_first_refund_ts ;;
  }
  dimension_group: order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created ;;
  }
  dimension_group: order_created_2_order {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created_2_order ;;
  }
  dimension: pre_delivery_full_refund_amount {
    type: number
    sql: ${TABLE}.pre_delivery_full_refund_amount ;;
  }
  dimension: refund_type {
    type: string
    sql: ${TABLE}.refund_type ;;
  }
  dimension: refund_type_2_order {
    type: string
    sql: ${TABLE}.refund_type_2_order ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }
  dimension: short_id_2_order {
    type: string
    sql: ${TABLE}.short_id_2_order ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: status_2_order {
    type: string
    sql: ${TABLE}.status_2_order ;;
  }
  dimension: total_items_in_catagory {
    type: number
    sql: ${TABLE}.Total_items_in_catagory ;;
  }
  dimension: total_items_in_catagory_2_order {
    type: number
    sql: ${TABLE}.Total_items_in_catagory_2_order ;;
  }
  measure: count {
    type: count
  }


  measure: Total_Original_Orders {
    type: count_distinct
    sql: ${short_id} ;;
  }


  measure: Total_Seconed_Orders {
    type: count_distinct
    sql: ${short_id_2_order} ;;
  }

# date granularity#

  parameter: Date_Granularity {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }


  dimension: Date_Granularity_date {
    label_from_parameter: Date_Granularity
    sql:
            CASE
             WHEN {% parameter Date_Granularity %} = 'Day' THEN cast(${order_created_date} as string)
             WHEN {% parameter Date_Granularity %} = 'Week' THEN cast(${order_created_week} as string)
             WHEN {% parameter Date_Granularity %} = 'Month' THEN cast(${order_created_month} as string)
             WHEN {% parameter Date_Granularity %} = 'Quarter' THEN cast(${order_created_quarter} as string)
             WHEN {% parameter Date_Granularity %} = 'Year' THEN cast(${order_created_year} as string)
            ELSE null
            END ;;
  }



}
