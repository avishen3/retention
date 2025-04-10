view: specialoffer_agent_coupon_order_level_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.specialoffer_agent_coupon_order_level_tbl` ;;

  dimension: admin_agent_email {
    type: string
    sql: ${TABLE}.admin_agent_email ;;
  }
  dimension: admin_short_id {
    type: string
    sql: ${TABLE}.admin_short_id ;;
  }
  dimension: agent_email {
    type: string
    sql: ${TABLE}.agent_email ;;
  }
  dimension: agent_name {
    type: string
    sql: ${TABLE}.agent_name ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }
  dimension: is_discount_order {
    type: yesno
    sql: ${TABLE}.is_discount_order ;;
  }
  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_date ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: total_coupon_discount {
    type: number
    sql: ${TABLE}.total_coupon_discount ;;
  }
  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }
  dimension: total_price_after_dis {
    type: number
    sql: ${TABLE}.total_price_after_dis ;;
  }
  dimension: total_qualify_order_discount {
    type: number
    sql: ${TABLE}.total_qualify_order_discount ;;
  }
  dimension: total_qualify_order_discount_round {
    type: string
    sql: ${TABLE}.total_qualify_order_discount_round ;;
  }
  measure: count {
    type: count
    drill_fields: [agent_name]
  }

  measure: total_short_id {
    type: count_distinct
    drill_fields: [agent_name]
    sql: ${short_id} ;;
  }

}
