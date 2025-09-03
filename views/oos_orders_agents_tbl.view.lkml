view: oos_orders_agents_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.oos_orders_agents_tbl` ;;

  dimension: admin_short_id {
    type: string
    sql: ${TABLE}.admin_short_id ;;
  }
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
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }
  dimension_group: order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created ;;
  }
  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }
  dimension: original_product_name {
    type: string
    sql: ${TABLE}.original_product_name ;;
  }
  dimension: original_product_title {
    type: string
    sql: ${TABLE}.original_product_title ;;
  }
  dimension: original_sku {
    type: string
    sql: ${TABLE}.original_sku ;;
  }
  dimension: parent_category {
    type: string
    sql: ${TABLE}.parent_category ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: shipment_id_last_purchase {
    type: string
    sql: ${TABLE}.shipment_id_last_purchase ;;
  }
  dimension: shipment_sku {
    type: string
    sql: ${TABLE}.shipment_sku ;;
  }
  dimension: shipment_status_fulfill2_last_purchase {
    type: string
    sql: ${TABLE}.shipment_status_fulfill2_last_purchase ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transactionId ;;
  }
  dimension: wgs_full_price {
    type: number
    sql: ${TABLE}.wgs_full_price ;;
  }
  measure: count {
    type: count
    drill_fields: [agent_name, product_name, original_product_name]
  }
}
