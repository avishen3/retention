view: out_of_stock_shipments_snapshot_five9_interactions_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.out_of_stock_shipments_snapshot_five9_interactions_tbl` ;;

  dimension: age_of_the_order_to_report_date {
    type: number
    sql: ${TABLE}.age_of_the_order_to_report_date ;;
  }
  dimension: agentemail {
    type: string
    sql: ${TABLE}.agentemail ;;
  }
  dimension_group: call {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.call_date ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: campaignname {
    type: string
    sql: ${TABLE}.campaignname ;;
  }
  dimension: correspondencetype {
    type: string
    sql: ${TABLE}.correspondencetype ;;
  }
  dimension: customer_key {
    type: string
    sql: ${TABLE}.customer_key ;;
  }
  dimension: customer_phone {
    type: string
    sql: ${TABLE}.customerPhone ;;
  }
  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }
  dimension: disposition_id {
    type: string
    sql: ${TABLE}.disposition_id ;;
  }
  dimension: disposition_name {
    type: string
    sql: ${TABLE}.disposition_name ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension_group: insert_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.insert_timestamp ;;
  }

  dimension: insert_exact_time {
    label: "Insert Exact Timestamp"
    type: string
    sql: ${TABLE}.insert_timestamp ;;
  }


  dimension: is_callback {
    type: yesno
    sql: ${TABLE}.Is_callback ;;
  }
  dimension: is_callbackrequested {
    type: yesno
    sql: ${TABLE}.is_callbackrequested ;;
  }
  dimension: is_system_disposition {
    type: yesno
    sql: ${TABLE}.is_system_disposition ;;
  }
  dimension: is_transaction_after_report_date {
    type: yesno
    sql: ${TABLE}.is_transaction_after_report_date ;;
  }
  dimension: is_wgs {
    type: yesno
    sql: ${TABLE}.is_wgs ;;
  }
  dimension: item_actual_price {
    type: number
    sql: ${TABLE}.item_actual_price ;;
  }
  dimension: item_actual_price_exc_tax {
    type: number
    sql: ${TABLE}.item_actual_price_exc_tax ;;
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
  dimension: phone_number {
    type: string
    sql: ${TABLE}.phoneNumber ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: providersessionid {
    type: string
    sql: ${TABLE}.providersessionid ;;
  }
  dimension: shipment_id {
    type: string
    sql: ${TABLE}.shipment_id ;;
  }
  dimension: shipment_sku {
    type: string
    sql: ${TABLE}.shipment_sku ;;
  }
  dimension: shipment_status_fulfill2 {
    type: string
    sql: ${TABLE}.shipment_status_fulfill2 ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }
  dimension: short_id_before {
    type: string
    sql: ${TABLE}.short_id_before ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transactionId ;;
  }
  dimension_group: transaction {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.transaction_time ;;
  }
  dimension: type_name {
    type: string
    sql: ${TABLE}.type_name ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  type_name,
  campaignname,
  campaign_name,
  original_product_name,
  product_name,
  disposition_name
  ]
  }

}
