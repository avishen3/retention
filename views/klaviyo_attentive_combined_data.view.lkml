view: klaviyo_attentive_combined_data {
  sql_table_name: `omega-post-184817.crm.klaviyo_attentive_combined_data` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: count_dis_att_client_id {
    type: number
    sql: ${TABLE}.count_dis_att_client_id ;;
  }
  dimension: count_dis_email_address {
    type: number
    sql: ${TABLE}.count_dis_email_address ;;
  }
  dimension: customer_from_platform {
    type: string
    sql: ${TABLE}.customer_from_platform ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE ;;
  }
  dimension: email_before_dg {
    type: string
    sql: ${TABLE}.email_before_dg ;;
  }
  dimension: email_order_same_day_as_recived_email {
    type: number
    sql: ${TABLE}.email_order_same_day_as_recived_email ;;
  }
  dimension: flow_abandonedbilling_count {
    type: number
    sql: ${TABLE}.flow_abandonedbilling_count ;;
  }
  dimension: flow_abandonedbrowse_count {
    type: number
    sql: ${TABLE}.flow_abandonedbrowse_count ;;
  }
  dimension: flow_abandonedcart_count {
    type: number
    sql: ${TABLE}.flow_abandonedcart_count ;;
  }
  dimension: flow_email_count {
    type: number
    sql: ${TABLE}.flow_email_count ;;
  }
  dimension: flow_welcome_count {
    type: number
    sql: ${TABLE}.flow_welcome_count ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension: order_same_day_as_recived_email {
    type: number
    sql: ${TABLE}.order_same_day_as_recived_email ;;
  }
  dimension: order_same_day_as_recived_sms {
    type: number
    sql: ${TABLE}.order_same_day_as_recived_sms ;;
  }
  dimension: order_same_day_email_or_sms {
    type: number
    sql: ${TABLE}.Order_same_day_email_or_SMS ;;
  }
  dimension: phone_before_dg {
    type: string
    sql: ${TABLE}.phone_before_dg ;;
  }
  dimension: promo_email_count {
    type: number
    sql: ${TABLE}.promo_email_count ;;
  }
  dimension: promo_email_count_no_open_as_recived {
    type: number
    sql: ${TABLE}.promo_email_count_no_open_as_recived ;;
  }
  dimension: promo_sms_count {
    type: number
    sql: ${TABLE}.promo_sms_count ;;
  }
  dimension: promo_sms_count_no_click_as_recived {
    type: number
    sql: ${TABLE}.promo_sms_count_no_click_as_recived ;;
  }
  dimension: sms_flow_abandonedbilling_count {
    type: number
    sql: ${TABLE}.sms_flow_abandonedbilling_count ;;
  }
  dimension: sms_flow_abandonedcart_count {
    type: number
    sql: ${TABLE}.sms_flow_abandonedcart_count ;;
  }
  dimension: sms_flow_count {
    type: number
    sql: ${TABLE}.sms_flow_count ;;
  }
  dimension: sms_flow_welcome_count {
    type: number
    sql: ${TABLE}.sms_flow_welcome_count ;;
  }
  dimension: sms_order_same_day_as_recived_sms {
    type: number
    sql: ${TABLE}.sms_order_same_day_as_recived_sms ;;
  }
  dimension: total_email_and_sms_recived {
    type: number
    sql: ${TABLE}.total_email_and_sms_recived ;;
  }
  dimension: total_email_orders {
    type: number
    sql: ${TABLE}.total_email_orders ;;
  }
  dimension: total_email_recived {
    type: number
    sql: ${TABLE}.total_email_recived ;;
  }
  dimension: total_orders {
    type: number
    sql: ${TABLE}.total_orders ;;
  }
  dimension: total_orders_att {
    type: number
    sql: ${TABLE}.total_orders_att ;;
  }
  dimension: total_orders_from_email_and_sms {
    type: number
    sql: ${TABLE}.total_orders_from_email_and_SMS ;;
  }
  dimension: total_sms_orders {
    type: number
    sql: ${TABLE}.total_sms_orders ;;
  }
  dimension: total_sms_recived {
    type: number
    sql: ${TABLE}.total_sms_recived ;;
  }
  measure: count {
    type: count
  }
}
