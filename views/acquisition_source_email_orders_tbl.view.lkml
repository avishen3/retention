view: acquisition_source_email_orders_tbl {
  sql_table_name: `omega-post-184817.Keshet.Acquisition_source_email_orders_tbl`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: cart_cookie_id {
    type: string
    sql: ${TABLE}.cart_cookie_id ;;
  }

  dimension: cart_id {
    type: string
    sql: ${TABLE}.cart_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_lc_marketing_platform {
    type: string
    sql: ${TABLE}.first_LC_marketing_platform ;;
  }

  dimension_group: first_lc_start {
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
    sql: ${TABLE}.first_LC_start_time ;;
  }

  dimension: first_visit_marketing_platform {
    type: string
    sql: ${TABLE}.first_visit_marketing_platform ;;
  }

  dimension_group: first_visit_start {
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
    sql: ${TABLE}.first_visit_start_time ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: marketing_platform {
    type: string
    sql: ${TABLE}.marketing_platform ;;
  }

  dimension: order_brand {
    type: string
    sql: ${TABLE}.order_brand ;;
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

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: short_id_orders {
    type: string
    sql: ${TABLE}.short_id_orders ;;
  }

  dimension_group: visit_start_time {
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
    sql: ${TABLE}.visitStartTime ;;
  }

  dimension: visit_transactionid {
    type: string
    sql: ${TABLE}.visit_transactionid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_sale {
    type: sum
    sql: ${price} ;;
  }


}
