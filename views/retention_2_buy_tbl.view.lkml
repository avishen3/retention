view: retention_2_buy_tbl {
  sql_table_name: `omega-post-184817.Keshet.Retention_2_buy_tbl`
    ;;

  dimension: all_cart {
    type: string
    sql: ${TABLE}.all_cart ;;
  }

  dimension: days_diff {
    type: number
    sql: ${TABLE}.days_diff ;;
  }

  dimension: f_orders {
    type: string
    sql: ${TABLE}.F_orders ;;
  }

  dimension: has_seconed_order {
    type: number
    sql: ${TABLE}.has_seconed_order ;;
  }

  dimension: is_mattress_buys {
    type: string
    sql: ${TABLE}.is_mattress_buys ;;
  }

  dimension_group: order_num_1 {
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
    sql: ${TABLE}.order_num_1 ;;
  }

  dimension: order_num_1_mattres_buy {
    type: string
    sql: ${TABLE}.order_num_1_mattres_buy ;;
  }

  dimension_group: order_num_2 {
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
    sql: ${TABLE}.order_num_2 ;;
  }

  dimension: order_num_2_all_cart {
    type: string
    sql: ${TABLE}.order_num_2_all_cart ;;
  }

  dimension: order_num_2_mattres_buy {
    type: string
    sql: ${TABLE}.order_num_2_mattres_buy ;;
  }

  dimension: real_email {
    type: string
    sql: ${TABLE}.real_email ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

measure: date_diff {
  sql: date_diff(${order_num_1_date}-${order_num_2_date}) ;;
}

  dimension_group: days_between_buys {
    type: duration
    intervals: [hour, day]
    sql_start: ${order_num_1_raw} ;;
    sql_end: ${order_num_2_raw};;

  }



}
