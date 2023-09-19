view: attentive_by_user {
  sql_table_name: `omega-post-184817.crm.attentive_by_user` ;;

  dimension: billing_provider_first {
    type: string
    sql: ${TABLE}.billing_provider_first ;;
  }
  dimension: billing_provider_last {
    type: string
    sql: ${TABLE}.billing_provider_last ;;
  }
  dimension: billing_provider_transaction {
    type: string
    sql: ${TABLE}.billing_provider_transaction ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: campaign_type {
    type: string
    sql: ${TABLE}.campaign_type ;;
  }
  dimension: cart_cookie_id {
    type: string
    sql: ${TABLE}.cart_cookie_id ;;
  }
  dimension: cart_cookie_id_we {
    type: string
    sql: ${TABLE}.cart_cookie_id_we ;;
  }
  dimension: cart_id_ao {
    type: string
    sql: ${TABLE}.cart_id_ao ;;
  }
  dimension: click_order_minute_diff {
    type: number
    sql: ${TABLE}.click_order_minute_diff ;;
  }
  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }
  dimension: creative_id {
    type: number
    sql: ${TABLE}.creative_id ;;
  }
  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
  }
  dimension: creative_name_message {
    type: string
    sql: ${TABLE}.creative_name_message ;;
  }
  dimension: creative_subtype {
    type: string
    sql: ${TABLE}.creative_subtype ;;
  }
  dimension: creative_type {
    type: string
    sql: ${TABLE}.creative_type ;;
  }
  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }
  dimension: device_category_first {
    type: string
    sql: ${TABLE}.deviceCategory_first ;;
  }
  dimension: device_category_last {
    type: string
    sql: ${TABLE}.deviceCategory_last ;;
  }
  dimension: device_category_transaction {
    type: string
    sql: ${TABLE}.deviceCategory_transaction ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension_group: first_lead_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.first_lead_created ;;
  }
  dimension: flow_name {
    type: string
    sql: ${TABLE}.flow_name ;;
  }
  dimension: join_source {
    type: string
    sql: ${TABLE}.join_source ;;
  }
  dimension: landing_page_first {
    type: string
    sql: ${TABLE}.landing_page_first ;;
  }
  dimension: landing_page_last {
    type: string
    sql: ${TABLE}.landing_page_last ;;
  }
  dimension: landing_page_transaction {
    type: string
    sql: ${TABLE}.landing_page_transaction ;;
  }
  dimension: marketing_platform {
    type: string
    sql: ${TABLE}.marketing_platform ;;
  }
  dimension: max_funnel_step_first {
    type: string
    sql: ${TABLE}.max_funnel_step_first ;;
  }
  dimension: max_funnel_step_last {
    type: string
    sql: ${TABLE}.max_funnel_step_last ;;
  }
  dimension: max_funnel_step_transaction {
    type: string
    sql: ${TABLE}.max_funnel_step_transaction ;;
  }
  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }
  dimension: message_id {
    type: string
    sql: ${TABLE}.message_id ;;
  }
  dimension: message_name {
    type: string
    sql: ${TABLE}.message_name ;;
  }
  dimension: message_subtype {
    type: string
    sql: ${TABLE}.message_subtype ;;
  }
  dimension: message_text {
    type: string
    sql: ${TABLE}.message_text ;;
  }
  dimension: message_type {
    type: string
    sql: ${TABLE}.message_type ;;
  }
  dimension: number_of_visits_from_sms {
    type: number
    sql: ${TABLE}.number_of_visits_from_sms ;;
  }
  dimension: offer {
    type: string
    sql: ${TABLE}.offer ;;
  }
  dimension_group: order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created ;;
  }
  dimension: orders_marketing_campaign {
    type: string
    sql: ${TABLE}.orders_marketing_campaign ;;
  }
  dimension: orders_marketing_platform {
    type: string
    sql: ${TABLE}.orders_marketing_platform ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: receive_click_minute_diff {
    type: number
    sql: ${TABLE}.receive_click_minute_diff ;;
  }
  dimension: receive_order_minute_diff {
    type: number
    sql: ${TABLE}.receive_order_minute_diff ;;
  }
  dimension: receive_visit_minute_diff {
    type: number
    sql: ${TABLE}.receive_visit_minute_diff ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }
  dimension: sms_clicked {
    type: number
    sql: ${TABLE}.sms_clicked ;;
  }
  dimension: sms_number {
    type: string
    sql: ${TABLE}.sms_number ;;
  }
  dimension_group: sms_order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.sms_order_created ;;
  }
  dimension: sms_order_price {
    type: number
    sql: ${TABLE}.sms_order_price ;;
  }
  dimension: sms_order_tax {
    type: number
    sql: ${TABLE}.sms_order_tax ;;
  }
  dimension: sms_received {
    type: number
    sql: ${TABLE}.sms_received ;;
  }
  dimension: sms_short_id {
    type: string
    sql: ${TABLE}.sms_short_id ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension: subflow {
    type: string
    sql: ${TABLE}.subflow ;;
  }
  dimension: subscription_type {
    type: string
    sql: ${TABLE}.subscription_type ;;
  }
  dimension: test {
    type: string
    sql: ${TABLE}.test ;;
  }
  dimension: time_on_site_first {
    type: number
    sql: ${TABLE}.timeOnSite_first ;;
  }
  dimension: time_on_site_last {
    type: number
    sql: ${TABLE}.timeOnSite_last ;;
  }
  dimension: time_on_site_transaction {
    type: number
    sql: ${TABLE}.timeOnSite_transaction ;;
  }
  dimension_group: ts_first_clicked {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.ts_first_clicked ;;
  }
  dimension_group: ts_first_received {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, day_of_week,
    day_of_week_index]
    datatype: datetime
    sql: ${TABLE}.ts_first_received ;;
  }

  #### date granulraty



  parameter: date_granularity {
    type: string
    description: "Use this selector to change the date granularity of 'Date' dimension only"
    allowed_value: {
      label: "Day"
      value: "Day"
    }
    allowed_value: {
      label: "Week"
      value: "Week"
    }
    allowed_value: {
      label: "Month"
      value: "Month"
    }
    allowed_value: {
      label: "Quarter"
      value: "Quarter"
    }
    allowed_value: {
      label: "Year"
      value: "Year"
    }

    allowed_value: {
      label: "None"
      value: "None"
    }

  }


  dimension: date_ts_first_received_SMS {
    label_from_parameter: date_granularity
    description: "Use 'Date Granularity' selector to modify the date granularity"
    sql:
            CASE
             WHEN {% parameter date_granularity %} = 'Day' THEN cast(${ts_first_received_date} as string)
             WHEN {% parameter date_granularity %} = 'Week' THEN cast(${ts_first_received_week} as string)
             WHEN {% parameter date_granularity %} = 'Month' THEN cast(${ts_first_received_month} as string)
             WHEN {% parameter date_granularity %} = 'Quarter' THEN cast(${ts_first_received_quarter} as string)
             WHEN {% parameter date_granularity %} = 'Year' THEN cast(${ts_first_received_year} as string)
            ELSE null
            END ;;
  }


  dimension: variant {
    type: string
    sql: ${TABLE}.variant ;;
  }
  dimension: visit_order_minute_diff {
    type: number
    sql: ${TABLE}.visit_order_minute_diff ;;
  }
  dimension_group: visit_start_time_first {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.visitStartTime_first ;;
  }
  dimension_group: visit_start_time_last {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.visitStartTime_last ;;
  }
  dimension_group: visit_start_time_transaction {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.visitStartTime_transaction ;;
  }
  dimension: visit_transactionid_first {
    type: string
    sql: ${TABLE}.visit_transactionid_first ;;
  }
  dimension: visit_transactionid_last {
    type: string
    sql: ${TABLE}.visit_transactionid_last ;;
  }
  dimension: visit_transactionid_transaction {
    type: string
    sql: ${TABLE}.visit_transactionid_transaction ;;
  }
  dimension: visitid_first {
    type: number
    sql: ${TABLE}.visitid_first ;;
  }
  dimension: visitid_last {
    type: number
    sql: ${TABLE}.visitid_last ;;
  }
  dimension: visitid_transaction {
    type: number
    sql: ${TABLE}.visitid_transaction ;;
  }
  measure: count {
    type: count
    drill_fields: [creative_name, message_name, campaign_name, flow_name]
  }

#####  Specific SMS Matrics

  measure: Total_Received_specific_SMS{
    type: count_distinct
    sql: concat(${phone},${message_name}) ;;
  }

  measure: Total_Clicked_specific_SMS{
    type: count_distinct
    sql: case when ${ts_first_clicked_raw} is not null then (concat(${phone},${message_name})) end  ;;
  }

  measure: Total_Orders_From_specific_SMS{
    type: count_distinct
    sql: case when ${sms_order_created_raw} is not null then (concat(${phone},${message_name})) end  ;;
  }

  ### revenue and gross profit

  measure: Total_Revenue_From_SMS{
    type: sum_distinct
    sql_distinct_key:  ${sms_short_id} ;;
    sql: case when ${sms_order_created_raw} is not null then ${sms_order_price}-${sms_order_tax} end  ;;

    value_format: "$#,##0"
  }

  measure: Total_price_From_SMS{
    type: sum_distinct
    sql_distinct_key:  ${sms_short_id} ;;
    sql: case when ${sms_order_created_raw} is not null then ${sms_order_price} end  ;;
    value_format: "$0.0"
  }


  measure: Total_tax_From_SMS{
    type: sum_distinct
    sql_distinct_key:  ${sms_short_id} ;;
    sql: case when ${sms_order_created_raw} is not null then ${sms_order_tax} end  ;;
    value_format: "$0.0"
  }

  measure: Total_Order_From_SMS{
    type: count_distinct
    sql: case when ${sms_order_created_raw} is not null then ${sms_short_id} end  ;;
    value_format: "0.0"
  }

  ## AOVs

  measure: AOV{
    type: number
    sql:  case when ${Total_Orders_From_specific_SMS}>0 then ${Total_Revenue_From_SMS} /${Total_Order_From_SMS} else 0 end ;;
    value_format: "$#,##0"
  }




  measure: AOV_revenue_per_clicked_SMS{
    type: number
    sql:  case when ${Total_Clicked_specific_SMS}>0 then ${Total_Revenue_From_SMS} /${Total_Clicked_specific_SMS} else 0 end ;;
    value_format: "$#,##0.0"
  }


  measure: revenue_per_recived_SMS{
    type: number
    sql:  case when ${Total_Received_specific_SMS}>0 then ${Total_Revenue_From_SMS}/${Total_Received_specific_SMS} else 0 end ;;
    value_format: "$0.000"
  }


  measure: revenue_per_1000_received_SMS{
    type: number
    sql:  case when ${Total_Received_specific_SMS}>0 then ${Total_Revenue_From_SMS}/${Total_Received_specific_SMS}*1000 else 0 end ;;
    value_format: "$0"
  }



  measure: Clicked_Rate_specific_SMS{
    type: number
    sql: case when ${Total_Received_specific_SMS}>0 then ${Total_Clicked_specific_SMS}/${Total_Received_specific_SMS} else 0 end    ;;
    value_format: "0.00%"
  }

  measure: Order_from_clicked_Rate_specific_SMS{
    type: number
    sql:  case when ${Total_Clicked_specific_SMS}>0 then ${Total_Orders_From_specific_SMS}/${Total_Clicked_specific_SMS} else 0 end ;;
    value_format: "0.00%"
  }



  ## Order Rate


  measure: Order_from_recived_specific_SMS{
    type: number
    sql:  case when ${Total_Received_specific_SMS}>0 then ${Total_Order_From_SMS}/${Total_Received_specific_SMS} else 0 end ;;
    value_format:  "0.0000%"
  }


### COHORT

  measure: Cohort_SMS_orders_D1{
    label: "Total Cohort SMS orders D1"
    type: count_distinct
    sql: case when (receive_order_minute_diff/60)<=24 then ${sms_short_id} else null  end;;
    value_format: "#,##0"
    group_label: "Cohort email orders"
  }

  measure: Cohort_SMS_orders_D7{
    label: "Total Cohort email orders D7"
    type: count_distinct
    sql: case when (receive_order_minute_diff/60)<=189 then ${sms_short_id} else null  end;;
    value_format: "#,##0"
    group_label: "Cohort email orders"
  }

  measure: Cohort_SMS_orders_D28{
    label: "Total Cohort email orders D28"
    type: count_distinct
    sql: case when (receive_order_minute_diff/60)<=672 then ${sms_short_id} else null  end;;
    value_format: "#,##0"
    group_label: "Cohort email orders"
  }

###

  measure: Cohort_SMS_revenue_D1{
    label: "Total Cohort email revenue D1"
    type: sum
    sql: case when (receive_order_minute_diff/60)<=24 then ${sms_order_price}-${sms_order_tax} else null end;;
    value_format: "$#,##0"
    group_label: "Cohort email revenue"
  }

  measure: Cohort_SMS_revenue_D7{
    label: "Total Cohort email revenue D7"
    type: sum
    sql: case when (receive_order_minute_diff/60)<=189 then ${sms_order_price}-${sms_order_tax} else null end;;
    value_format: "$#,##0"
    group_label: "Cohort email revenue"
  }

  measure: Cohort_SMS_revenue_D28{
    label: "Total Cohort email revenue D28"
    type: sum
    sql: case when (receive_order_minute_diff/60)<=672 then ${sms_order_price}-${sms_order_tax} else null end;;
    value_format: "$#,##0"
    group_label: "Cohort email revenue"
  }


# date comparison received_email_raw

  filter: date_filter {
    type: date
    group_label: "Date Filters"
  }

  filter: date_filter_2 {
    type: date
    group_label: "Date Filters"
    description: "Second date filter for 'Date Comparison' dashboard"
  }

  dimension: compared_period {
    type: string
    sql:
            case
              when {% condition date_filter %} timestamp(${ts_first_received_raw}) {% endcondition %} then 'First period'
              when {% condition date_filter_2 %} timestamp(${ts_first_received_raw}) {% endcondition %} then 'Second period'
            end ;;
  }


  dimension: message_type_filter{
    label: "Flow/Promo/Legal"
    type: string
    sql:  case when ${message_type}  = "AUTOMATED" and (${message_subtype} = "OTHER" or ${message_subtype} ="WELCOME") then "Flow"
            when ${message_type}  = "AUTOMATED" and ${message_subtype} = "LEGAL" then "Legal"
            when ${message_type}  = "ONE_TIME" then "Promo"
            else null end ;;
  }


#####  user metric

  measure: Total_User_Received_SMS{
    type: count_distinct
    sql: ${phone} ;;
  }




  measure: Total_User_OPT_OUT {
    type: count_distinct
    sql: case when ${message_type} = "OPT_OUT" then ${phone} else null end;;
  }



  measure: Total_User_CONFIRM_OPT_IN {
    type: count_distinct
    sql: case when ${message_type} = "CONFIRM_OPT_IN" then ${phone} else null end;;
  }

  measure: Total_User {
    type: count_distinct
    sql:  ${phone} ;;
  }


}
