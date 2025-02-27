view: alerts_outgoing_calls_five9_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.alerts_outgoing_calls_five9_tbl`
    ;;

  dimension: agent_group {
    type: string
    sql: ${TABLE}.agent_group ;;
  }

  dimension: alert_brand {
    type: string
    sql: ${TABLE}.alert_brand ;;
  }

  dimension_group: alert_created {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: TIMESTAMP(${TABLE}.alert_created) ;;
  }


# date granularity - alert_created #

  parameter: Date_Granularity_alert_created {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
    allowed_value: { value: "Hour" }
    allowed_value: { value: "Hour of Day" }
  }

  dimension: alert_created {
    label_from_parameter: Date_Granularity_alert_created
    sql:
            CASE
             WHEN {% parameter Date_Granularity_alert_created %} = 'Day' THEN cast(${alert_created_date} as string)
             WHEN {% parameter Date_Granularity_alert_created %} = 'Week' THEN cast(${alert_created_week} as string)
             WHEN {% parameter Date_Granularity_alert_created %} = 'Month' THEN cast(${alert_created_month} as string)
             WHEN {% parameter Date_Granularity_alert_created %} = 'Quarter' THEN cast(${alert_created_quarter} as string)
             WHEN {% parameter Date_Granularity_alert_created %} = 'Year' THEN cast(${alert_created_year} as string)
            WHEN {% parameter Date_Granularity_alert_created %} = 'Hour of Day' THEN cast(${alert_created_hour_of_day} as string)
            ELSE null
            END ;;
  }




  dimension: alert_customer_phone {
    type: string
    sql: ${TABLE}.alert_customer_phone ;;
  }

  dimension: alert_email {
    type: string
    sql: ${TABLE}.alert_email ;;
  }

  dimension: model_event_priority {
    type: string
    sql: ${TABLE}.model_event_priority ;;
  }

  dimension: alert_id {
    type: string
    sql: ${TABLE}.alert_id ;;
  }

  dimension: alert_sku {
    type: string
    sql: ${TABLE}.alert_sku ;;
  }

  dimension: alert_status {
    type: string
    sql: ${TABLE}.alert_status ;;
  }

  dimension: alert_title {
    type: string
    sql: ${TABLE}.alert_title ;;
  }

  dimension: ani {
    type: string
    sql: ${TABLE}.ANI ;;
  }

  dimension: brand_campaign {
    type: string
    sql: ${TABLE}.brand_campaign ;;
  }

  dimension: call_rank {
    type: number
    sql: ${TABLE}.call_rank ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: correspondence_type {
    type: string
    sql: ${TABLE}.correspondenceType ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customerId ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: customer_phone {
    type: string
    sql: ${TABLE}.customerPhone ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }

  dimension: disposition_name {
    type: string
    sql: ${TABLE}.disposition_name ;;
  }

  dimension_group: exchange {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.exchange_date ;;
  }






  dimension: exchange_discount {
    type: number
    sql: ${TABLE}.exchange_discount ;;
  }

  dimension: exchanged_agent_email {
    type: string
    sql: ${TABLE}.exchanged_agent_email ;;
  }

  dimension: exchanged_agent_first_name {
    type: string
    sql: ${TABLE}.exchanged_agent_first_name ;;
  }

  dimension: exchanged_agent_id {
    type: string
    sql: ${TABLE}.exchanged_agent_id ;;
  }

  dimension: exchanged_agent_last_name {
    type: string
    sql: ${TABLE}.exchanged_agent_last_name ;;
  }

  dimension: exchanged_original_item_category {
    type: string
    sql: ${TABLE}.exchanged_original_item_category ;;
  }

  dimension: exchanged_original_item_product_title {
    type: string
    sql: ${TABLE}.exchanged_original_item_product_title ;;
  }

  dimension: exchanged_original_item_sku {
    type: string
    sql: ${TABLE}.exchanged_original_item_sku ;;
  }


  dimension: exchanged_original_item_sku_size {
    type: string
    sql: case
  when ${is_mattress} is true and ${exchanged_original_item_sku} like "%calking%"  then "calking"
  when ${is_mattress} is true and ${exchanged_original_item_sku} like "%king%"  then "king"
  when ${is_mattress} is true and ${exchanged_original_item_sku} like "%queen%"  then "queen"
  when ${is_mattress} is true and ${exchanged_original_item_sku} like "%full%"  then "full"
  when ${is_mattress} is true and ${exchanged_original_item_sku} like "%twinxl%"  then "twinxl"
  when ${is_mattress} is true and ${exchanged_original_item_sku} like "%twin%"  then "twin"
  else null end
    ;;
  }




  dimension: five9_agent_email {
    type: string
    sql: ${TABLE}.five9_agentEmail ;;
  }

  dimension: five9_agent_full_name {
    type: string
    sql: ${TABLE}.five9_agent_full_name ;;
  }

  dimension_group: five9_alert_created {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.five9_alert_created ;;
  }

  dimension: five9_alert_id {
    type: string
    sql: ${TABLE}.five9_alert_id ;;
  }

  dimension: five9_alert_status {
    type: string
    sql: ${TABLE}.five9_alert_status ;;
  }

  dimension: five9_alert_title {
    type: string
    sql: ${TABLE}.five9_alert_title ;;
  }

  dimension: five9_campaign_name {
    type: string
    sql: ${TABLE}.five9_campaignName ;;
  }

  dimension: five9_id {
    type: string
    sql: ${TABLE}.five9_id ;;
  }

  dimension: five9_phone_number {
    type: string
    sql: ${TABLE}.five9_phoneNumber ;;
  }

  dimension: five9_provider_session_id {
    type: string
    sql: ${TABLE}.five9_providerSessionId ;;
  }

  dimension: five9_resolve_reason {
    type: string
    sql: ${TABLE}.five9_resolveReason ;;
  }

  dimension: five9_short_id {
    type: string
    sql: ${TABLE}.five9_short_id ;;
  }

  dimension: has_order {
    type: yesno
    sql: ${TABLE}.has_order ;;
  }

  dimension: has_order_before_interaction {
    type: yesno
    sql: ${TABLE}.has_order_before_interaction ;;
  }

  dimension: is_mattress {
    type: yesno
    sql: ${TABLE}.is_mattress ;;
  }

  dimension: main_email {
    type: string
    sql: ${TABLE}.mainEmail ;;
  }

  dimension: mediatype {
    type: string
    sql: ${TABLE}.mediatype ;;
  }

  dimension: order_exchange_discount {
    type: number
    sql: ${TABLE}.order_exchange_discount ;;
  }


  dimension: product_title {
    type: string
    sql: ${TABLE}.product_title ;;
  }

  dimension: order_within_48h {
    type: yesno
    sql: ${TABLE}.order_within_48h ;;
  }

  dimension_group: original_order_created {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.original_order_created_date ;;
  }



# date granularity - alert_created #

  parameter: Date_Granularity_original_order_created {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
    allowed_value: { value: "Hour" }
    allowed_value: { value: "Hour of Day" }
  }

  dimension: original_order_created {
    label_from_parameter: Date_Granularity_original_order_created
    sql:
            CASE
             WHEN {% parameter Date_Granularity_original_order_created %} = 'Day' THEN cast(${alert_created_date} as string)
             WHEN {% parameter Date_Granularity_original_order_created %} = 'Week' THEN cast(${alert_created_week} as string)
             WHEN {% parameter Date_Granularity_original_order_created %} = 'Month' THEN cast(${alert_created_month} as string)
             WHEN {% parameter Date_Granularity_original_order_created %} = 'Quarter' THEN cast(${alert_created_quarter} as string)
             WHEN {% parameter Date_Granularity_original_order_created %} = 'Year' THEN cast(${alert_created_hour} as string)
            WHEN {% parameter Date_Granularity_original_order_created %} = 'Hour of Day' THEN cast(${alert_created_hour_of_day} as string)
            ELSE null
            END ;;
  }






  dimension: original_order_source {
    type: string
    sql: ${TABLE}.original_order_source ;;
  }

  dimension: resolve_reason {
    type: string
    sql: ${TABLE}.resolveReason ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: short_id_num {
    type: string
    sql: ${TABLE}.short_id_num ;;
  }



  dimension: type_name {
    type: string
    sql: ${TABLE}.type_name ;;
  }


  dimension: trans_after_alert {
    type: yesno
    sql: ${TABLE}.trans_after_alert ;;
  }

  dimension_group: transaction {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.transaction_time ;;
  }


# date granularity - transaction #

  parameter: Date_Granularity_transaction {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
    allowed_value: { value: "Hour" }
    allowed_value: { value: "Hour of Day" }
  }

  dimension: transaction_Date {
    label_from_parameter: Date_Granularity_transaction
    sql:
            CASE
             WHEN {% parameter Date_Granularity_transaction %} = 'Day' THEN cast(${transaction_date} as string)
             WHEN {% parameter Date_Granularity_transaction %} = 'Week' THEN cast(${transaction_week} as string)
             WHEN {% parameter Date_Granularity_transaction %} = 'Month' THEN cast(${transaction_month} as string)
             WHEN {% parameter Date_Granularity_transaction %} = 'Quarter' THEN cast(${transaction_quarter} as string)
             WHEN {% parameter Date_Granularity_transaction %} = 'Year' THEN cast(${transaction_hour} as string)
            WHEN {% parameter Date_Granularity_transaction %} = 'Hour of Day' THEN cast(${transaction_hour_of_day} as string)
            ELSE null
            END ;;
  }




  dimension: was_refunded {
    type: yesno
    sql: ${TABLE}.was_refunded ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      exchanged_agent_first_name,
      exchanged_agent_last_name,
      five9_agent_full_name,
      disposition_name,
      campaign_name,
      five9_campaign_name,
      customer_name
    ]
  }

  #### mesures 31082022 ##

  measure: total_alerts_created {
    type: count_distinct
    sql: ${alert_id} ;;
    value_format: "#,##0"
    group_label: "Alerts"
  }


  measure: total_alerts_reached_five9 {
    type: count_distinct
    sql: ${five9_alert_id} ;;
    value_format: "#,##0"
    group_label: "Alerts"
  }

  dimension: is_call_in_five9{
    description: "Is call answerd"
    type: yesno
    sql:  ${five9_provider_session_id} is not null ;;
    group_label: "Calls"
  }

  dimension: is_call_in_five9_answerd{
    description: "Is call answerd"
    type: yesno
    sql:  ${five9_provider_session_id} is not null and ${five9_agent_email} <> ""  ;;
    group_label: "Calls"
  }

  dimension: is_call_in_five9_answerd_and_upsell{
    description: "Is call answerd"
    type: yesno
    sql:  ${five9_provider_session_id} is not null and ${five9_agent_email} <> ""  and ${exchanged_agent_id} is not null ;;
    group_label: "Calls"
  }



  measure: total_session_id {
    type: count_distinct
    sql: ${five9_provider_session_id} ;;
    value_format: "#,##0"
    group_label: "five9 Measures - session"
  }

  measure: total_customer_Id {
    type: count_distinct
    sql: ${customer_id} ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }


  measure: total_upsell_exchange{
    type: count_distinct
    sql: case when (${exchanged_agent_email} <> "" or ${exchanged_agent_email} is not null  ) then  ${five9_short_id} else null end
     ;;
    value_format: "#,##0"
  }

  measure: total_upsell_exchange_not_Five9{
    type: count_distinct
    sql: case when (${exchanged_agent_email} <> "" ) = "upsell") then  ${short_id} else null end
      ;;
    value_format: "#,##0"
  }


  measure: total_upsell_exchange_answered_calls{
    type: count_distinct
    sql: case when ( ${exchanged_agent_email} <> "" and   ${is_call_in_five9_answerd} is true )  then  ${five9_short_id} else null end
      ;;
    value_format: "#,##0"
  }


  measure: total_session_id_answerd {
    type: count_distinct
    sql: case when ${is_call_in_five9_answerd} is true then ${five9_provider_session_id}  else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - session"
  }

### conversation


  measure: upsell_out_of_alerts {
    label: "% upsell out of alerts"
    type: number
    sql: ${total_upsell_exchange} / nullif(${total_alerts_created}, 0) ;;
    value_format: "0.0%"
    group_label: "conversation"
  }


  measure: upsell_out_of_alerts_reached_five9_dailer{
    label: "% upsell out of five9 alerts"
    type: number
    sql: ${total_upsell_exchange} / nullif(${total_alerts_reached_five9}, 0) ;;
    value_format: "0.0%"
    group_label: "conversation"
  }

  measure: upsell_out_of_answerd_calls{
    label: "% upsell out of answerd calls"
    type: number
    sql: ${total_upsell_exchange} / nullif(${total_session_id_answerd}, 0) ;;
    value_format: "0.0%"
    group_label: "conversation"
  }


  measure: called_reached_five9_out_of_alerts{
    label: "% five9 alerts out of all alerts "
    type: number
    sql: ${total_alerts_reached_five9} / nullif(${total_alerts_created}, 0) ;;
    value_format: "0.0%"
    group_label: "conversation"
  }

  measure: percentage_of_answerd_calls{
    label: "% answered calls out of five9 alerts"
    type: number
    sql: ${total_session_id_answerd} / nullif(${total_alerts_reached_five9}, 0) ;;
    value_format: "0.0%"
    group_label: "conversation"
  }


  measure: total_working_upsell_agents {
    type: count_distinct
    sql: case when ${exchanged_agent_email} <> "" then  ${exchanged_agent_email} else null end
      ;;
    value_format: "#,##0"
  }

  measure: avg_sales_per_working_agent{
    label: "avg sales per working agent"
    type: number
    sql: ${total_upsell_exchange} / nullif(${total_working_upsell_agents}, 0) ;;
    value_format: "0.00"
    group_label: "conversation"
  }






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
      {% if compare_to._parameter_value == "Period" %}
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
      {% if compare_to._parameter_value == "Period" %}
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
    #hidden:  yes
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
           WHEN {% condition current_date_range %}  ${alert_created_raw} {% endcondition %}
           THEN "This {% parameter compare_to %}"
           WHEN ${alert_created_raw} between ${period_2_start} and ${period_2_end}
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
           WHEN {% condition current_date_range %} ${alert_created_raw} /*findme6*/{% endcondition %}
           THEN 1
           WHEN ${alert_created_raw} between ${period_2_start} and ${period_2_end}
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
      timeframes: [date, week, month, quarter, year,time,hour]
    }

    dimension: Current_Period {
      label_from_parameter: Date_Granularity_alert_created
      sql:
            CASE
             WHEN {% parameter Date_Granularity_alert_created %} = 'Hour' THEN cast(${date_in_period_hour} as string)
             WHEN {% parameter Date_Granularity_alert_created %} = 'Day' THEN cast(${date_in_period_date} as string)
             WHEN {% parameter Date_Granularity_alert_created %} = 'Week' THEN cast(${date_in_period_week} as string)
             WHEN {% parameter Date_Granularity_alert_created %} = 'Month' THEN cast(${date_in_period_year} as string)
             WHEN {% parameter Date_Granularity_alert_created %} = 'Quarter' THEN cast(${date_in_period_quarter} as string)
            ELSE null
            END ;;
    }
    dimension: minute_in_period {
      view_label: "Timeline Comparison Fields"
      description: "Gives the number of days since the start of each periods. Use this to align the event dates onto the same axis, the axes will read 1,2,3, etc."
      type: number
      sql:
          {% if current_date_range._is_filtered %}
            CASE
              WHEN {% condition current_date_range %} ${alert_created_raw} {% endcondition %}
              THEN TIMESTAMP_DIFF(${alert_created_raw},{% date_start current_date_range %},minute)+1

        WHEN ${alert_created_raw} between ${period_2_start} and ${period_2_end}
        THEN TIMESTAMP_DIFF(${alert_created_raw}, ${period_2_start},minute)+1
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
              WHEN {% condition current_date_range %} ${alert_created_raw} {% endcondition %}
              THEN TIMESTAMP_DIFF(${alert_created_raw},{% date_start current_date_range %},DAY)+1

        WHEN ${alert_created_raw} between ${period_2_start} and ${period_2_end}
        THEN TIMESTAMP_DIFF(${alert_created_raw}, ${period_2_start},DAY)+1
        END

        {% else %} NULL
        {% endif %}
        ;;
      hidden: no


    }


    dimension: date_formatted {
      sql: ${alert_created} ;;
      html: {{ rendered_value | date: "%h %d" }} ;;

    }


  dimension: product_size {
    type: string
    sql: ${TABLE}.product_size ;;
  }



  measure: calls_made_per_alert {
    label: "calls per alerts"
    type: number
    sql: count(distinct ${five9_id}) / nullif(count(distinct ${alert_id}), 0) ;;
    value_format: "0.00"
    group_label: "conversation"
  }






  dimension: num_calls {
    type: number
    sql: ${TABLE}.num_calls ;;
  }

  dimension: diff_minutes_from_order_to_alert {
    type: number
    sql: ${TABLE}.diff_minutes_from_order_to_alert ;;
  }

  dimension: diff_minutes_from_alert_to_exchange_date {
    type: number
    sql: ${TABLE}.diff_minutes_from_alert_to_exchange_date ;;
  }

  dimension: diff_minutes_from_order_to_exchange_date {
    type: number
    sql: ${TABLE}.diff_minutes_from_order_to_exchange_date ;;
  }

  dimension: diff_minutes_from_alert_to_transaction_time {
    type: number
    sql: ${TABLE}.diff_minutes_from_alert_to_transaction_time ;;
  }

  dimension: exchange_type {
    type: string
    sql: ${TABLE}.exchange_type ;;
  }

### 27022025

  measure: total_short_id {
    type: count_distinct
    sql: ${short_id_num} ;;
    value_format: "#,##0"
  }



}
