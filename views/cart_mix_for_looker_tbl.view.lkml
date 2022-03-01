# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

view: cart_mix_for_looker_tbl {
  sql_table_name: `omega-post-184817.Keshet.cart_mix_for_looker_tbl`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: brand_latters {
    type: string
    sql: ${TABLE}.brand_latters ;;
  }

  dimension: campaign_name {
    hidden: no
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: cart_catagory {
    type: string
    sql: ${TABLE}.cart_catagory ;;
  }

  dimension: cart_items {
    type: string
    sql: ${TABLE}.cart_items ;;
  }

  dimension: cart_sku {
    type: string
    sql: ${TABLE}.cart_sku ;;
  }

  dimension: customer_type {
    hidden: no
    sql: ${TABLE}.customer_type ;;
  }

  dimension: email_num {
    hidden: no
    sql: ${TABLE}.email_num ;;
  }

  dimension: flow {
    hidden: no
    sql: ${TABLE}.flow ;;
  }

  dimension: gross_profit {
    type: number
    sql: ${TABLE}.gross_profit ;;
  }

  dimension: marketing_campaign {
    type: string
    sql: ${TABLE}.marketing_campaign ;;
  }

  dimension: marketing_medium {
    type: string
    sql: ${TABLE}.marketing_medium ;;
  }

  dimension: marketing_platform {
    type: string
    sql: ${TABLE}.marketing_platform ;;
  }

  dimension: marketing_source {
    type: string
    sql: ${TABLE}.marketing_source ;;
  }

  dimension: offer {
    hidden: no
    sql: ${TABLE}.offer ;;
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



  dimension: promo {
    type: string
    sql: ${TABLE}.promo ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: sub_flow {
    hidden: no
    sql: ${TABLE}.sub_flow ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
