view: cart_mix_for_looker_tbl {
  sql_table_name: `omega-post-184817.crm.Cart_mix_for_looker_tbl`
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
    type: string
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
    type: string
    sql: ${TABLE}.customer_type ;;
  }

  dimension: email_num {
    type: string
    sql: ${TABLE}.email_num ;;
  }

  dimension: flow {
    type: string
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
    type: string
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

##the_nectar_mattress nectar_premier_mattress nectar_premier_copper_mattress  dreamcloud_premier_mattress the_dreamcloud_mattress the_dreamcloud_premier_rest Dreamcloud_Mattress Nectar_Mattress##

dimension: the_nectar_mattress {
  type: string
  sql: ${TABLE}.the_nectar_mattress ;;
}

  dimension: nectar_premier_mattress {
    type: string
    sql: ${TABLE}.nectar_premier_mattress ;;
  }


  dimension: nectar_premier_copper_mattress {
    type: string
    sql: ${TABLE}.nectar_premier_copper_mattress ;;
  }


  dimension: dreamcloud_premier_mattress {
    type: string
    sql: ${TABLE}.dreamcloud_premier_mattress ;;
  }

  dimension: the_dreamcloud_mattress {
    type: string
    sql: ${TABLE}.the_dreamcloud_mattress ;;
  }

  dimension: the_dreamcloud_premier_rest {
    type: string
    sql: ${TABLE}.the_dreamcloud_premier_rest ;;
  }

  dimension: Dreamcloud_Mattress {
    type: string
    sql: ${TABLE}.the_dreamcloud_premier_rest ;;
  }


  dimension: Nectar_Mattress {
    type: string
    sql: ${TABLE}.Nectar_Mattress ;;
  }


  ### Date_granularty

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
    type: string
    sql: ${TABLE}.sub_flow ;;
  }


dimension:test_variance  {
  type : string
  sql:  ${TABLE}.test_variance;;
}

  dimension:test_name   {
    type : string
    sql:  ${TABLE}.test_name  ;;
  }



  dimension:Email_num_and_variance   {
    type : string
    sql:  ${TABLE}.Email_num_and_variance  ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }


  measure: num_of_sales{
  type: count_distinct
  sql: ${short_id} ;;
  }

  measure: total_revenue {
    type: sum
    sql: ${revenue} ;;
    value_format: "$#,###"
  }



  dimension: all_order_price {
    type: number
    sql: ${TABLE}.all_order_price ;;
  }

  dimension: all_order_tax {
    type: number
    sql: ${TABLE}.all_order_tax ;;
  }

  dimension: all_order_taxable_price {
    type: number
    sql: ${TABLE}.all_order_taxable_price ;;
  }
  dimension: all_order_payed_amount {
    type: number
    sql: ${TABLE}.all_order_payed_amount ;;
  }



  measure: total_all_order_price {
    type: sum
    sql: ${all_order_price} ;;
    value_format: "$#,###"
  }

  measure: total_all_order_tax {
    type: sum
    sql: ${all_order_tax} ;;
    value_format: "$#,###"
  }

  measure: total_all_order_taxable_price {
    type: sum
    sql: ${all_order_taxable_price} ;;
    value_format: "$#,###"
  }

  measure: total_all_order_payed_amount {
    type: sum
    sql: ${all_order_payed_amount} ;;
    value_format: "$#,###"
  }



}
