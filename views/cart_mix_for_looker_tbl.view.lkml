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

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
