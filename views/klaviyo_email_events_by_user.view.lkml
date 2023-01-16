view: klaviyo_email_events_by_user {
  sql_table_name: `omega-post-184817.customer.klaviyo_email_events_by_user`
    ;;

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

  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
  }

  dimension_group: datetime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.datetime ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
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

  dimension_group: first_event_ts {
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
    sql: ${TABLE}.first_event_ts ;;
  }

  dimension_group: first_lead_created_web_events {
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
    sql: ${TABLE}.first_lead_created_web_events ;;
  }

  dimension_group: first_lead_event_ts {
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
    sql: ${TABLE}.first_lead_event_ts ;;
  }

  dimension_group: flow_first_ts {
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
    sql: ${TABLE}.flow_first_ts ;;
  }

  dimension: flow_id {
    type: string
    sql: ${TABLE}.flow_id ;;
  }

  dimension: flow_name {
    type: string
    sql: ${TABLE}.flow_name ;;
  }

  ####

  dimension: sale_non_sales_email{
    type: string
    sql: case when ${flow_name} = "refer_a_friend" then "non sale flow"
     when ${flow_name} = "cloverlane_post_purchase_upsell" then "non sale flow"
     when ${flow_name} = "check_order_status" then "non sale flow"
     when ${flow_name} = "extend" then "non sale flow"
     when ${flow_name} = "nps_on_transit" then "non sale flow"
     when ${flow_name} = "abandon_cart" then "non sale flow"
     when ${flow_name} = "nps_survey_30_days" then "non sale flow"
     when ${flow_name} = "nps_survey_90_days" then "non sale flow"
     when ${flow_name} = "nps_survey_placed_order" then "non sale flow"
     when ${flow_name} = "nps_full_order-delivered" then "non sale flow"
     when ${flow_name} = "account_login" then "non sale flow"
     when ${flow_name} = "prep_for_delivery" then "non sale flow"
     when ${flow_name} = "manual_order_confirmation" then "non sale flow"
     when ${flow_name} = "order_confirmation" then "non sale flow"
     when ${flow_name} = "cart_link" then "non sale flow"
     when ${flow_name} is not null then "sale flow"
     when ${promo_or_flow} = "promo" then "promo"
   ELSE null
            END    ;;
  }





  dimension: flow_rank {
    type: number
    sql: ${TABLE}.flow_rank ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: is_checkout_lead {
    type: yesno
    sql: ${TABLE}.is_checkout_lead ;;
  }

  dimension: is_lead {
    type: yesno
    sql: ${TABLE}.is_lead ;;
  }

  dimension: is_missing_flow {
    type: yesno
    sql: ${TABLE}.is_missing_flow ;;
  }

  dimension: is_pre_order_flow {
    type: yesno
    sql: ${TABLE}.is_pre_order_flow ;;
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

  dimension_group: lead_created {
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
    sql: ${TABLE}.lead_created ;;
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

  dimension: offer {
    type: string
    sql: ${TABLE}.offer ;;
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

  dimension: promo_or_flow {
    type: string
    sql: ${TABLE}.promo_or_flow ;;
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



  ####

  dimension_group: ts_received_email {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      hour2
    ]
   ## datatype: datetime
     sql: cast(${TABLE}.order_created as TIMESTAMP);;
    ## timestamp(${TABLE}.ts_Received_email);;
  ## ${TABLE}.ts_Received_email
  }




## date dimensions

  dimension: not_today {
    type: yesno
    sql: ${ts_received_email_date} < current_date('America/Los_Angeles')-1 ;;
    group_label: "Date Filters"
    description: "Filters any date after today (including today)"
    }



  dimension: missing_ts_Received_email {
    type: yesno
    sql: ${TABLE}.missing_ts_Received_email ;;
  }



  parameter: date_granularity_ts_received_email {
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


  dimension: date {
    label_from_parameter: date_granularity_ts_received_email
    description: "Use 'Date Granularity' selector to modify the date granularity"
    sql:
            CASE
             WHEN {% parameter date_granularity_ts_received_email %} = 'Day' THEN cast(${ts_received_email_date} as string)
             WHEN {% parameter date_granularity_ts_received_email %} = 'Week' THEN cast(${ts_received_email_week} as string)
             WHEN {% parameter date_granularity_ts_received_email %} = 'Month' THEN cast(${ts_received_email_month} as string)
             WHEN {% parameter date_granularity_ts_received_email %} = 'Quarter' THEN cast(${ts_received_email_quarter} as string)
             WHEN {% parameter date_granularity_ts_received_email %} = 'Year' THEN cast(${ts_received_email_year} as string)
            ELSE null
            END ;;
  }


## day of week

  dimension:  dow_num {
    type:  string
    sql: EXTRACT(DAYOFWEEK FROM ${ts_received_email_raw}) ;;
    hidden: yes
  }


  dimension:  day_of_week {
    label: "Day of Week received"
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

  dimension_group: ts_unsub {
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
    sql: ${TABLE}.ts_unsub ;;
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

  dimension: variation_id {
    type: string
    sql: ${TABLE}.variation_id ;;
  }

  dimension: widget {
    type: string
    sql: ${TABLE}.widget ;;
  }

  measure: count {
    type: count
    drill_fields: [subflow_name, campaign_name, flow_name, klaviyo_flow_name]
  }


  ## total email mesures

  measure: total_unique_emails {
    type: count_distinct
    sql:concat(${email},${campaign}) ;;
    value_format: "#,##0"
    group_label: "Email Measures"
  }

  measure: total_Received_emails {
    type: count_distinct
    sql:case when ${num_received_email} >0 then concat(${email},${campaign}) else null end ;;
    value_format: "#,##0"
    group_label: "Email Measures"
  }


  measure: total_opened_emails {
    type: count_distinct
    sql:case when ${num_opened_email}>0 then concat(${email},${campaign}) else null end ;;
    value_format: "#,##0"
    group_label: "Email Measures"
  }

  measure: total_opened_emails_2 {
    type: count_distinct
    sql:case when ${ts_opened_email_raw} is not null then concat(${email},${campaign}) else null end ;;
    value_format: "#,##0"
    group_label: "Email Measures_2"
  }

  measure: total_clicked_emails {
    type: count_distinct
    sql:case when ${num_clicked_email}>0 then concat(${email},${campaign}) else null end ;;
    value_format: "#,##0"
    group_label: "Email Measures"
  }

  measure: total_clicked_emails_2 {
    type: count_distinct
    sql:case when ${ts_clicked_email_raw} is not null then concat(${email},${campaign}) else null end ;;
    value_format: "#,##0"
    group_label: "Email Measures_2"
  }



## CVR mesurments

  measure: Opened_rate
  {
  ##  label: "% of opened email out of received emails"
    type: number
    sql: ${total_opened_emails}/ nullif(${total_Received_emails}, 0)  ;;
    value_format: "0.00%"
    group_label: "Email Measures"
  }

  measure: clicked_rate
  {
    ##  label: "% of opened clicked out of opem emails"
    type: number
    sql: ${total_clicked_emails}/ nullif(${total_opened_emails}, 0)  ;;
    value_format: "0.00%"
    group_label: "Email Measures"
  }

  measure: clicked_rate_out_of_recived_emails
  {
    ##  label: "% of opened clicked out of opem emails"
    type: number
    sql: ${total_clicked_emails}/ nullif(${total_Received_emails}, 0)  ;;
    value_format: "0.00%"
    group_label: "Email Measures"
  }




### site_order mesurments

  measure: total_orders_from_email {
    type: count_distinct
    sql:case when ${email_order_created_raw} is not null then concat(${email},${campaign}) else null end ;;
    value_format: "#,##0"
    group_label: "Orders Measures"
  }

  measure: total_revenue_from_email {
    type: sum
    sql:case when ${email_order_created_raw} is not null then (${email_order_price}-${email_order_tax}) else null end ;;
    value_format: "$#,##0"
    group_label: "Orders Measures"
  }





  measure: avo_from_email {
    type: number
    sql: ${total_revenue_from_email}/NULLIF(${total_orders_from_email},0)  ;;
    value_format: "$#,##0"
    group_label: "Orders Measures"
  }


 ## measure: total_revenue_from_email_sum_distinct {
  ##  type: sum_distinct
##    sql_distinct_key: concat(${email},${campaign})
##    sql:case when ${email_order_created_raw} is not null then (${email_order_price}-${email_order_tax}) else null end ;;
##    value_format: "#,##0"
  ##  group_label: "Orders Measures"
  ##}




### order cvr

  measure: order_from_clicked_rate
  {
    ##  label: "% of opened email out of received emails"
    type: number
    sql: ${total_orders_from_email}/ nullif(${total_clicked_emails}, 0)  ;;
    value_format: "0.00%"
    group_label: "Orders Measures"
  }

  measure: order_from_open_rate
  {
    ##  label: "% of opened email out of received emails"
    type: number
    sql: ${total_orders_from_email}/ nullif(${total_opened_emails}, 0)  ;;
    value_format: "0.00%"
    group_label: "Orders Measures"
  }

  measure: order_from_Received_rate
  {
    ##  label: "% of opened email out of received emails"
    type: number
    sql: ${total_orders_from_email}/ nullif(${total_Received_emails}, 0)  ;;
    value_format: "0.00%"
    group_label: "Orders Measures"
  }

######



##### Comparison

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





  dimension: yesterday_vs_sdlw {
    type: string
    label: "Today VS SDLW"
    sql: case when (date_diff(current_date('America/Los_Angeles'), ${ts_received_email_date}, day) = 0
          and extract(hour from timestamp(${ts_received_email_time})) < extract(hour from timestamp(current_datetime('America/Los_Angeles')))) then "Today"
        when(date_diff(current_date('America/Los_Angeles'), ${ts_received_email_date}, day) = 7
        and extract(hour from timestamp(${ts_received_email_time})) < extract(hour from timestamp(current_datetime('America/Los_Angeles')))) then "SDLW"
        else 'null' end  ;;
    group_label: "Date Filters"
  }

  dimension: yesterday_vs_sdly {
    type: string
    label: "Today VS SDLY"
    sql: case when (date_diff(current_date('America/Los_Angeles'), ${ts_received_email_date}, day) = 0
          and extract(hour from timestamp(${ts_received_email_time})) < extract(hour from timestamp(current_datetime('America/Los_Angeles')))) then "Today"
        when(date_diff(current_date('America/Los_Angeles'), ${ts_received_email_date}, day) = 364
        and extract(hour from timestamp(${ts_received_email_time})) < extract(hour from timestamp(current_datetime('America/Los_Angeles')))) then "SDLY"
        else 'null' end  ;;
    group_label: "Date Filters"
  }




####




}
