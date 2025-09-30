view: cs_agent_sales_vw {
  sql_table_name: `omega-post-184817.CS_NEW.cs_agent_sales_vw`
    ;;

  dimension: agent_email {
    type: string
    sql: ${TABLE}.agent_email ;;
  }

  dimension: agent_first_name {
    type: string
    sql: ${TABLE}.agent_first_name ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.agent_id ;;
  }

  dimension: agent_last_name {
    type: string
    sql: ${TABLE}.agent_last_name ;;
  }

  dimension: billing_provider {
    type: string
    sql: ${TABLE}.billing_provider ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
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

  dimension: cs_order_channel {
    type: string
    sql: ${TABLE}.cs_order_channel ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
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
      year,
      hour,
      hour2,
      hour_of_day
    ]
    datatype: datetime
    sql: ${TABLE}.order_created ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_source {
    type: string
    sql: ${TABLE}.order_source ;;
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
      year,
      hour,
      hour2,
      hour_of_day
    ]
    datatype: datetime
    sql: ${TABLE}.order_updated ;;
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

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [agent_first_name, agent_last_name]
  }

  #### Total data

  measure: Total_Order{
    type: count_distinct
    sql:  ${short_id} ;;
    value_format: "#,##0"
  }

  measure: Total_Price{
    type: sum
    sql:  ${price} ;;
    value_format: "$#,##0.0"
  }

  measure: Total_Revenue{
    type: sum
    sql:  ${price}-${tax} ;;
    value_format: "$#,##0.0"
  }


  measure: Total_AOV{
    type: number
    sql:  ${Total_Revenue}/${Total_Order} ;;
    value_format: "$#,##0.0"
  }



  #### agent_data

  measure: Total_Agent_Order{
    type: count_distinct
    sql:  case when ${agent_id}  is not null then ${short_id} else 0 end ;;
    value_format: "#,##0"
  }

  measure: Total_Agent_Price{
    type: sum
    sql:  case when ${agent_id}  is not null then ${price} else 0 end ;;
    value_format: "$#,##0.0"
  }

  measure: Total_Agent_Revenue{
    type: sum
    sql:  case when ${agent_id}  is not null then ${price}-${tax} else 0 end ;;
    value_format: "$#,##0.0"
  }

  measure: Total_Agent_AOV{
    type: number
    sql:  case when ${agent_id}  is not null then  ${Total_Revenue}/${Total_Order} else 0 end ;;
    value_format: "$#,##0.0"
  }

  measure: num_of_orders  {
    type: count_distinct
    sql: ${short_id} ;;

  }

  measure: num_of_orders_non_zero  {
    type: count_distinct
    sql: case when ${price}>0 then ${short_id} else null end ;;

  }


  measure: AOV_1 {
    type: number
    sql:${Total_Revenue}/${num_of_orders} ;;
    value_format: "$#,##0.00"
  }


  measure: AOV_with_out_non_zero_orders {
    type: number
    sql:case when ${num_of_orders_non_zero}>0 then ${Total_Revenue}/${num_of_orders_non_zero} else null end  ;;
    value_format: "$#,##0.00"
    label: "AOV (Excludes $0 Orders)"
  }


  measure: AOV_with_tax{
    type: number
    sql:${Total_Price}/${num_of_orders} ;;
    value_format: "$#,##0.00"
  }


  measure: AOV_with_out_non_zero_orders_with_tax{
    type: number
    sql:case when ${num_of_orders_non_zero}>0 then ${Total_Price}/${num_of_orders_non_zero} else null end  ;;
    value_format: "$#,##0.00"
    label: "AOV (Excludes $0 Orders)"
  }

}
