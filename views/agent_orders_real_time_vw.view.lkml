view: agent_orders_real_time_vw {
  sql_table_name: `omega-post-184817.CS_NEW.agent_orders_real_time_vw` ;;

  dimension: agent_email {
    type: string
    sql: ${TABLE}.agent_email ;;
  }
  dimension: agent_id {
    type: string
    sql: ${TABLE}.agent_id ;;
  }
  dimension: agent_name {
    type: string
    sql: ${TABLE}.agent_name ;;
  }
  dimension: cart_id {
    type: string
    sql: ${TABLE}.cart_id ;;
  }
  dimension: cart_remote_token {
    type: string
    sql: ${TABLE}.cart_remote_token ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }
  dimension: is_price_0 {
    type: yesno
    sql: ${TABLE}.is_price_0 ;;
  }
  dimension: is_valid_order {
    type: yesno
    sql: ${TABLE}.is_valid_order ;;
  }
  dimension_group: order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created ;;
  }
  dimension: order_source {
    type: string
    sql: ${TABLE}.order_source ;;
  }
  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }
  dimension: total_bases {
    type: number
    sql: ${TABLE}.total_bases ;;
  }
  dimension: total_matresses {
    type: number
    sql: ${TABLE}.total_matresses ;;
  }
  measure: count {
    type: count
    drill_fields: [agent_name]
  }

  dimension: valid_non_zero_order{
    type: yesno
    sql: ${is_valid_order} is true and ${is_price_0} is false ;;
  }


  dimension: is_agent_order{
    type: yesno
    sql: ${agent_email} is not null  ;;
  }

  measure: total_revenve_valid_orders {
    type: sum
    sql: case when ${is_valid_order} is true  then  ${price}-${tax} else null end ;;
    value_format: "$#,##0.0"
    }

  measure: total_revenve_valid_no_zero_orders {
    type: sum
    sql: case when ${valid_non_zero_order} is true  then  ${price}-${tax} else null end ;;
    value_format: "$#,##0.0"
  }

  measure: total_orders_valid {
    type: count_distinct
    sql: case when ${is_valid_order} is true  then  ${short_id} else null end ;;
  }

  measure: total_orders_valid_no_zero {
    type: count_distinct
    sql: case when ${valid_non_zero_order} is true  then  ${short_id} else null end ;;
  }

  measure: AOV_valid_order{
    type: number
    sql: ${total_revenve_valid_orders}/${total_orders_valid} ;;
    value_format: "$#,##0.0"
  }

  measure: AOV_valid_order_no_zero{
    type: number
    sql: ${total_revenve_valid_no_zero_orders}/${total_orders_valid_no_zero} ;;
    value_format: "$#,##0.0"
  }



}
