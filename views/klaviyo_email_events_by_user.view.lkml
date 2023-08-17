view: klaviyo_email_events_by_user {
  sql_table_name: `omega-post-184817.customer.klaviyo_email_events_by_user`
    ;;



  dimension: domain_name {
    type: string
    sql: ${TABLE}.domain_name ;;
  }

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

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: campaign_type {
    type: string
    sql: ${TABLE}.campaign_type ;;
  }

  dimension: cartid {
    type: string
    sql: ${TABLE}.cartid ;;
  }

  dimension: click_eorder_minute_diff {
    type: number
    sql: ${TABLE}.click_eorder_minute_diff ;;
  }

  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
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

  dimension: email_number {
    type: string
    sql: ${TABLE}.email_number ;;
  }

  dimension_group: email_order_created {
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
    sql: ${TABLE}.email_order_created ;;
  }

  dimension: email_order_price {
    type: number
    sql: ${TABLE}.email_order_price ;;
  }

  dimension: email_order_tax {
    type: number
    sql: ${TABLE}.email_order_tax ;;
  }

  dimension: email_short_id {
    type: string
    sql: ${TABLE}.email_short_id ;;
  }

  dimension: email_subject {
    type: string
    sql: ${TABLE}.email_subject ;;
  }

  dimension: first_lc_order_day_diff {
    type: number
    sql: ${TABLE}.first_lc_order_day_diff ;;
  }

  dimension_group: first_lc_ts {
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
    sql: ${TABLE}.first_lc_ts ;;
  }

  dimension: first_lc_widget {
    type: string
    sql: ${TABLE}.first_lc_widget ;;
  }

  dimension: flow_id {
    type: string
    sql: ${TABLE}.flow_id ;;
  }

  dimension: flow_name {
    type: string
    sql: ${TABLE}.flow_name ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: is_checkout_lead {
    type: yesno
    sql: ${TABLE}.is_checkout_lead ;;
  }

  dimension: klaviyo_flow_name {
    type: string
    sql: ${TABLE}.klaviyo_flow_name ;;
  }

  dimension_group: klaviyo_lead_created {
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
    sql: ${TABLE}.klaviyo_lead_created ;;
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

  dimension: last_lc_order_day_diff {
    type: number
    sql: ${TABLE}.last_lc_order_day_diff ;;
  }

  dimension_group: last_lc_ts {
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
    sql: ${TABLE}.last_lc_ts ;;
  }

  dimension: last_lc_widget {
    type: string
    sql: ${TABLE}.last_lc_widget ;;
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

  dimension: missing_ts_received_email {
    type: yesno
    sql: ${TABLE}.missing_ts_Received_email ;;
  }

  dimension: num_bounced_email {
    type: number
    sql: ${TABLE}.num_bounced_email ;;
  }

  dimension: num_clicked_email {
    type: number
    sql: ${TABLE}.num_clicked_email ;;
  }

  dimension: num_dropped_email {
    type: number
    sql: ${TABLE}.num_dropped_email ;;
  }

  dimension: num_lc {
    type: number
    sql: ${TABLE}.num_lc ;;
  }

  dimension: num_marked_spam {
    type: number
    sql: ${TABLE}.num_marked_spam ;;
  }

  dimension: num_opened_email {
    type: number
    sql: ${TABLE}.num_opened_email ;;
  }

  dimension: num_received_email {
    type: number
    sql: ${TABLE}.num_Received_email ;;
  }

  dimension: num_sub {
    type: number
    sql: ${TABLE}.num_sub ;;
  }

  dimension: num_unsub {
    type: number
    sql: ${TABLE}.num_unsub ;;
  }

  dimension: num_unsub_list {
    type: number
    sql: ${TABLE}.num_unsub_list ;;
  }

  dimension: number_of_visits_from_email {
    type: number
    sql: ${TABLE}.number_of_visits_from_email ;;
  }

  dimension: offer {
    type: string
    sql: ${TABLE}.offer ;;
  }

  dimension: open_click_minute_diff {
    type: number
    sql: ${TABLE}.open_click_minute_diff ;;
  }

  dimension: open_eorder_minute_diff {
    type: number
    sql: ${TABLE}.open_eorder_minute_diff ;;
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

  dimension: order_marketing_campaign {
    type: string
    sql: ${TABLE}.order_marketing_campaign ;;
  }

  dimension: order_marketing_platform {
    type: string
    sql: ${TABLE}.order_marketing_platform ;;
  }

  dimension: first_lc_marketing_platform {
    type: string
    sql: ${TABLE}.first_lc_marketing_platform ;;
  }

  dimension: last_lc_marketing_platform {
    type: string
    sql: ${TABLE}.last_lc_marketing_platform ;;
  }





  dimension: promo_or_flow {
    type: string
    sql: ${TABLE}.promo_or_flow ;;
  }


  dimension: promo_or_sale_flow {
    type: string
    sql: case when ${promo_or_flow} = "promo" then "promo"
              when ${promo_or_flow} = "flow" and (lower(${flow_name}) like "%abandon%"  or lower(${flow_name}) like "%welcome%"or lower(${flow_name}) like "%reactivation%") then "Marketing Flow"
              else "Transactional Flow" end
    ;;
  }


  dimension: is_not_sale_flow{
    type: yesno
    sql: ${promo_or_flow} = "flow" and (lower(${flow_name}) like "%abandon%" or lower(${flow_name}) like "%cart_link%"  or lower(${flow_name}) like "%welcome%"or lower(${flow_name}) like "%reactivation%")
    ;;
  }




  dimension: receive_click_minute_diff {
    type: number
    sql: ${TABLE}.receive_click_minute_diff ;;
  }

  dimension: receive_eorder_minute_diff {
    type: number
    sql: ${TABLE}.receive_eorder_minute_diff ;;
  }

  dimension: receive_open_minute_diff {
    type: number
    sql: ${TABLE}.receive_open_minute_diff ;;
  }

  dimension: receive_visit_minute_diff {
    type: number
    sql: ${TABLE}.receive_visit_minute_diff ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: subflow_name {
    type: string
    sql: ${TABLE}.subflow_name ;;
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

  dimension_group: ts_bounced_email {
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
    sql: ${TABLE}.ts_bounced_email ;;
  }

  dimension_group: ts_clicked_email {
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
    sql: ${TABLE}.ts_clicked_email ;;
  }

  dimension_group: ts_dropped_email {
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
    sql: ${TABLE}.ts_dropped_email ;;
  }

  dimension_group: ts_marked_spam {
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
    sql: ${TABLE}.ts_marked_spam ;;
  }

  dimension_group: ts_opened_email {
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
    sql: ${TABLE}.ts_opened_email ;;
  }

  dimension_group: ts_received_email {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      day_of_week,
    day_of_week_index,
      year
    ]
    sql: ${TABLE}.ts_Received_email ;;
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


  dimension: date_ts_received_email {
    label_from_parameter: date_granularity
    description: "Use 'Date Granularity' selector to modify the date granularity"
    sql:
            CASE
             WHEN {% parameter date_granularity %} = 'Day' THEN cast(${ts_received_email_date} as string)
             WHEN {% parameter date_granularity %} = 'Week' THEN cast(${ts_received_email_week} as string)
             WHEN {% parameter date_granularity %} = 'Month' THEN cast(${ts_received_email_month} as string)
             WHEN {% parameter date_granularity %} = 'Quarter' THEN cast(${ts_received_email_quarter} as string)
             WHEN {% parameter date_granularity %} = 'Year' THEN cast(${ts_received_email_year} as string)
            ELSE null
            END ;;
  }









####

  dimension_group: ts_sub {
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
    sql: ${TABLE}.ts_sub ;;
  }

  dimension_group: ts_unsub_list {
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
    sql: ${TABLE}.ts_unsub_list ;;
  }

  dimension: variant {
    type: string
    sql: ${TABLE}.variant ;;
  }

  dimension: visit_eorder_minute_diff {
    type: number
    sql: ${TABLE}.visit_eorder_minute_diff ;;
  }

  dimension_group: visit_start_time_first {
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
    sql: ${TABLE}.visitStartTime_first ;;
  }

  dimension_group: visit_start_time_last {
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
    sql: ${TABLE}.visitStartTime_last ;;
  }

  dimension_group: visit_start_time_transaction {
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

  dimension: widget {
    type: string
    sql: ${TABLE}.widget ;;
  }

  measure: count {
    type: count
    drill_fields: [subflow_name, campaign_name, flow_name, klaviyo_flow_name]
  }


  ### email user count


  measure: Total_Received_Emails{
    type: count_distinct
    label:"Total Delivered Emails"
    ##"Total_users_recived_email"
    sql: ${email} ;;
  }

  measure: Total_Opened_Emails{
    type: count_distinct
    label: "Total_users_opened_email"
    sql: case when ${ts_opened_email_raw} is not null then ${email} end  ;;
  }

  measure: Total_Clicked_Emails{
    type: count_distinct
    label: "Total_users_clicked_email"
    sql: case when ${ts_clicked_email_raw} is not null then ${email} end  ;;
  }

  measure: Total_Orders_From_Email{
    label: "Total_users_ordered_email_last_click"
    type: count_distinct
    sql: case when ${email_order_created_raw} is not null then ${email} end  ;;
  }

  measure: Total_bounced_Email{
    label: "Total_users_bounced_email"
    type: count_distinct
    sql: case when ${ts_bounced_email_raw} is not null then ${email} end  ;;
  }

  measure: Total_dropped_Email{
    label: "Total_users_dropped_email"
    type: count_distinct
    sql: case when ${ts_dropped_email_raw} is not null then ${email} end  ;;
  }

  measure: Total_marked_spam_Email{
    label: "Total_users_marked_spam_email"
    type: count_distinct
    sql: case when ${ts_marked_spam_raw} is not null then ${email} end  ;;
  }

  measure: Total_unsub_Email{
    label: "Total_users_marked_spam_email"
    type: count_distinct
    sql: case when ${ts_unsub_list_raw} is not null then ${email} end  ;;
  }

  ### rate

  measure: Opened_Rate{
    type: number
    label: "Open_rate_users"
    sql: case when ${Total_Received_Emails}>0 then ${Total_Opened_Emails}/${Total_Received_Emails} else 0 end  ;;
    value_format: "0.00%"
  }

  measure: Clicked_Rate{
    type: number
    label: "Click_out_of_open_rate_users"
    sql: case when ${Total_Opened_Emails}>0 then ${Total_Clicked_Emails}/${Total_Opened_Emails} else 0 end    ;;
    value_format: "0.00%"
  }

  measure: Clicked_Rate_out_of_received{
    type: number
    label: "Click out of recived rate - users"
    sql:  case when ${Total_Received_Emails}>0 then ${Total_Clicked_Emails}/${Total_Received_Emails} else 0 end  ;;
    value_format: "0.00%"
    }

  measure: Order_from_clicked_Rate{
    type: number
    label: "Ordered_from_click_rate_users"
    sql:  case when ${Total_Clicked_Emails}>0 then ${Total_Orders_From_Email}/${Total_Clicked_Emails} else 0 end ;;
    value_format: "0.00%"
  }

  measure: Conversion_Rate{
    type: number
    label: "Conversion Rate - order from sent emails"
    sql:  case when ${Total_Received_Emails}>0 then ${Total_Orders_From_Email}/${Total_Received_Emails} else 0 end ;;
    value_format: "0.000%"
  }


  ### revenue and gross profit

  measure: Total_Revenue_From_Email{
    type: sum
    sql: case when ${email_order_created_raw} is not null then ${email_order_price}-${email_order_tax} end  ;;
    value_format: "$#,##0"
  }

  measure: Total_price_From_Email{
    type: sum
    sql: case when ${email_order_created_raw} is not null then ${email_order_price} end  ;;
    value_format: "$0.0"
  }


  measure: Total_tax_From_Email{
    type: sum
    sql: case when ${email_order_created_raw} is not null then ${email_order_tax} end  ;;
    value_format: "$0.0"
  }

  measure: Total_Order_From_Email{
    type: count_distinct
    sql: case when ${email_order_created_raw} is not null then ${email_short_id} end  ;;
    value_format: "0.0"
  }


  ## AOVs

 measure: AOV{
    type: number
    sql:  case when ${Total_Orders_From_Email}>0 then ${Total_Revenue_From_Email} /${Total_Orders_From_Email} else 0 end ;;
    value_format: "$#,##0.0"
}

  measure: AOV_revenue_per_received_email{
    type: number
    sql:  case when ${Total_Received_Emails}>0 then ${Total_Revenue_From_Email} /${Total_Received_Emails} else 0 end ;;
    value_format: "$#,##0.0"
  }

  measure: AOV_revenue_per_open_email{
    type: number
    sql:  case when ${Total_Opened_Emails}>0 then ${Total_Revenue_From_Email} /${Total_Opened_Emails} else 0 end ;;
    value_format: "$#,##0.0"
  }

  measure: AOV_revenue_per_clicked_email{
    type: number
    sql:  case when ${Total_Clicked_Emails}>0 then ${Total_Revenue_From_Email} /${Total_Clicked_Emails} else 0 end ;;
    value_format: "$#,##0.0"
  }



  ####  specific email


  measure: Total_Received_specific_Emails{
    type: count_distinct
    sql: concat(${email},${campaign}) ;;
  }

  measure: Total_Opened_specific_Emails{
    type: count_distinct
    sql: case when ${ts_opened_email_raw} is not null then (concat(${email},${campaign})) end  ;;
  }

  measure: Total_Clicked_specific_Emails{
    type: count_distinct
    sql: case when ${ts_clicked_email_raw} is not null then (concat(${email},${campaign})) end  ;;
  }

  measure: Total_Orders_From_specific_Email{
    type: count_distinct
    sql: case when ${email_order_created_raw} is not null then (concat(${email},${campaign})) end  ;;
  }


  measure: Total_bounced_specific_Emails{
    type: count_distinct
    sql: case when ${ts_bounced_email_raw} is not null then (concat(${email},${campaign})) end  ;;
  }

  measure: Total_dropped_specific_Emails{
    type: count_distinct
    sql: case when ${ts_dropped_email_raw} is not null then (concat(${email},${campaign})) end  ;;
  }

  measure: Total_marked_spam_specific_Emails{
    type: count_distinct
    sql: case when ${ts_marked_spam_raw} is not null then (concat(${email},${campaign})) end  ;;
  }

  measure: Total_unsub_specific_Emails{
    type: count_distinct
    sql: case when ${ts_unsub_list_raw} is not null then (concat(${email},${campaign})) end  ;;
  }



  measure: revenue_per_recived_email{
    type: number
    sql:  case when ${Total_Received_specific_Emails}>0 then ${Total_Revenue_From_Email}/${Total_Received_specific_Emails} else 0 end ;;
    value_format: "0.0$"
  }


  measure: revenue_per_1000_received_email{
    type: number
    sql:  case when ${Total_Received_specific_Emails}>0 then ${Total_Revenue_From_Email}/${Total_Received_specific_Emails}*1000 else 0 end ;;
    value_format: "0.0$"
  }


### rate specific

  measure: Opened_Rate_specific_email{
    type: number
    sql: case when ${Total_Received_specific_Emails}>0 then ${Total_Opened_specific_Emails}/${Total_Received_specific_Emails} else 0 end  ;;
    value_format: "0.00%"
  }

  measure: Clicked_Rate_specific_email{
    type: number
    sql: case when ${Total_Opened_specific_Emails}>0 then ${Total_Clicked_specific_Emails}/${Total_Opened_specific_Emails} else 0 end    ;;
    value_format: "0.00%"
  }

  measure: Clicked_Rate_out_of_received_specific_email{
    type: number
    sql:  case when ${Total_Received_specific_Emails}>0 then ${Total_Clicked_specific_Emails}/${Total_Received_specific_Emails} else 0 end  ;;
    value_format: "0.00%"
  }

  measure: Click_to_open_rate_specific_email{
    type: number
    sql:  case when ${Total_Opened_specific_Emails}>0 then ${Total_Clicked_specific_Emails}/${Total_Opened_specific_Emails} else 0 end  ;;
    value_format: "0.00%"
  }

  measure: Order_from_clicked_Rate_specific_email{
    type: number
    sql:  case when ${Total_Clicked_specific_Emails}>0 then ${Total_Orders_From_specific_Email}/${Total_Clicked_specific_Emails} else 0 end ;;
    value_format: "0.00%"
  }

### order and revenue out of email/order recived


  measure: Order_from_recived_email_specific_email{
    type: number
    sql:  case when ${Total_Received_specific_Emails}>0 then ${Total_Orders_From_specific_Email}/${Total_Received_specific_Emails} else 0 end ;;
    value_format:  "0.00%"
  }


  measure: Revenue_from_recived_email_specific_email{
    type: number
    sql:  case when ${Total_Received_specific_Emails}>0 then ${Total_Revenue_From_Email}/${Total_Received_specific_Emails} else 0 end ;;
    value_format: "$#,##0.00"
  }


  measure: Order_from_recived_email_user{
    type: number
    sql:  case when ${Total_Received_specific_Emails}>0 then ${Total_Orders_From_specific_Email}/${Total_Received_Emails} else 0 end ;;
    value_format:  "0.00%"
  }


  measure: Revenue_from_recived_email_user{
    type: number
    sql:  case when ${Total_Received_Emails}>0 then ${Total_Revenue_From_Email}/${Total_Received_Emails} else 0 end ;;
     value_format: "$#,##0.00"
  }


 ###


 ####

  parameter: ratio_selector_1 {
    type: unquoted
    allowed_value: {
      label: "Open_rate_users"
      value: "Open_rate_users"
    }
    allowed_value: {
      label: "Click_out_of_open_rate_users"
      value: "Click_out_of_open_rate_users"
    }
    allowed_value: {
      label: "Ordered_from_click_rate_users"
      value: "Ordered_from_click_rate_users"
    }

    allowed_value: {
      label: "none"
      value: "none"
    }
    group_label: "Advanced Selectors"
    label: "Ratio_selector_users"
  }

  measure: ratio_dimension_1 {
    type: number
    sql:
      {% if ratio_selector_1._parameter_value == 'Open_rate_users' %}
        ${Opened_Rate}
      {% elsif ratio_selector_1._parameter_value == 'Click_out_of_open_rate_users' %}
        ${Clicked_Rate}
      {% elsif ratio_selector_1._parameter_value == 'Ordered_from_click_rate_users' %}
        ${Order_from_clicked_Rate}
      {% else %}
        null
      {% endif %};;
    label_from_parameter: ratio_selector_1
    value_format: "0.00%"
    label: "Ratio_dimention_users"
    group_label: "Advanced Measures"
  }


####



  parameter: ratio_selector_2 {
    type: unquoted
    allowed_value: {
      label: "Opened_Rate_specific_email"
      value: "Opened_Rate_specific_email"
    }
    allowed_value: {
      label: "Clicked_Rate_specific_email"
      value: "Clicked_Rate_specific_email"
    }
    allowed_value: {
      label: "Order_from_clicked_Rate_specific_email"
      value: "Order_from_clicked_Rate_specific_email"
    }



    allowed_value: {
      label: "Order_from_recived_email_specific_email"
      value: "Order_from_recived_email_specific_email"
    }


    allowed_value: {
      label: "none"
      value: "none"
    }
    group_label: "Advanced Selectors"
    label: "Ratio_selector_specific_email"
  }

  measure: ratio_dimension_2 {
    type: number
    sql:
      {% if ratio_selector_2._parameter_value == 'Opened_Rate_specific_email' %}
        ${Opened_Rate}
      {% elsif ratio_selector_2._parameter_value == 'Clicked_Rate_specific_email' %}
        ${Clicked_Rate}
      {% elsif ratio_selector_2._parameter_value == 'Order_from_clicked_Rate_specific_email' %}
        ${Order_from_clicked_Rate}
          {% elsif ratio_selector_2._parameter_value == 'Order_from_recived_email_specific_email' %}
        ${Order_from_recived_email_specific_email}
      {% else %}
        null
      {% endif %};;
    label_from_parameter: ratio_selector_2
    value_format: "0.00%"
    label: "Ratio_dimention_specific_email"
    group_label: "Advanced Measures"
  }




####

  parameter: total_selector_1 {
    type: unquoted

    allowed_value: {
      label: "Total_users_recived_email"
      value: "Total_users_recived_email"
    }
    allowed_value: {
      label: "Total_users_opened_email"
      value: "Total_users_opened_email"
    }
    allowed_value: {
      label: "Total_users_clicked_email"
      value: "Total_users_clicked_email"
    }
    allowed_value: {
      label: "Total_users_ordered_email_last_click"
      value: "Total_users_ordered_email_last_click"
    }
    allowed_value: {
      label: "Total_Revenue_From_Email"
      value: "Total_Revenue_From_Email"
    }
    allowed_value: {
      label: "AOV"
      value: "AOV"
    }
    allowed_value: {
      label: "AOV_revenue_per_received_email"
      value: "AOV_revenue_per_received_email"
    }
    allowed_value: {
      label: "none"
      value: "none"
    }
    group_label: "Advanced Selectors"
    label: "Total_Selector_users"
  }

  measure: total_dimension_1 {
    type: number
    sql:
      {% if total_selector_1._parameter_value == 'Total_users_recived_email' %}
        ${Total_Received_Emails}
      {% elsif total_selector_1._parameter_value == 'Total_users_opened_email' %}
        ${Total_Opened_Emails}
      {% elsif total_selector_1._parameter_value == 'Total_users_clicked_email' %}
        ${Total_Clicked_Emails}
      {% elsif total_selector_1._parameter_value == 'Total_users_ordered_email_last_click' %}
        ${Total_Orders_From_Email}
      {% elsif total_selector_1._parameter_value == 'Total_Revenue_From_Email' %}
        ${Total_Revenue_From_Email}
      {% elsif total_selector_1._parameter_value == 'AOV' %}
        ${AOV}
      {% elsif total_selector_1._parameter_value == 'AOV_revenue_per_received_email' %}
        ${AOV_revenue_per_received_email}
      {% else %}
        null
      {% endif %};;
    label_from_parameter: total_selector_1
    value_format: "#,##0"
    group_label: "Advanced Measures"
    label: "Total_dimention_users"
  }


  parameter: total_selector_2 {
    type: unquoted

    allowed_value: {
      label: "Total_Received_specific_Emails"
      value: "Total_Received_specific_Emails"
    }
    allowed_value: {
      label: "Total_Opened_specific_Emails"
      value: "Total_Opened_specific_Emails"
    }
    allowed_value: {
      label: "Total_Clicked_specific_Emails"
      value: "Total_Clicked_specific_Emails"
    }
    allowed_value: {
      label: "Total_Orders_From_specific_Email"
      value: "Total_Orders_From_specific_Email"
    }
    allowed_value: {
      label: "Total_Revenue_From_Email"
      value: "Total_Revenue_From_Email"

    }

    allowed_value: {
      label: "revenue_per_1000_received_email"
      value: "revenue_per_1000_received_email"
    }

    allowed_value: {
      label: "AOV"
      value: "AOV"
    }

    allowed_value: {
      label: "Cohort_email_orders_D1"
      value: "Cohort_email_orders_D1"
    }

    allowed_value: {
      label: "Cohort_email_orders_D7"
      value: "Cohort_email_orders_D17"
    }



    allowed_value: {
      label: "Cohort_email_revenue_D1"
      value: "Cohort_email_revenue_D1"
    }

    allowed_value: {
      label: "Cohort_email_revenue_D7"
      value: "Cohort_email_revenue_D7"
    }


    allowed_value: {
      label: "none"
      value: "none"
    }
    group_label: "Advanced Selectors"
    label: "Total_Selector_specific_Emails"

  }


  measure: total_dimension_2 {
    type: number
    sql:
      {% if total_selector_2._parameter_value == 'Total_Received_specific_Emails' %}
        ${Total_Received_specific_Emails}
      {% elsif total_selector_2._parameter_value == 'Total_Opened_specific_Emails' %}
        ${Total_Opened_specific_Emails}
      {% elsif total_selector_2._parameter_value == 'Total_Clicked_specific_Emails' %}
        ${Total_Clicked_specific_Emails}
      {% elsif total_selector_2._parameter_value == 'Total_Orders_From_specific_Email' %}
        ${Total_Orders_From_specific_Email}
      {% elsif total_selector_2._parameter_value == 'Total_Revenue_From_Email' %}
        ${Total_Revenue_From_Email}
      {% elsif total_selector_2._parameter_value == 'AOV' %}
        ${AOV}
         {% elsif total_selector_2._parameter_value == 'revenue_per_1000_received_email' %}
        ${revenue_per_1000_received_email}
      {% elsif total_selector_2._parameter_value == 'Cohort_email_orders_D1' %}
        ${Cohort_email_orders_D1}
      {% elsif total_selector_2._parameter_value == 'Cohort_email_orders_D7' %}
        ${Cohort_email_orders_D7}
        {% elsif total_selector_2._parameter_value == 'Cohort_email_revenue_D1' %}
        ${Cohort_email_revenue_D1}
      {% elsif total_selector_2._parameter_value == 'Cohort_email_revenue_D7' %}
        ${Cohort_email_revenue_D7}

      {% else %}
        null
      {% endif %};;
    label_from_parameter: total_selector_2
    value_format: "#,##0"
    group_label: "Advanced Measures"
    label: "Total_dimention_specific_Emails"
  }





### dimensions selectors

  parameter: dimension_selector_1 {
    type: unquoted
    allowed_value: {
      label: "Brand"
      value: "Brand"
    }
    allowed_value: {
      label: "promo_or_flow"
      value: "promo_or_flow"
    }

    allowed_value: {
      label: "promo_or_sale_flow"
      value: "promo_or_sale_flow"
    }

    allowed_value: {
      label: "campaign_name"
      value: "campaign_name"
    }
    allowed_value: {
      label: "flow_name"
      value: "flow_name"
    }
    allowed_value: {
      label: "email_number"
      value: "email_number"
    }
    allowed_value: {
      label: "None"
      value: "None"
    }
    group_label: "Advanced Selectors"
  }

  dimension: dimension_1 {
    type: string
    sql:
      {% if dimension_selector_1._parameter_value == 'Brand' %}
        ${brand}
      {% elsif dimension_selector_1._parameter_value == 'promo_or_flow' %}
        ${promo_or_flow}
      {% elsif dimension_selector_1._parameter_value == 'campaign_name' %}
        ${campaign_name}
      {% elsif dimension_selector_1._parameter_value == 'flow_name' %}
        ${flow_name}
      {% elsif dimension_selector_1._parameter_value == 'email_number' %}
        ${email_number}
          {% elsif dimension_selector_1._parameter_value == 'promo_or_sale_flow' %}
        ${promo_or_sale_flow}
      {% else %}
        null
      {% endif %};;
    label_from_parameter: dimension_selector_1
    group_label: "Advanced Dimensions"
  }



### time YoY, WoW , MoM


  filter: current_date_range {
    view_label: "Timeline Comparison Fields"
    label: "Date Range"
    description: "Select the date range you are interested in using this filter, can be used by itself. Make sure any filter on Event Date covers this period, or is removed."
    type: date
  }
  filter: previous_date_range {
    view_label: "Timeline Comparison Fields"
    label: "2b. Compare To (Custom):"
    group_label: "Compare to:"

    description: "Use this if you want to specify a custom date range to compare to (limited to 2 comparison periods). Always use with '1. Date Range' filter (or it will error). Make sure any filter on Event Date covers this period, or is removed."
    type: date
  }

  dimension_group: in_period {
    type: duration
    intervals: [day]
    description: "Gives the number of days in the current period date range"
    sql_start: {% date_start current_date_range %} ;;
    sql_end: {% date_end current_date_range %} ;;
    hidden:  yes
  }

  dimension: period_2_start {
    view_label: "Timeline Comparison Fields"
    description: "Calculates the start of the previous period"
    type: date_raw
    sql:
    {% if compare_to._in_query %}
      {% if compare_to._parameter_value == "Year" %}
        TIMESTAMP(DATETIME_SUB(
        DATETIME({% date_start current_date_range %}), INTERVAL 364 day))
      {% elsif compare_to._parameter_value == "Period" %}
        TIMESTAMP_SUB({% date_start current_date_range %} , INTERVAL ${days_in_period} DAY)
      {% else %}
        TIMESTAMP(DATETIME_SUB(DATETIME({% date_start current_date_range %}) , INTERVAL 1 {% parameter compare_to %}))
      {% endif %}
    {% else %}
      {% date_start previous_date_range %}
    {% endif %};;
    hidden:  yes
  }

  dimension: period_2_end {
    view_label: "Timeline Comparison Fields"
    description: "Calculates the end of the previous period"
    type: date_raw
    sql:
    {% if compare_to._in_query %}
      {% if compare_to._parameter_value == "Year" %}
        TIMESTAMP(DATETIME_SUB(
        DATETIME({% date_end current_date_range %}), INTERVAL 364 day))
      {% elsif compare_to._parameter_value == "Period" %}
        /*TIMESTAMP_SUB({% date_start current_date_range %}, INTERVAL 1 DAY)*/
        {% date_start current_date_range %}
      {% else %}
        /*TIMESTAMP(DATETIME_SUB(DATETIME_SUB(
        DATETIME({% date_end current_date_range %}), INTERVAL 1 DAY), INTERVAL 1 {% parameter compare_to %}))*/
         TIMESTAMP(DATETIME_SUB(
        DATETIME({% date_end current_date_range %}), INTERVAL 1 {% parameter compare_to %}))
      {% endif %}
    {% else %}
      {% date_end previous_date_range %}
    {% endif %};;
    hidden:  yes
  }

  parameter: compare_to {
    description: "Choose the period you would like to compare to. Must be used with Current Date Range filter"
    label: "2a. Compare To (Templated):"
    type: unquoted
    allowed_value: {
      label: "Previous Period"
      value: "Period"
    }
    allowed_value: {
      label: "Previous Week"
      value: "Week"
    }
    allowed_value: {
      label: "Previous Month"
      value: "Month"
    }
    allowed_value: {
      label: "Previous Year"
      value: "Year"
    }
    default_value: "Period"
    view_label: "Timeline Comparison Fields"
  }


  dimension: period {
    view_label: "Timeline Comparison Fields"
    label: "Period"
    description: "Pivot me! Returns the period the metric covers, i.e. either the 'This Period', 'Previous Period' or '3 Periods Ago'"
    type: string
    order_by_field: order_for_period
    sql:
       {% if current_date_range._is_filtered %}
         CASE
           WHEN {% condition current_date_range %}  ${ts_received_email_raw} {% endcondition %}
           THEN "This {% parameter compare_to %}"
           WHEN ${ts_received_email_raw} between ${period_2_start} and ${period_2_end}
           THEN "Last {% parameter compare_to %}"
         END
       {% else %}
         NULL
       {% endif %}
       ;;
  }

  dimension: order_for_period {
    hidden: yes
    view_label: "Timeline Comparison Fields"
    label: "Period"
    description: "Pivot me! Returns the period the metric covers, i.e. either the 'This Period', 'Previous Period' or '3 Periods Ago'"
    type: string
    sql:
       {% if current_date_range._is_filtered %}
         CASE
           WHEN {% condition current_date_range %} ${ts_received_email_raw} /*findme6*/{% endcondition %}
           THEN 1
           WHEN ${ts_received_email_raw} between ${period_2_start} and ${period_2_end}
           THEN 2
         END
       {% else %}
         NULL
       {% endif %}
       ;;
  }

  dimension_group: date_in_period {
    description: "Use this as your date dimension when comparing periods. Aligns the all previous periods onto the current period"
    label: "Current Period"
    type: time
    sql: TIMESTAMP_ADD({% date_start current_date_range %},INTERVAL (${minute_in_period}-1) minute) ;;
    view_label: "Timeline Comparison Fields"
    timeframes: [date, week, month, quarter, year,time,hour,hour2]
  }

  dimension: minute_in_period {
    view_label: "Timeline Comparison Fields"
    description: "Gives the number of days since the start of each periods. Use this to align the event dates onto the same axis, the axes will read 1,2,3, etc."
    type: number
    sql:
    {% if current_date_range._is_filtered %}
      CASE
        WHEN {% condition current_date_range %} ${ts_received_email_raw} {% endcondition %}
        THEN TIMESTAMP_DIFF(${ts_received_email_raw},{% date_start current_date_range %},minute)+1

      WHEN ${ts_received_email_raw} between ${period_2_start} and ${period_2_end}
      THEN TIMESTAMP_DIFF(${ts_received_email_raw}, ${period_2_start},minute)+1
      else null
      END

      {% else %} NULL
      {% endif %}
      ;;
    hidden: no
  }


  dimension: day_in_period {
    view_label: "Timeline Comparison Fields"
    description: "Gives the number of days since the start of each periods. Use this to align the event dates onto the same axis, the axes will read 1,2,3, etc."
    type: number
    sql:
    {% if current_date_range._is_filtered %}
      CASE
        WHEN {% condition current_date_range %} ${ts_received_email_raw} {% endcondition %}
        THEN TIMESTAMP_DIFF(${ts_received_email_raw},{% date_start current_date_range %},DAY)+1

      WHEN ${ts_received_email_raw} between ${period_2_start} and ${period_2_end}
      THEN TIMESTAMP_DIFF(${ts_received_email_raw}, ${period_2_start},DAY)+1
      END

      {% else %} NULL
      {% endif %}
      ;;
    hidden: no
  }


  dimension: receive_eorder_Cohort{
    label: "Cohort"
    type: string
    sql:  case when (receive_eorder_minute_diff/60)<=24 then "up till d1"
            when (receive_eorder_minute_diff/60)<=189 then "d2-d7"
            when (receive_eorder_minute_diff/60)<=672 then "d8-d28"
            else "Non cohort" end ;;
  }


##  measure: total_true_orders_D1_emails {
##    label: "Total True Orders D1 emails"
##    type: number
##    sql: sum(case when date_diff(current_date('America/Los_Angeles'), ${reporting_date}, day) < 1 then null else ${d1_true_orders} end);;
##    value_format: "#,##0.0"
##    group_label: "True Order Metrics"
##  }

  measure: Cohort_email_orders_D1{
  label: "Total Cohort email orders D1"
  type: count_distinct
  sql: case when (receive_eorder_minute_diff/60)<=24 then ${email_short_id} else null  end;;
  value_format: "#,##0"
  group_label: "Cohort email orders"
  }

  measure: Cohort_email_orders_D7{
    label: "Total Cohort email orders D7"
    type: count_distinct
    sql: case when (receive_eorder_minute_diff/60)<=189 then ${email_short_id} else null  end;;
    value_format: "#,##0"
    group_label: "Cohort email orders"
  }

  measure: Cohort_email_orders_D28{
    label: "Total Cohort email orders D28"
    type: count_distinct
    sql: case when (receive_eorder_minute_diff/60)<=672 then ${email_short_id} else null  end;;
    value_format: "#,##0"
    group_label: "Cohort email orders"
  }



  measure: Cohort_email_revenue_D1{
    label: "Total Cohort email revenue D1"
    type: sum
    sql: case when (receive_eorder_minute_diff/60)<=24 then ${email_order_price}-${email_order_tax} else null end;;
    value_format: "$#,##0"
    group_label: "Cohort email revenue"
  }

  measure: Cohort_email_revenue_D7{
    label: "Total Cohort email revenue D7"
    type: sum
    sql: case when (receive_eorder_minute_diff/60)<=189 then ${email_order_price}-${email_order_tax} else null end;;
    value_format: "$#,##0"
    group_label: "Cohort email revenue"
  }

  measure: Cohort_email_revenue_D28{
    label: "Total Cohort email revenue D28"
    type: sum
    sql: case when (receive_eorder_minute_diff/60)<=672 then ${email_order_price}-${email_order_tax} else null end;;
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
              when {% condition date_filter %} timestamp(${ts_received_email_raw}) {% endcondition %} then 'First period'
              when {% condition date_filter_2 %} timestamp(${ts_received_email_raw}) {% endcondition %} then 'Second period'
            end ;;
  }



  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }


}
