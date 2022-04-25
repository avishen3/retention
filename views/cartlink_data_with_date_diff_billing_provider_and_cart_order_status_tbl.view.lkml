view: cartlink_data_with_date_diff_billing_provider_and_cart_order_status_tbl {
  sql_table_name: `omega-post-184817.Keshet.cartlink_data_with_date_diff_billing_provider_and_cart_order_status_tbl`
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

  dimension: cart_id_source {
    type: string
    sql: ${TABLE}.cart_id_source ;;
  }

  dimension: cart_order_status {
    type: string
    sql: ${TABLE}.cart_order_status ;;
  }

  dimension: cart_value {
    type: number
    sql: ${TABLE}.cart_value ;;
  }

  dimension: carts_with_order_id {
    type: string
    sql: ${TABLE}.carts_with_order_id ;;
  }

  dimension: coupon_details_code {
    type: string
    sql: ${TABLE}.coupon_details_code ;;
  }

  dimension: day_diff {
    type: number
    sql: ${TABLE}.day_diff ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: hour_diff {
    type: number
    sql: ${TABLE}.hour_diff ;;
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

  dimension_group: initialized_datetime {
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
    sql: ${TABLE}.initialized_DATETIME ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
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

  dimension_group: order_created_datetime {
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
    sql: ${TABLE}.order_created_DATETIME ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_status_completed {
    type: string
    sql: ${TABLE}.order_status_completed ;;
  }

  dimension: order_status_paymentfailure {
    type: string
    sql: ${TABLE}.order_status_paymentfailure ;;
  }

  dimension: order_status_pendingpayment {
    type: string
    sql: ${TABLE}.order_status_pendingpayment ;;
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
    drill_fields: [id, first_name, last_name]
  }

  measure: total_cart_created {
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
    sql: case when ${status} in ("new","done","shipped","processing" ,"refunded","cancelled")  then ${order_id} else null end ;;
    value_format: "#,##0"
  }




  measure: total_cart_not_turned_into_order{
    type: count_distinct
    sql: case when ${cart_order_status} = 'Cart not order' then ${id} else null end ;;
    value_format: "#,##0"
    group_label: "Cart count measures"
  }



  measure: total_cart_orders_only_completed{
    type: count_distinct
    sql: case when ${cart_order_status} = 'only completed' then ${id} else null end ;;
    value_format: "#,##0"
    group_label: "Cart count measures"
  }


  measure: total_cart_orders_completed_and_paymentfailure{
    type: count_distinct
    sql: case when ${cart_order_status} = 'completed and paymentfailure' then ${id} else null end ;;
    value_format: "#,##0"
    group_label: "Cart count measures"
  }


  measure: total_cart_orders_completed_and_pendingpayment{
    type: count_distinct
    sql: case when ${cart_order_status} = 'completed and pendingpayment' then ${id} else null end ;;
    value_format: "#,##0"
    group_label: "Cart count measures"
  }

  measure: total_cart_orders_completed_and_pendingpayment_and_paymentfailure{
    type: count_distinct
    sql: case when ${cart_order_status} = 'completed and pendingpayment and paymentfailure' then ${id} else null end ;;
    value_format: "#,##0"
    group_label: "Cart count measures"
  }

  measure: total_cart_orders_all_completed{
    type: count_distinct
    sql: case when ${cart_order_status} in ('completed and pendingpayment and paymentfailure', "completed and paymentfailure","completed and pendingpayment", "completed and pendingpayment and paymentfailure" , "only completed" ) then ${id} else null end ;;
    value_format: "#,##0"
    group_label: "Cart count measures"
  }

  measure: total_cart_orders_only_paymentfailure{
    type: count_distinct
    sql: case when ${cart_order_status} = 'only paymentfailure' then ${id} else null end ;;
    value_format: "#,##0"
    group_label: "Cart count measures"
  }

  measure: total_cart_orders_only_pendingpayment{
    type: count_distinct
    sql: case when ${cart_order_status} = 'only pendingpayment' then ${id} else null end ;;
    value_format: "#,##0"
    group_label: "Cart count measures"
  }


  measure: total_cart_orders_pendingpayment_and_paymentfailure{
    type: count_distinct
    sql: case when ${cart_order_status} = 'pendingpayment and paymentfailure' then ${id} else null end ;;
    value_format: "#,##0"
    group_label: "Cart count measures"
  }

  measure: total_cart_orders_all_pendingpayment_and_or_paymentfailure{
    type: count_distinct
    sql: case when ${cart_order_status} in ('only paymentfailure', "only pendingpayment","pendingpayment and paymentfailure") then ${id} else null end ;;
    value_format: "#,##0"
    group_label: "Cart count measures"
  }

  measure: total_cart_orders_all_pendingpayment_and_or_paymentfailure_then_completed{
    type: count_distinct
    sql: case when ${cart_order_status} in ('completed and paymentfailure', "completed and pendingpayment","completed and pendingpayment and paymentfailure") then ${id} else null end ;;
    value_format: "#,##0"
    group_label: "Cart count measures"
  }

  measure: total_carts_turned_orders{
    type: count_distinct
    sql: case when ${cart_order_status} <> "Cart not order" then ${id} else null end ;;
    value_format: "#,##0"
    group_label: "Cart count measures"
  }


}
