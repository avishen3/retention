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
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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

  ###


  dimension:  dow_num {
    type:  string
    sql: EXTRACT(DAYOFWEEK FROM ${ts_first_received_date}) ;;
    hidden: yes
  }


  dimension: not_today {
    type: yesno
    sql: ${ts_first_received_date} < current_date('America/Los_Angeles') ;;
    group_label: "Date Filters"
  }


  dimension:  day_of_week {
    label: "Day of Week"
    type:  string
    sql: case
          when ${dow_num} = 1 then 'Sunday'
          when ${dow_num} = 2 then 'Monday'
          when ${dow_num} = 3 then 'Tuesday'
          when ${dow_num} = 4 then 'Wednesday'
          when ${dow_num} = 5 then 'Thursday'
          when ${dow_num} = 6 then 'Friday'
          when ${dow_num} = 7 then 'Saturday'
        end ;;
    order_by_field: dow_num
  }

  parameter: dow_or_not {
    label: "DOW?"
    type: string
    allowed_value: {
      label: "Yes"
      value: "Yes"
    }
    allowed_value: {
      label: "No"
      value: "No"
    }

  }

  dimension: DOW {
    label: "DOW"
    description: "Select 'No' in 'DOW?' selector to deactivate the DOW display"
    sql:
          CASE WHEN {% parameter dow_or_not %} = 'Yes' THEN ${day_of_week}
          ELSE null
          END ;;
  }

  ###


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
    drill_fields: [creative_name, message_name, name, flow_name]
  }

#####  Specific SMS Matrics

  measure: Total_Received_specific_SMS{
    type: count_distinct
    sql: concat(${phone},${message_name}) ;;
  }

  measure: Total_uniqe_users{
    type: count_distinct
    sql: ${phone} ;;
  }


  measure: Total_Clicked_specific_SMS{
    type: count_distinct
    sql: case when ${ts_first_clicked_raw} is not null then (concat(${phone},${message_name})) end  ;;
  }

  measure: Total_Clicked_uniqe_users{
    type: count_distinct
    sql: case when ${ts_first_clicked_raw} is not null then ${phone} end  ;;
  }



    measure: Cohort_SMS_Click_D1{
      label: "Total Cohort SMS Clicked D1"
      type: count_distinct
      sql: case when (receive_click_minute_diff/60)<=24 and ${ts_first_clicked_raw} is not null then (concat(${phone},${message_name})) else null  end;;
      value_format: "#,##0"

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

  measure: AOV_D1{
    type: number
    sql:  case when ${Cohort_SMS_orders_D1}>0 then ${Cohort_SMS_revenue_D1} /${Cohort_SMS_orders_D1} else 0 end ;;
    value_format: "$#,##0.0"
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


  measure: revenue_per_recived_SMS_D1{
    type: number
    sql:  case when ${Total_Received_specific_SMS}>0 then ${Cohort_SMS_revenue_D1}/${Total_Received_specific_SMS} else 0 end ;;
    value_format: "$0.000"
  }


  measure: revenue_per_1000_received_SMS_D1{
    type: number
    sql:  case when ${Total_Received_specific_SMS}>0 then ${Cohort_SMS_revenue_D1}/${Total_Received_specific_SMS}*1000 else 0 end ;;
    value_format: "$0"
  }

  measure: Clicked_Rate_specific_SMS{
    type: number
    sql: case when ${Total_Received_specific_SMS}>0 then ${Total_Clicked_specific_SMS}/${Total_Received_specific_SMS} else 0 end    ;;
    value_format: "0.00%"
  }



  measure: Clicked_Rate_specific_SMS_d1{
    type: number
    sql: case when ${Total_Received_specific_SMS}>0 then ${Cohort_SMS_Click_D1}/${Total_Received_specific_SMS} else 0 end    ;;
    value_format: "0.00%"
  }

  measure: Order_from_clicked_Rate_specific_SMS{
    type: number
    sql:  case when ${Total_Clicked_specific_SMS}>0 then ${Total_Orders_From_specific_SMS}/${Total_Clicked_specific_SMS} else 0 end ;;
    value_format: "0.00%"
  }

  measure: Order_from_clicked_Rate_specific_SMS_D1{
    type: number
    sql:  case when ${Cohort_SMS_Click_D1}>0 then ${Cohort_SMS_orders_D1}/${Cohort_SMS_Click_D1} else 0 end ;;
    value_format: "0.00%"
  }

  ## Order Rate


  measure: Order_from_recived_specific_SMS{
    type: number
    sql:  case when ${Total_Received_specific_SMS}>0 then ${Total_Order_From_SMS}/${Total_Received_specific_SMS} else 0 end ;;
    value_format:  "0.0000%"
  }

  measure: Order_from_recived_specific_SMS_D1{
    type: number
    ##label: "Conversion Rate - order from sent emails - D1"
    sql:  case when ${Total_Received_specific_SMS}>0 then ${Cohort_SMS_orders_D1}/${Total_Received_specific_SMS} else 0 end ;;
    value_format: "0.0000%"
  }


### COHORT

  measure: Cohort_SMS_orders_D1{
    label: "Total Cohort SMS orders D1"
    type: count_distinct
    sql: case when ${sms_order_created_raw} is not null AND  (receive_order_minute_diff/60)<=24 then ${sms_short_id} else null  end;;
    value_format: "#,##0"
    group_label: "Cohort email orders"
  }

  measure: Cohort_SMS_orders_D7{
    label: "Total Cohort email orders D7"
    type: count_distinct
    sql: case when  ${sms_order_created_raw} is not null AND  (receive_order_minute_diff/60)<=189 then ${sms_short_id} else null  end;;
    value_format: "#,##0"
    group_label: "Cohort email orders"
  }

  measure: Cohort_SMS_orders_D28{
    label: "Total Cohort email orders D28"
    type: count_distinct
    sql: case when  ${sms_order_created_raw} is not null AND  (receive_order_minute_diff/60)<=672 then ${sms_short_id} else null  end;;
    value_format: "#,##0"
    group_label: "Cohort email orders"
  }

###

  measure: Cohort_SMS_revenue_D1{
    label: "Total Cohort sms revenue D1"
    type: sum_distinct
    sql_distinct_key:  ${sms_short_id} ;;
    sql: case when  (${sms_order_created_raw} is not null AND  (receive_order_minute_diff/60)<=24) then ${sms_order_price}-${sms_order_tax} else null end;;
    value_format: "$#,##0"
    group_label: "Cohort email revenue"
  }

  measure: Cohort_SMS_revenue_D7{
    label: "Total Cohort sms revenue D7"
    type: sum_distinct
    sql_distinct_key:  ${sms_short_id} ;;
    sql: case when  ${sms_order_created_raw} is not null AND  (receive_order_minute_diff/60)<=189 then ${sms_order_price}-${sms_order_tax} else null end;;
    value_format: "$#,##0"
    group_label: "Cohort email revenue"
  }

  measure: Cohort_SMS_revenue_D28{
    label: "Total Cohort sms revenue D28"
    type: sum_distinct
    sql_distinct_key:  ${sms_short_id} ;;
    sql: case when  ${sms_order_created_raw} is not null AND  (receive_order_minute_diff/60)<=672 then ${sms_order_price}-${sms_order_tax} else null end;;
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


# date comparison received_email_raw

  filter: date_filter_attentive_LC{
    type: date
    group_label: "Date Filters Attentive LC"
  }

  filter: date_filter_attentive_LC_2 {
    type: date
    group_label: "Date Filters Attentive LC"
    description: "Second date filter for 'Date Comparison Attentive LC' dashboard"
  }

  dimension: compared_period_attentive_LC{
    type: string
    sql:
            case
              when {% condition date_filter_attentive_LC %} timestamp(${first_lead_created_raw}) {% endcondition %} then 'First period'
              when {% condition date_filter_attentive_LC_2 %} timestamp(${first_lead_created_raw}) {% endcondition %} then 'Second period'
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

## LC Date diff



  dimension: first_lc_sms_order_minute_diff {
    type: number
    sql: ${TABLE}.first_lc_sms_order_minute_diff ;;
  }

  dimension: first_lc_order_minute_diff {
    type: number
    sql: ${TABLE}.first_lc_order_minute_diff ;;
  }

  dimension: first_lc_order_day_diff_AGG {
    type: string
    sql: case
              when ${first_lc_order_minute_diff} < 0 then null
              when ${first_lc_order_minute_diff} < 60*24 then "A:0"
              when ${first_lc_order_minute_diff} between 1*60*24 and 14*60*24 then "B:1-14"
              when ${first_lc_order_minute_diff} between 14*60*24 and 30*60*24 then "C:15-30"
              when ${first_lc_order_minute_diff} between 30*60*24 and 60*60*24 then "D:31-60"
              when ${first_lc_order_minute_diff} between 60*60*24 and 90*60*24 then "E:61-90"
              When ${first_lc_order_minute_diff} between 90*60*24 and 180*60*24 then "F:91-180"
              when ${first_lc_order_minute_diff} > 180*60*24 then "G:180+"
              ELSE null end
    ;;
  }

  dimension: first_lc_sms_order_day_diff_AGG {
    type: string
    sql: case
              when ${first_lc_sms_order_minute_diff} < 0 then null
              when ${first_lc_sms_order_minute_diff} < 60*24 then "A:0"
              when ${first_lc_sms_order_minute_diff} between 1*60*24 and 14*60*24 then "B:1-14"
              when ${first_lc_sms_order_minute_diff} between 14*60*24 and 30*60*24 then "C:15-30"
              when ${first_lc_sms_order_minute_diff} between 30*60*24 and 60*60*24 then "D:31-60"
              when ${first_lc_sms_order_minute_diff} between 60*60*24 and 90*60*24 then "E:61-90"
              When ${first_lc_sms_order_minute_diff} between 90*60*24 and 180*60*24 then "F:91-180"
              when ${first_lc_sms_order_minute_diff} > 180*60*24 then "G:180+"
              ELSE null end
    ;;
  }

  dimension: first_lc_sms_order_day_diff_up_to_22 {
    type: string
    sql: case
              when ${first_lc_sms_order_minute_diff} < 0 then null
              when ${first_lc_sms_order_minute_diff} < 60*24*1 then "a:1"
              when ${first_lc_sms_order_minute_diff} < 60*24*2 then "b:2"
              when ${first_lc_sms_order_minute_diff} < 60*24*3 then "c:3"
              when ${first_lc_sms_order_minute_diff} < 60*24*4 then "d:4"
              when ${first_lc_sms_order_minute_diff} < 60*24*5 then "e:5"
              when ${first_lc_sms_order_minute_diff} < 60*24*6 then "f:6"
              when ${first_lc_sms_order_minute_diff} < 60*24*7 then "g:7"
              when ${first_lc_sms_order_minute_diff} < 60*24*8 then "h:8"
              when ${first_lc_sms_order_minute_diff} < 60*24*9 then "i:9"
              when ${first_lc_sms_order_minute_diff} < 60*24*10 then "j:10"
              when ${first_lc_sms_order_minute_diff} < 60*24*11 then "k:11"
              when ${first_lc_sms_order_minute_diff} < 60*24*12 then "l:12"
              when ${first_lc_sms_order_minute_diff} < 60*24*13 then "m:13"
              when ${first_lc_sms_order_minute_diff} < 60*24*14 then "n:14"
              when ${first_lc_sms_order_minute_diff} < 60*24*15 then "o:15"
              when ${first_lc_sms_order_minute_diff} < 60*24*16 then "p:16"
              when ${first_lc_sms_order_minute_diff} < 60*24*17 then "q:17"
              when ${first_lc_sms_order_minute_diff} < 60*24*18 then "r:18"
              when ${first_lc_sms_order_minute_diff} < 60*24*19 then "s:19"
              when ${first_lc_sms_order_minute_diff} < 60*24*20 then "t:20"
              when ${first_lc_sms_order_minute_diff} < 60*24*21 then "u:21"
              when ${first_lc_sms_order_minute_diff} < 60*24*22 then "v:22"

              ELSE null end
    ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

#### first LC data



  dimension: first_lc_widget {
    type: string
    sql: ${TABLE}.first_lc_widget ;;
  }

  dimension: first_lc_marketing_platform {
    type: string
    sql: ${TABLE}.first_lc_marketing_platform ;;
  }

  dimension: first_lc_device {
    type: string
    sql: ${TABLE}.first_lc_device ;;
  }

  dimension: first_lc_source {
    type: string
    sql: ${TABLE}.first_lc_source ;;
  }

  dimension: first_lc_medium {
    type: string
    sql: ${TABLE}.first_lc_medium ;;
  }

  dimension: first_lc_campaign {
    type: string
    sql: ${TABLE}.first_lc_campaign ;;
  }

  dimension: first_lc_campaign_id {
    type: string
    sql: ${TABLE}.first_lc_campaign_id ;;
  }

  dimension: first_lc_adset_id {
    type: string
    sql: ${TABLE}.first_lc_adset_id ;;
  }

  dimension: first_lc_ad_id {
    type: string
    sql: ${TABLE}.first_lc_ad_id ;;
  }

  dimension: first_lc_gclid {
    type: string
    sql: ${TABLE}.first_lc_gclid ;;
  }

  dimension: first_lc_account_name {
    type: string
    sql: ${TABLE}.first_lc_account_name ;;
  }


### SMS ai

  dimension: Character_Count {
    type: string
    sql: ${TABLE}.Character_Count ;;
  }

  dimension: Category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: Label {
    type: string
    sql: ${TABLE}.Label ;;
  }

  dimension: Discount {
    type: string
    sql: ${TABLE}.Discount ;;
  }

  dimension: Emotion {
    type: string
    sql: ${TABLE}.Emotion ;;
  }

  dimension: Emoji {
    type: string
    sql: ${TABLE}.Emoji ;;
  }

  dimension: Code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: Adjustable {
    type: string
    sql: ${TABLE}.Adjustable ;;
  }

  dimension: Warranty {
    type: string
    sql: ${TABLE}.Warranty ;;
  }

  dimension: _365 {
    type: string
    sql: ${TABLE}._365 ;;
  }

  dimension: Trial {
    type: string
    sql: ${TABLE}.Trial ;;
  }

  dimension: Percent {
    type: string
    sql: ${TABLE}.Percent ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }


#### MTA Like dash build 06/2024


### dimensions selectors

## DIMENTION 1

  parameter: dimension_selector_CRM_1 {
    type: unquoted
    allowed_value: {
      label: "type"
      value: "type"
    }
    allowed_value: {
      label: "flow_name"
      value: "flow_name"
    }
    allowed_value: {
      label: "subflow"
      value: "subflow"
    }
    allowed_value: {
      label: "sms_number"
      value: "sms_number"
    }
    allowed_value: {
      label: "customer_type"
      value: "customer_type"
    }
    allowed_value: {
      label: "campaign_name"
      value: "campaign_name"
    }
    allowed_value: {
      label: "offer"
      value: "offer"
    }
    allowed_value: {
      label: "test"
      value: "test"
    }
    allowed_value: {
      label: "variant"
      value: "variant"
    }
    allowed_value: {
      label: "brand"
      value: "brand"
    }
    allowed_value: {
      label: "join_source"
      value: "join_source"
    }
    allowed_value: {
      label: "subscription_type"
      value: "subscription_type"
    }
    allowed_value: {
      label: "Character_Count"
      value: "Character_Count"
    }
    allowed_value: {
      label: "Category"
      value: "Category"
    }
    allowed_value: {
      label: "Label"
      value: "Label"
    }
    allowed_value: {
      label: "Discount"
      value: "Discount"
    }
    allowed_value: {
      label: "Emotion"
      value: "Emotion"
    }

    allowed_value: {
      label: "Code"
      value: "Code"
    }
    allowed_value: {
      label: "Adjustable"
      value: "Adjustable"
    }

    allowed_value: {
      label: "Trial"
      value: "Trial"
    }

    allowed_value: {
      label: "Warranty"
      value: "Warranty"
    }

    allowed_value: {
      label: "_365"
      value: "_365"
    }

    allowed_value: {
      label: "Percent"
      value: "Percent"
    }

    allowed_value: {
      label: "None"
      value: "None"
    }
    group_label: "Advanced Selectors"
  }



  dimension: dimension_CRM_1 {
    type: string
    sql:
      {% if dimension_selector_CRM_1._parameter_value == 'type' %}
            ${type}
      {% elsif dimension_selector_CRM_1._parameter_value == 'flow_name' %}
            ${flow_name}
      {% elsif dimension_selector_CRM_1._parameter_value == 'subflow' %}
            ${subflow}
      {% elsif dimension_selector_CRM_1._parameter_value == 'sms_number' %}
            ${sms_number}
      {% elsif dimension_selector_CRM_1._parameter_value == 'customer_type' %}
            ${customer_type}
      {% elsif dimension_selector_CRM_1._parameter_value == 'campaign_name' %}
            ${name}
      {% elsif dimension_selector_CRM_1._parameter_value == 'offer' %}
            ${offer}
      {% elsif dimension_selector_CRM_1._parameter_value == 'test' %}
            ${test}
      {% elsif dimension_selector_CRM_1._parameter_value == 'variant' %}
            ${variant}
      {% elsif dimension_selector_CRM_1._parameter_value == 'brand' %}
            ${brand}
      {% elsif dimension_selector_CRM_1._parameter_value == 'join_source' %}
            ${join_source}
      {% elsif dimension_selector_CRM_1._parameter_value == 'subscription_type' %}
            ${subscription_type}
      {% elsif dimension_selector_CRM_1._parameter_value == 'Character_Count' %}
            ${Character_Count}
      {% elsif dimension_selector_CRM_1._parameter_value == 'Category' %}
            ${Category}
      {% elsif dimension_selector_CRM_1._parameter_value == 'Label' %}
            ${Label}
      {% elsif dimension_selector_CRM_1._parameter_value == 'Discount' %}
            ${Discount}
      {% elsif dimension_selector_CRM_1._parameter_value == 'Emotion' %}
            ${Emotion}
      {% elsif dimension_selector_CRM_1._parameter_value == 'Code' %}
            ${Code}
      {% elsif dimension_selector_CRM_1._parameter_value == 'Adjustable' %}
            ${Adjustable}
      {% elsif dimension_selector_CRM_1._parameter_value == 'Warranty' %}
            ${Warranty}
      {% elsif dimension_selector_CRM_1._parameter_value == '_365' %}
            ${_365}
      {% elsif dimension_selector_CRM_1._parameter_value == 'Trial' %}
            ${Trial}
      {% elsif dimension_selector_CRM_1._parameter_value == 'Percent' %}
            ${Percent}
          {% else %}
            null
          {% endif %};;
    label_from_parameter: dimension_selector_CRM_1
    group_label: "Advanced Dimensions"
  }


  ##### 2

  parameter: dimension_selector_CRM_2 {
    type: unquoted
    allowed_value: {
      label: "type"
      value: "type"
    }
    allowed_value: {
      label: "flow_name"
      value: "flow_name"
    }
    allowed_value: {
      label: "subflow"
      value: "subflow"
    }
    allowed_value: {
      label: "sms_number"
      value: "sms_number"
    }
    allowed_value: {
      label: "customer_type"
      value: "customer_type"
    }
    allowed_value: {
      label: "campaign_name"
      value: "campaign_name"
    }
    allowed_value: {
      label: "offer"
      value: "offer"
    }
    allowed_value: {
      label: "test"
      value: "test"
    }
    allowed_value: {
      label: "variant"
      value: "variant"
    }
    allowed_value: {
      label: "brand"
      value: "brand"
    }
    allowed_value: {
      label: "join_source"
      value: "join_source"
    }
    allowed_value: {
      label: "subscription_type"
      value: "subscription_type"
    }
    allowed_value: {
      label: "Character_Count"
      value: "Character_Count"
    }
    allowed_value: {
      label: "Category"
      value: "Category"
    }
    allowed_value: {
      label: "Label"
      value: "Label"
    }
    allowed_value: {
      label: "Discount"
      value: "Discount"
    }
    allowed_value: {
      label: "Emotion"
      value: "Emotion"
    }

    allowed_value: {
      label: "Code"
      value: "Code"
    }
    allowed_value: {
      label: "Adjustable"
      value: "Adjustable"
    }

    allowed_value: {
      label: "Trial"
      value: "Trial"
    }

    allowed_value: {
      label: "Warranty"
      value: "Warranty"
    }

    allowed_value: {
      label: "_365"
      value: "_365"
    }

    allowed_value: {
      label: "Percent"
      value: "Percent"
    }

    allowed_value: {
      label: "None"
      value: "None"
    }
    group_label: "Advanced Selectors"
  }



  dimension: dimension_CRM_2 {
    type: string
    sql:
      {% if dimension_selector_CRM_2._parameter_value == 'type' %}
            ${type}
      {% elsif dimension_selector_CRM_2._parameter_value == 'flow_name' %}
            ${flow_name}
      {% elsif dimension_selector_CRM_2._parameter_value == 'subflow' %}
            ${subflow}
      {% elsif dimension_selector_CRM_2._parameter_value == 'sms_number' %}
            ${sms_number}
      {% elsif dimension_selector_CRM_2._parameter_value == 'customer_type' %}
            ${customer_type}
      {% elsif dimension_selector_CRM_2._parameter_value == 'campaign_name' %}
            ${name}
      {% elsif dimension_selector_CRM_2._parameter_value == 'offer' %}
            ${offer}
      {% elsif dimension_selector_CRM_2._parameter_value == 'test' %}
            ${test}
      {% elsif dimension_selector_CRM_1._parameter_value == 'variant' %}
            ${variant}
      {% elsif dimension_selector_CRM_2._parameter_value == 'brand' %}
            ${brand}
      {% elsif dimension_selector_CRM_2._parameter_value == 'join_source' %}
            ${join_source}
      {% elsif dimension_selector_CRM_2._parameter_value == 'subscription_type' %}
            ${subscription_type}
      {% elsif dimension_selector_CRM_2._parameter_value == 'Character_Count' %}
            ${Character_Count}
      {% elsif dimension_selector_CRM_2._parameter_value == 'Category' %}
            ${Category}
      {% elsif dimension_selector_CRM_2._parameter_value == 'Label' %}
            ${Label}
      {% elsif dimension_selector_CRM_2._parameter_value == 'Discount' %}
            ${Discount}
      {% elsif dimension_selector_CRM_2._parameter_value == 'Emotion' %}
            ${Emotion}
      {% elsif dimension_selector_CRM_2._parameter_value == 'Code' %}
            ${Code}
      {% elsif dimension_selector_CRM_2._parameter_value == 'Adjustable' %}
            ${Adjustable}
      {% elsif dimension_selector_CRM_2._parameter_value == 'Warranty' %}
            ${Warranty}
      {% elsif dimension_selector_CRM_2._parameter_value == '_365' %}
            ${_365}
      {% elsif dimension_selector_CRM_2._parameter_value == 'Trial' %}
            ${Trial}
      {% elsif dimension_selector_CRM_2._parameter_value == 'Percent' %}
            ${Percent}
          {% else %}
            null
          {% endif %};;
    label_from_parameter: dimension_selector_CRM_2
    group_label: "Advanced Dimensions"
  }



  #### 3


  parameter: dimension_selector_CRM_3 {
    type: unquoted
    allowed_value: {
      label: "type"
      value: "type"
    }
    allowed_value: {
      label: "flow_name"
      value: "flow_name"
    }
    allowed_value: {
      label: "subflow"
      value: "subflow"
    }
    allowed_value: {
      label: "sms_number"
      value: "sms_number"
    }
    allowed_value: {
      label: "customer_type"
      value: "customer_type"
    }
    allowed_value: {
      label: "campaign_name"
      value: "campaign_name"
    }
    allowed_value: {
      label: "offer"
      value: "offer"
    }
    allowed_value: {
      label: "test"
      value: "test"
    }
    allowed_value: {
      label: "variant"
      value: "variant"
    }
    allowed_value: {
      label: "brand"
      value: "brand"
    }
    allowed_value: {
      label: "join_source"
      value: "join_source"
    }
    allowed_value: {
      label: "subscription_type"
      value: "subscription_type"
    }
    allowed_value: {
      label: "Character_Count"
      value: "Character_Count"
    }
    allowed_value: {
      label: "Category"
      value: "Category"
    }
    allowed_value: {
      label: "Label"
      value: "Label"
    }
    allowed_value: {
      label: "Discount"
      value: "Discount"
    }
    allowed_value: {
      label: "Emotion"
      value: "Emotion"
    }

    allowed_value: {
      label: "Code"
      value: "Code"
    }
    allowed_value: {
      label: "Adjustable"
      value: "Adjustable"
    }

    allowed_value: {
      label: "Trial"
      value: "Trial"
    }

    allowed_value: {
      label: "Warranty"
      value: "Warranty"
    }

    allowed_value: {
      label: "_365"
      value: "_365"
    }

    allowed_value: {
      label: "Percent"
      value: "Percent"
    }

    allowed_value: {
      label: "None"
      value: "None"
    }
    group_label: "Advanced Selectors"
  }



  dimension: dimension_CRM_3 {
    type: string
    sql:
     {% if dimension_selector_CRM_3._parameter_value == 'type' %}
            ${type}
      {% elsif dimension_selector_CRM_3._parameter_value == 'flow_name' %}
            ${flow_name}
      {% elsif dimension_selector_CRM_3._parameter_value == 'subflow' %}
            ${subflow}
      {% elsif dimension_selector_CRM_3._parameter_value == 'sms_number' %}
            ${sms_number}
      {% elsif dimension_selector_CRM_3._parameter_value == 'customer_type' %}
            ${customer_type}
      {% elsif dimension_selector_CRM_3._parameter_value == 'campaign_name' %}
            ${name}
      {% elsif dimension_selector_CRM_3._parameter_value == 'offer' %}
            ${offer}
      {% elsif dimension_selector_CRM_3._parameter_value == 'test' %}
            ${test}
      {% elsif dimension_selector_CRM_3._parameter_value == 'variant' %}
            ${variant}
      {% elsif dimension_selector_CRM_3._parameter_value == 'brand' %}
            ${brand}
      {% elsif dimension_selector_CRM_3._parameter_value == 'join_source' %}
            ${join_source}
      {% elsif dimension_selector_CRM_3._parameter_value == 'subscription_type' %}
            ${subscription_type}
      {% elsif dimension_selector_CRM_3._parameter_value == 'Character_Count' %}
            ${Character_Count}
      {% elsif dimension_selector_CRM_3._parameter_value == 'Category' %}
            ${Category}
      {% elsif dimension_selector_CRM_3._parameter_value == 'Label' %}
            ${Label}
      {% elsif dimension_selector_CRM_3._parameter_value == 'Discount' %}
            ${Discount}
      {% elsif dimension_selector_CRM_3._parameter_value == 'Emotion' %}
            ${Emotion}
      {% elsif dimension_selector_CRM_3._parameter_value == 'Code' %}
            ${Code}
      {% elsif dimension_selector_CRM_3._parameter_value == 'Adjustable' %}
            ${Adjustable}
      {% elsif dimension_selector_CRM_3._parameter_value == 'Warranty' %}
            ${Warranty}
      {% elsif dimension_selector_CRM_3._parameter_value == '_365' %}
            ${_365}
      {% elsif dimension_selector_CRM_3._parameter_value == 'Trial' %}
            ${Trial}
      {% elsif dimension_selector_CRM_3._parameter_value == 'Percent' %}
            ${Percent}
          {% else %}
            null
          {% endif %};;
    label_from_parameter: dimension_selector_CRM_3
    group_label: "Advanced Dimensions"
  }


  #### index metric - 24/06



  parameter: Index_selector_1 {
    label: "Index Selector 1"
    type: unquoted

    allowed_value: {
      label: "Click Rate"
      value: "Clicked_Rate_specific_SMS"
    }
    allowed_value: {
      label: "Conversion (Orders/Del)"
      value: "Order_from_recived_specific_SMS"
    }
    allowed_value: {
      label: "Rev/1k Delivered"
      value: "revenue_per_1000_received_SMS"
    }

    allowed_value: {
      label: "AOV"
      value: "AOV"
    }

    allowed_value: {
      label: "none"
      value: "none"
    }
    group_label: "Advanced Selectors"
  }



  measure: Index_1 {
    label: "Index - 1"
    type: number
    sql:

      {% if Index_selector_1._parameter_value == 'Clicked_Rate_specific_SMS' %}
        ${Clicked_Rate_specific_SMS}
       {% elsif Index_selector_1._parameter_value == 'Order_from_recived_specific_SMS' %}
        ${Order_from_recived_specific_SMS}
       {% elsif Index_selector_1._parameter_value == 'revenue_per_1000_received_SMS' %}
        ${revenue_per_1000_received_SMS}
       {% elsif Index_selector_1._parameter_value == 'AOV' %}
        ${AOV}
      {% else %}
        null
      {% endif %};;
    label_from_parameter: Index_selector_1
    value_format: "0.00"
    group_label: "Advanced Measures"
  }

#### 2

  parameter: Index_selector_2 {
    label: "Index Selector 2"
    type: unquoted

    allowed_value: {
      label: "Click Rate"
      value: "Clicked_Rate_specific_SMS"
    }
    allowed_value: {
      label: "Conversion (Orders/Del)"
      value: "Order_from_recived_specific_SMS"
    }
    allowed_value: {
      label: "Rev/1k Delivered"
      value: "revenue_per_1000_received_SMS"
    }

    allowed_value: {
      label: "AOV"
      value: "AOV"
    }

    allowed_value: {
      label: "none"
      value: "none"
    }
    group_label: "Advanced Selectors"
  }



  measure: Index_2 {
    label: "Index - 2"
    type: number
    sql:

      {% if Index_selector_2._parameter_value == 'Clicked_Rate_specific_SMS' %}
        ${Clicked_Rate_specific_SMS}
       {% elsif Index_selector_2._parameter_value == 'Order_from_recived_specific_SMS' %}
        ${Order_from_recived_specific_SMS}
       {% elsif Index_selector_2._parameter_value == 'revenue_per_1000_received_SMS' %}
        ${revenue_per_1000_received_SMS}
       {% elsif Index_selector_2._parameter_value == 'AOV' %}
        ${AOV}
      {% else %}
        null
      {% endif %};;
    label_from_parameter: Index_selector_2
    value_format: "0.00"
    group_label: "Advanced Measures"
  }


#### 3

  parameter: Index_selector_3 {
    label: "Index Selector 3"
    type: unquoted

    allowed_value: {
      label: "Click Rate"
      value: "Clicked_Rate_specific_SMS"
    }
    allowed_value: {
      label: "Conversion (Orders/Del)"
      value: "Order_from_recived_specific_SMS"
    }
    allowed_value: {
      label: "Rev/1k Delivered"
      value: "revenue_per_1000_received_SMS"
    }

    allowed_value: {
      label: "AOV"
      value: "AOV"
    }

    allowed_value: {
      label: "none"
      value: "none"
    }
    group_label: "Advanced Selectors"
  }



  measure: Index_3 {
    label: "Index - 3"
    type: number
    sql:

      {% if Index_selector_3._parameter_value == 'Clicked_Rate_specific_SMS' %}
        ${Clicked_Rate_specific_SMS}
       {% elsif Index_selector_3._parameter_value == 'Order_from_recived_specific_SMS' %}
        ${Order_from_recived_specific_SMS}
       {% elsif Index_selector_3._parameter_value == 'revenue_per_1000_received_SMS' %}
        ${revenue_per_1000_received_SMS}
       {% elsif Index_selector_3._parameter_value == 'AOV' %}
        ${AOV}
      {% else %}
        null
      {% endif %};;
    label_from_parameter: Index_selector_3
    value_format: "0.00"
    group_label: "Advanced Measures"
  }

  measure: message_count{
    type: count_distinct
    label:"Message Count"
    sql: ${campaign} ;;
  }


  dimension: launch_date {
    type: string
    sql: ${TABLE}.launch_date ;;
  }


  dimension: ad_type {
    type: string
    sql: ${TABLE}.ad_type ;;
  }

  dimension: wildCard {
    type: string
    sql: ${TABLE}.wildCard ;;
  }

  dimension: week {
    type: string
    sql: ${TABLE}.week ;;
  }

  dimension: landing_page {
    type: string
    sql: ${TABLE}.landing_page ;;
  }

  dimension: length {
    type: string
    sql: ${TABLE}.length ;;
  }

  dimension: cta {
    type: string
    sql: ${TABLE}.cta ;;
  }
  dimension: sender {
    type: string
    sql: ${TABLE}.sender ;;
  }
  dimension: sms_brand {
    type: string
    sql: ${TABLE}.sms_brand ;;
  }
  dimension: theme {
    type: string
    sql: ${TABLE}.theme ;;
  }

 dimension: subtype {
    type: string
    sql: ${TABLE}.subtype ;;
  }
  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }

## 06-07-2025

  dimension: sms_product_cogs {
    type: number
    sql: ${TABLE}.sms_product_cogs ;;
  }

  dimension: sms_shipping_cogs {
    type: number
    sql: ${TABLE}.sms_product_cogs ;;
  }

  dimension: SMS_Order_Margin_Cogs {
    type: number
    sql: ${sms_order_price}-${sms_product_cogs} ;;
  }

  dimension: SMS_Order_Margin_Cogs_and_Shipping{
    type: number
    sql: ${sms_order_price}-(${sms_product_cogs}+${sms_shipping_cogs} ;;
  }



  dimension: is_add_to_cart {
    type: number
    sql: ${TABLE}.is_add_to_cart ;;
  }

  measure: Total_add_to_cart_specific_SMS{
    type: count_distinct
    sql: case when ${is_add_to_cart} = 1 then (concat(${phone},${message_name})) end  ;;
  }

  measure: Total_add_to_cart_uniqe_users{
    type: count_distinct
    sql: case when ${is_add_to_cart} = 1  then ${phone} end  ;;
  }

  dimension: page_url_link_tracker {
    type: string
    sql: ${TABLE}.page_url_link_tracker ;;
    group_label: "page url tracker"
  }


  dimension: first_url_from_link_tracker {
    type: string
    sql: REGEXP_EXTRACT(${page_url_link_tracker},  '^([^\\(]+)') ;;
    ##description: "Extracts the first URL from the raw data string."
    group_label: "page url tracker"

}
    dimension: first_url_clicks {
    type: number
    sql: CAST(REGEXP_EXTRACT(${page_url_link_tracker}, '^[^\\(]+\\s*\\((\\d+)\\)') AS INT64)  ;;
     ## description: "Extracts the click count for the first URL and casts it to an integer."
      group_label: "page url tracker"
}



}
