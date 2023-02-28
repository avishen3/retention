view: klaviyo_email_events_by_user {
  sql_table_name: `omega-post-184817.customer.klaviyo_email_events_by_user`
    ;;

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

  dimension: promo_or_flow {
    type: string
    sql: ${TABLE}.promo_or_flow ;;
  }


  dimension: promo_or_sale_flow {
    type: string
    sql: case when ${promo_or_flow} = "promo" then "promo"
              when ${promo_or_flow} = "flow" and (lower(${flow_name}) like "%abandon%" or lower(${flow_name}) like "%cart_link%"  or lower(${flow_name}) like "%welcome%"or lower(${flow_name}) like "%reactivation%") then "sale_flow"
              else "non-sale-flow" end
    ;;
  }


  dimension: is_sale_flow{
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


  ### email count


  measure: Total_Received_Emails{
    type: count_distinct
    sql: ${email} ;;
  }

  measure: Total_Opened_Emails{
    type: count_distinct
    sql: case when ${ts_opened_email_raw} is not null then ${email} end  ;;
  }

  measure: Total_Clicked_Emails{
    type: count_distinct
    sql: case when ${ts_clicked_email_raw} is not null then ${email} end  ;;
  }

  measure: Total_Orders_From_Email{
    type: count_distinct
    sql: case when ${email_order_created_raw} is not null then ${email} end  ;;
  }


  ### rate

  measure: Opened_Rate{
    type: number
    sql: case when ${Total_Received_Emails}>0 then ${Total_Opened_Emails}/${Total_Received_Emails} else 0 end  ;;
    value_format: "0.00%"
  }

  measure: Clicked_Rate{
    type: number
    sql: case when ${Total_Opened_Emails}>0 then ${Total_Clicked_Emails}/${Total_Opened_Emails} else 0 end    ;;
    value_format: "0.00%"
  }

  measure: Clicked_Rate_out_of_received{
    type: number
    sql:  case when ${Total_Received_Emails}>0 then ${Total_Clicked_Emails}/${Total_Received_Emails} else 0 end  ;;
    value_format: "0.00%"
    }

  measure: Order_from_clicked_Rate{
    type: number
    sql:  case when ${Total_Clicked_Emails}>0 then ${Total_Orders_From_Email}/${Total_Clicked_Emails} else 0 end ;;
    value_format: "0.00%"

  }


  ### revenue and gross profit

  measure: Total_Revenue_From_Email{
    type: sum
    sql: case when ${email_order_created_raw} is not null then ${email_order_price}-${email_order_tax} end  ;;
    value_format: "$0.0"
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


  ## AOVs

 measure: AOV{
    type: number
    sql:  case when ${Total_Orders_From_Email}>0 then ${Total_Revenue_From_Email} /${Total_Orders_From_Email} else 0 end ;;
    value_format: "0.0$"
}

  measure: AOV_revenue_per_received_email{
    type: number
    sql:  case when ${Total_Received_Emails}>0 then ${Total_Revenue_From_Email} /${Total_Received_Emails} else 0 end ;;
    value_format: "0.0$"
  }

  measure: AOV_revenue_per_open_email{
    type: number
    sql:  case when ${Total_Opened_Emails}>0 then ${Total_Revenue_From_Email} /${Total_Opened_Emails} else 0 end ;;
    value_format: "0.0$"
  }

  measure: AOV_revenue_per_clicked_email{
    type: number
    sql:  case when ${Total_Clicked_Emails}>0 then ${Total_Revenue_From_Email} /${Total_Clicked_Emails} else 0 end ;;
    value_format: "0.0$"
  }


 ####

  parameter: ratio_selector_1 {
    type: unquoted
    allowed_value: {
      label: "Opened_Rate"
      value: "Opened_Rate"
    }
    allowed_value: {
      label: "Clicked_Rate"
      value: "Clicked_Rate"
    }
    allowed_value: {
      label: "Order_from_clicked_Rate"
      value: "Order_from_clicked_Rate"
    }

    allowed_value: {
      label: "none"
      value: "none"
    }
    group_label: "Advanced Selectors"
  }

  measure: ratio_dimension_1 {
    type: number
    sql:
      {% if ratio_selector_1._parameter_value == 'Opened_Rate' %}
        ${Opened_Rate}
      {% elsif ratio_selector_1._parameter_value == 'Clicked_Rate' %}
        ${Clicked_Rate}
      {% elsif ratio_selector_1._parameter_value == 'Order_from_clicked_Rate' %}
        ${Order_from_clicked_Rate}
      {% else %}
        null
      {% endif %};;
    label_from_parameter: ratio_selector_1
    value_format: "0.00%"
    group_label: "Advanced Measures"
  }



####

  parameter: total_selector_1 {
    type: unquoted

    allowed_value: {
      label: "Total_Received_Emails"
      value: "Total_Received_Emails"
    }
    allowed_value: {
      label: "Total_Opened_Emails"
      value: "Total_Opened_Emails"
    }
    allowed_value: {
      label: "Total_Clicked_Emails"
      value: "Total_Clicked_Emails"
    }
    allowed_value: {
      label: "Total_Orders_From_Email"
      value: "Total_Orders_From_Email"
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
  }

  measure: total_dimension_1 {
    type: number
    sql:
      {% if total_selector_1._parameter_value == 'Total_Received_Emails' %}
        ${Total_Received_Emails}
      {% elsif total_selector_1._parameter_value == 'Total_Opened_Emails' %}
        ${Total_Opened_Emails}
      {% elsif total_selector_1._parameter_value == 'Total_Clicked_Emails' %}
        ${Total_Clicked_Emails}
      {% elsif total_selector_1._parameter_value == 'Total_Orders_From_Email' %}
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
    value_format: "0.00"
    group_label: "Advanced Measures"
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




}
