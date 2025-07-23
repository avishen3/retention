view: mattress_firm_sales {
  sql_table_name: `omega-post-184817.retail.mattress_firm_sales` ;;

  dimension: email_address {
    type: string
    sql: ${TABLE}.EMAIL_ADDRESS ;;
  }
  dimension_group: insert_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.insert_timestamp ;;
  }
  dimension: order_id {
    type: string
    sql: ${TABLE}.ORDER_ID ;;
  }
  dimension_group: order_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ORDER_TIMESTAMP ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.PRODUCT_NAME ;;
  }
  dimension: product_price {
    type: number
    sql: ${TABLE}.PRODUCT_PRICE ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }
  dimension: resident_sku {
    type: string
    sql: ${TABLE}.RESIDENT_SKU ;;
  }
  dimension: retail_name {
    type: string
    sql: ${TABLE}.RETAIL_NAME ;;
  }
  dimension: retail_sku {
    type: string
    sql: ${TABLE}.RETAIL_SKU ;;
  }
  dimension: store_dma {
    type: string
    sql: ${TABLE}.STORE_DMA ;;
  }
  dimension: store_id {
    type: number
    sql: ${TABLE}.STORE_ID ;;
  }
  dimension: store_name {
    type: string
    sql: ${TABLE}.STORE_NAME ;;
  }
  dimension: store_zipcode {
    type: number
    sql: ${TABLE}.STORE_ZIPCODE ;;
  }
  measure: count {
    type: count
    drill_fields: [retail_name, product_name, store_name]
  }
}
