view: cartlink_souce_data_tbl_new {
  sql_table_name: `omega-post-184817.CS_NEW.cartlink_souce_data_tbl_new`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.agent_id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: cart_value {
    type: number
    sql: ${TABLE}.cart_value ;;
  }

  dimension: coupon_details_code {
    type: string
    sql: ${TABLE}.coupon_details_code ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension_group: initialized {
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
    sql: ${TABLE}.initialized ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, last_name, first_name]
  }

  measure: total_created_cart {
    type: count_distinct
    sql: ${id} ;;
    value_format: "#,##0"
  }

  measure: total_created_order {
    type: count_distinct
    sql: ${order_id} ;;
    value_format: "#,##0"
  }


  measure: total_order_placed {
    type: count_distinct
    sql: case when ${status} in ("new","done","shipped","processing")  then ${order_id} else null end ;;
    value_format: "#,##0"
  }


}
