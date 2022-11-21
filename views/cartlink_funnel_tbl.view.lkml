view: cartlink_funnel_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.cartlink_funnel_tbl`
    ;;

  dimension: agent_email {
    type: string
    sql: ${TABLE}.agent_email ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: cart_cookie_id {
    type: string
    sql: ${TABLE}.cart_cookie_id ;;
  }

  dimension: cart_id {
    type: string
    sql: ${TABLE}.cart_id ;;
  }

  dimension: cartlink_id {
    type: string
    sql: ${TABLE}.cartlink_id ;;
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }

  dimension: days_diff {
    type: number
    sql: ${TABLE}.days_diff ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}.event_time ;;
  }

  dimension: fullvisitorid {
    type: string
    sql: ${TABLE}.fullvisitorid ;;
  }

  dimension: is_cartlink_order {
    type: yesno
    sql: ${TABLE}.is_cartlink_order ;;
  }

  dimension: minute_diff {
    type: number
    sql: ${TABLE}.minute_diff ;;
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

  dimension: purchase_session {
    type: yesno
    sql: ${TABLE}.purchase_session ;;
  }

  dimension: rh_client_id {
    type: string
    sql: ${TABLE}.rh_client_id ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: visit_end {
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
    sql: ${TABLE}.visit_end ;;
  }

  dimension: visit_transactionid {
    type: string
    sql: ${TABLE}.visit_transactionid ;;
  }

  dimension: visit_transid_status {
    type: string
    sql: ${TABLE}.visit_transid_status ;;
  }

  dimension: visitid {
    type: number
    value_format_name: id
    sql: ${TABLE}.visitid ;;
  }

  dimension_group: visitstarttime {
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
    sql: ${TABLE}.visitstarttime ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
