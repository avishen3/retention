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


# date granularity - event #

  parameter: Date_Granularity_event_created {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
    allowed_value: { value: "Hour" }
    allowed_value: { value: "Hour of Day" }
  }

  dimension: event_created {
    label_from_parameter: Date_Granularity_event_created
    sql:
            CASE
             WHEN {% parameter Date_Granularity_event_created %} = 'Day' THEN cast(${event_date} as string)
             WHEN {% parameter Date_Granularity_event_created %} = 'Week' THEN cast(${event_week} as string)
             WHEN {% parameter Date_Granularity_event_created %} = 'Month' THEN cast(${event_month} as string)
             WHEN {% parameter Date_Granularity_event_created %} = 'Quarter' THEN cast(${event_quarter} as string)
             WHEN {% parameter Date_Granularity_event_created %} = 'Year' THEN cast(${event_year} as string)
            ELSE null
            END ;;
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

  measure: total_cart_id_created{
    label: "Total carts created "
    type: count_distinct
    sql: ${cart_id};;
    value_format: "#,##0"
    group_label: "cartlink funnel"
  }


 ## measure: total_cartlink_id_created{
##    label: "Total cartlinks created "
##    type: count_distinct
##    sql: ${cartlink_id};;
##    value_format: "#,##0"
##    group_label: "cartlink funnel"
##  }

  measure: cartlink_site_visits{
    label: "Total sites visit from cart_id "
    type: count_distinct
    sql: case when ${visitid} is not null then ${cart_id} else null end ;;
    value_format: "#,##0"
    group_label: "cartlink funnel"
  }

  measure: cartlink_orders{
    label: "order from carlinks"
    type: count_distinct
    sql: case when ${visit_transactionid} is not null then ${cart_id} else null end ;;
    value_format: "#,##0"
    group_label: "cartlink funnel"
  }


##  measure: cartlink_purchase_session{
##    label: "purchase session from carlinks"
##    type: count_distinct
##    sql: case when ${purchase_session} is true then ${cart_id} else null end ;;
##    value_format: "#,##0"
##    group_label: "cartlink funnel"
##  }











}
