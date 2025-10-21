view: ptc_first_24_hours_refund_five9_interaction_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.ptc_first_24_hours_refund_five9_interaction_tbl` ;;

  dimension: agent_email_2_order {
    type: string
    sql: ${TABLE}.agent_email_2_order ;;
  }
  dimension: five_9_agentemail {
    type: string
    sql: ${TABLE}.agentemail ;;
  }
  dimension: brand_2_order {
    type: string
    sql: ${TABLE}.brand_2_order ;;
  }
  dimension: brand_pre_delivery_24h_full_refund {
    type: string
    sql: ${TABLE}.brand_pre_delivery_24h_full_refund ;;
  }
  dimension: category_2_order {
    type: string
    sql: ${TABLE}.category_2_order ;;
  }
  dimension: category_pre_delivery_24h_full_refund {
    type: string
    sql: ${TABLE}.category_pre_delivery_24h_full_refund ;;
  }
  dimension_group: date_max_first_refund_ts {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_max_first_refund_ts ;;
  }
  dimension: disposition_name {
    type: string
    sql: ${TABLE}.disposition_name ;;
  }
  dimension: email_2_order {
    type: string
    sql: ${TABLE}.email_2_order ;;
  }
  dimension: email_pre_delivery_24h_full_refund {
    type: string
    sql: ${TABLE}.email_pre_delivery_24h_full_refund ;;
  }
  dimension_group: five9 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.five9_date ;;
  }
  dimension: key_2_order {
    type: string
    sql: ${TABLE}.key_2_order ;;
  }
  dimension: key_pre_delivery_24h_full_refund {
    type: string
    sql: ${TABLE}.key_pre_delivery_24h_full_refund ;;
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
  dimension_group: order_created_before {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created_before ;;
  }
  dimension: refund_type {
    type: string
    sql: ${TABLE}.refund_type ;;
  }
  dimension: rp_agent_email {
    type: string
    sql: ${TABLE}.rp_agent_email ;;
  }
  dimension: short_id_2_order {
    type: string
    sql: ${TABLE}.short_id_2_order ;;
  }

  dimension: short_id_before {
    type: string
    sql: ${TABLE}.short_id_before ;;
  }
  dimension: short_id_pre_delivery_24h_full_refund {
    type: string
    sql: ${TABLE}.short_id_pre_delivery_24h_full_refund ;;
  }


  dimension: skill_name {
    type: string
    sql: ${TABLE}.skill_name ;;
  }
  dimension: status_2_order {
    type: string
    sql: ${TABLE}.status_2_order ;;
  }
  dimension: status_pre_delivery_24h_full_refund {
    type: string
    sql: ${TABLE}.status_pre_delivery_24h_full_refund ;;
  }
  dimension: total_items_in_catagory {
    type: number
    sql: ${TABLE}.Total_items_in_catagory ;;
  }
  dimension_group: transaction {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.transaction_time ;;
  }
  measure: count {
    type: count
    drill_fields: [skill_name, disposition_name]}



  measure: total_short_id_pre_delivery_24h_full_refund {
    type: count_distinct
    sql: ${short_id_pre_delivery_24h_full_refund} ;;
  }


  measure: total_short_id_2_order {
    type: count_distinct
    sql: ${short_id_2_order} ;;
  }


  measure: total_short_id_before_five9 {
    type: count_distinct
    sql: ${short_id_before} ;;
  }

  dimension: Is_five9_agent_rp_agent {
    type: yesno
    sql: ${five_9_agentemail}=${rp_agent_email};;
  }

  dimension: sku_pre_delivery_24h_full_refund {
    type: string
    sql: ${TABLE}.sku_pre_delivery_24h_full_refund ;;
  }

  dimension: actual_refund_short_id_refund {
    type: string
    sql: case when ${short_id_2_order} is null then ${short_id_pre_delivery_24h_full_refund} else null end  ;;
  }

  measure: total_actual_refund_orders {
    type: count_distinct
    sql: ${actual_refund_short_id_refund} ;;
  }


}
