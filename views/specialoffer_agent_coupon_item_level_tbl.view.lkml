view: specialoffer_agent_coupon_item_level_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.specialoffer_agent_coupon_item_level_tbl` ;;

  dimension: admin_discount {
    type: number
    sql: ${TABLE}.admin_discount ;;
  }
  dimension: agent_email {
    type: string
    sql: ${TABLE}.agent_email ;;
  }
  dimension: agent_name {
    type: string
    sql: ${TABLE}.agent_name ;;
  }
  dimension: agg_single_discouned {
    type: string
    sql: ${TABLE}.agg_single_discouned ;;
  }
  dimension: all_product_discounted {
    type: yesno
    sql: ${TABLE}.all_product_discounted ;;
  }
  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }
  dimension: coupon_discount {
    type: number
    sql: ${TABLE}.coupon_discount ;;
  }
  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }
  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_date ;;
  }
  dimension: order_discount {
    type: number
    sql: ${TABLE}.order_discount ;;
  }
  dimension: order_price {
    type: number
    sql: ${TABLE}.order_price ;;
  }
  dimension: prcent_of_dis {
    type: number
    sql: ${TABLE}.prcent_of_dis ;;
  }
  dimension: prcent_of_item_dis {
    type: string
    sql: ${TABLE}.prcent_of_item_dis ;;
  }
  dimension: price_after_dis {
    type: number
    sql: ${TABLE}.price_after_dis ;;
  }
  dimension: product_title {
    type: string
    sql: ${TABLE}.product_title ;;
  }
  dimension: profile_discount {
    type: number
    sql: ${TABLE}.profile_discount ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }
  dimension: single_price {
    type: number
    sql: ${TABLE}.single_price ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }
  measure: count {
    type: count
    drill_fields: [agent_name]
  }
}
