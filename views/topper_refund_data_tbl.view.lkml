view: topper_refund_data_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.topper_refund_data_tbl`
    ;;

  dimension: agent_email_mattress {
    type: string
    sql: ${TABLE}.agent_email_mattress ;;
  }

  dimension: agent_email_topper {
    type: string
    sql: ${TABLE}.agent_email_topper ;;
  }

  dimension: agent_id_mattress {
    type: string
    sql: ${TABLE}.agent_id_mattress ;;
  }

  dimension: agent_name_mattress {
    type: string
    sql: ${TABLE}.agent_name_mattress ;;
  }

  dimension: agent_name_topper {
    type: string
    sql: ${TABLE}.agent_name_topper ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: days_from_original_order_to_refound {
    type: number
    sql: ${TABLE}.days_from_original_order_to_refound ;;
  }

  dimension: days_from_original_order_to_topper {
    type: number
    sql: ${TABLE}.days_from_original_order_to_topper ;;
  }

  dimension: days_from_topper_order_to_refound {
    type: number
    sql: ${TABLE}.days_from_topper_order_to_refound ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension_group: first_refund_ts {
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
    datatype: datetime
    sql: ${TABLE}.first_refund_ts ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
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
    datatype: datetime
    sql: ${TABLE}.order_created ;;
  }

  dimension_group: order_created_topper {
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
    datatype: datetime
    sql: ${TABLE}.order_created_topper ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_id_topper {
    type: string
    sql: ${TABLE}.order_id_topper ;;
  }

  dimension_group: order_updated {
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
    datatype: datetime
    sql: ${TABLE}.order_updated ;;
  }

  dimension: original_appeasement_item_id {
    type: string
    sql: ${TABLE}.original_appeasement_item_id ;;
  }

  dimension: original_appeasement_order_id {
    type: string
    sql: ${TABLE}.original_appeasement_order_id ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_name_topper {
    type: string
    sql: ${TABLE}.product_name_topper ;;
  }

  dimension: topper_type {
    type: string
    sql: case when ${agent_name_topper} like "%soft%" then "Soft"
              when ${agent_name_topper} like "%firm%" then "firm" end

    ;;
  }




  dimension: product_size {
    type: string
    sql: ${TABLE}.product_size ;;
  }

  dimension: product_title {
    type: string
    sql: ${TABLE}.product_title ;;
  }

  dimension: product_title_topper {
    type: string
    sql: ${TABLE}.product_title_topper ;;
  }

  dimension: refund_type {
    type: string
    sql: ${TABLE}.refund_type ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: short_id_topper {
    type: string
    sql: ${TABLE}.short_id_topper ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: usage_period {
    type: number
    sql: ${TABLE}.usage_period ;;
  }

  dimension: was_canceled {
    type: yesno
    sql: ${TABLE}.was_canceled ;;
  }

  dimension: was_refunded {
    type: yesno
    sql: ${TABLE}.was_refunded ;;
  }

  dimension: was_returned {
    type: yesno
    sql: ${TABLE}.was_returned ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }

  measure: total_mattress_orders_that_were_sent_toppers{
    type: count_distinct
    sql:short_id ;;
    value_format: "#,##0"
    group_label: "Mattress Measures"
  }

  measure: total_refund_mattress_order_with_toppers {
    type: count_distinct
    sql: case when ${refund_type} = 'full refund' then ${short_id} else null end ;;
    value_format: "#,##0"
    group_label: "Mattress Measures"
  }

  measure: topper_order_refuns_rate {
    label: "Topper orders refound rate"
    type: number
    sql: ${ total_refund_mattress_order_with_toppers } / nullif(${total_mattress_orders_that_were_sent_toppers}, 0) ;;
    value_format: "0.00%"
    group_label: "Mattress Measures"
  }


}
