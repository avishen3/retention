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



# date granularity#

  parameter: Date_Granularity {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }


  dimension: Date_Granularity_date {
    label_from_parameter: Date_Granularity
    sql:
            CASE
             WHEN {% parameter Date_Granularity %} = 'Day' THEN cast(${date_date} as string)
             WHEN {% parameter Date_Granularity %} = 'Week' THEN cast(${date_week} as string)
             WHEN {% parameter Date_Granularity %} = 'Month' THEN cast(${date_month} as string)
             WHEN {% parameter Date_Granularity %} = 'Quarter' THEN cast(${date_quarter} as string)
             WHEN {% parameter Date_Granularity %} = 'Year' THEN cast(${date_year} as string)
            ELSE null
            END ;;
  }



##

  measure: Users_key_dis_count{
    type: count_distinct
    label:"Users Count"
    sql: ${key} ;;
  }

### recived data

  measure: Total_number_of_email_recived{
    type: sum
    label:"Total Email message Recived"
    sql: ${total_email_recived} ;;
  }

  measure: Total_number_of_sms_recived{
    type: sum
    label:"Total SMS message Recived"
    sql: ${total_sms_recived} ;;
  }

  measure: Total_number_of_CRM_message_recived{
    type: number
    label:"Total CRM message Recived"
    sql: ${Total_number_of_email_recived}+${Total_number_of_sms_recived} ;;
  }


  measure: Total_number_of_email_and_sms_from_users_who_recived_both{
    type: sum
    label:"Total CMR when both email and sms not null"
    sql: ${total_email_and_sms_recived} ;;
  }

### order data

  measure: Total_sum_email_orders{
    type: sum
    label:"Total Email order"
    sql: ${total_email_orders} ;;
    group_label: "Orders"

  }

  measure: Total_sum_sms_order{
    type: sum
    label:"Total SMS order"
    sql: ${total_sms_orders} ;;
    group_label: "Orders"

  }


  measure: total_sum_same_day_crm_order{
    type: sum
    label:"CRM Oders from users who recived both attentive and klaviyo that day"
    sql: ${total_orders_from_email_and_sms} ;;
    group_label: "Orders"

  }

  measure: total_sum_order{
    type: sum
    label:"Total orders made by users who received a correspondent that day"
    sql: ${total_orders} ;;
    group_label: "Orders"

  }

  measure: total_email_order_same_day {
    type: sum
    label:"Total Orders same day as recived email from all sources"
    sql: ${order_same_day_as_recived_email} ;;
    group_label: "Orders"

  }

  measure: total_sms_order_same_day {
    type: sum
    label:"Total Orders same day as recived sms from all sources"
    sql: ${order_same_day_as_recived_sms} ;;
    group_label: "Orders"

  }


### spesific users

  measure: total_attentive_only_users {
    type: count_distinct
    sql: case when ${customer_from_platform} = "attentive only" then ${key} else null end ;;
    group_label: "Users"
    value_format: "#,##0"
  }

  measure: total_klaviyo_only_users {
    type: count_distinct
    sql: case when ${customer_from_platform} = "klaviyo only" then ${key} else null end ;;
    group_label: "Users"
    value_format: "#,##0"
  }

  measure: total_both_klaviyo_attentive_users {
    type: count_distinct
    sql: case when ${customer_from_platform} = "both" then ${key} else null end ;;
    group_label: "Users"
    value_format: "#,##0"
  }

  measure: total_attentive_users {
    type: count_distinct
    sql: case when (${customer_from_platform} = "attentive only" or ${customer_from_platform} = "both") then ${key} else null end ;;
    group_label: "Users"
    value_format: "#,##0"
  }

  measure: total_klaviyo_users {
    type: count_distinct
    sql: case when (${customer_from_platform} = "klaviyo only" or ${customer_from_platform} = "both") then ${key} else null end ;;
    group_label: "Users"
    value_format: "#,##0"
  }

}
