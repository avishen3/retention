view: acquisition_source_email_visit_and_orders_tbl {
  sql_table_name: `omega-post-184817.Keshet.Acquisition_Source_Email_Visit_and_Orders_tbl`
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


# date granularity - Order Date #

  parameter: Date_Granularity_order_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }

  dimension: Order_Date {
    label_from_parameter: Date_Granularity_order_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_order_date %} = 'Day' THEN cast(${order_created_date} as string)
             WHEN {% parameter Date_Granularity_order_date %} = 'Week' THEN cast(${order_created_week} as string)
             WHEN {% parameter Date_Granularity_order_date %} = 'Month' THEN cast(${order_created_month} as string)
             WHEN {% parameter Date_Granularity_order_date %} = 'Quarter' THEN cast(${order_created_quarter} as string)
             WHEN {% parameter Date_Granularity_order_date %} = 'Year' THEN cast(${order_created_year} as string)
            ELSE null
            END ;;
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
    value_format: "$#,###"
  }

  measure: total_order {
    type: count_distinct
    sql: ${short_id_orders}
      ;;
  }

  measure: total_visit{
    type: count_distinct
    sql: ${cart_cookie_id}
      ;;
  }


}
