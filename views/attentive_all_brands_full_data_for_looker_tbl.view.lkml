view: attentive_all_brands_full_data_for_looker_tbl {
  sql_table_name: `omega-post-184817.crm.attentive_all_brands_full_data_for_looker_tbl`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
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

  dimension: creative_name_lower {
    type: string
    sql: ${TABLE}.creative_name_lower ;;
  }

  dimension: creative_subtype {
    type: string
    sql: ${TABLE}.creative_subtype ;;
  }

  dimension: creative_type {
    type: string
    sql: ${TABLE}.creative_type ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: event_time {
    type: string
    sql: ${TABLE}.event_time ;;
  }

  dimension_group: event_timestemp {
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
    sql: ${TABLE}.event_timestemp ;;
  }


  dimension: brand_latters {
    type: string
    sql: ${TABLE}.brand_latters ;;
  }

  dimension: flow_promo {
    type: string
    sql: ${TABLE}.flow_promo ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: sms_num {
    type: string
    sql: ${TABLE}.sms_num ;;
  }

  dimension: offer_name {
    type: string
    sql: ${TABLE}.offer_name ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }

###



  dimension: flow_name {
    type: string
    sql: ${TABLE}.flow_name ;;
  }

  dimension: sub_flow_name {
    type: string
    sql: ${TABLE}.sub_flow_name ;;
  }

  dimension: campaign_name_with_cam {
    type: string
    sql: ${TABLE}.campaign_name_with_cam ;;
  }

  dimension: sms_num_and_letter_all {
    type: string
    sql: ${TABLE}.sms_num_and_letter_all ;;
  }

  dimension: sms_num_and_letter {
    type: string
    sql: ${TABLE}.sms_num_and_letter ;;
  }




## date dimensions

 ## dimension: not_today {
##    type: yesno
##    sql: ${event_timestemp} < current_date('America/Los_Angeles') ;;
##    group_label: "Date Filters"
##    description: "Filters any date after today (including today)"
##  }

  parameter: event_date_granularity {
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
    label_from_parameter: event_date_granularity
    description: "Use 'Date Granularity' selector to modify the date granularity"
    sql:
            CASE
             WHEN {% parameter event_date_granularity %} = 'Day' THEN cast(${event_timestemp_date} as string)
             WHEN {% parameter event_date_granularity %} = 'Week' THEN cast(${event_timestemp_week} as string)
             WHEN {% parameter event_date_granularity %} = 'Month' THEN cast(${event_timestemp_month} as string)
             WHEN {% parameter event_date_granularity %} = 'Quarter' THEN cast(${event_timestemp_quarter} as string)
             WHEN {% parameter event_date_granularity %} = 'Year' THEN cast(${event_timestemp_year} as string)
            ELSE null
            END ;;
  }



  dimension_group: event_timestemp_day {
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
    sql: ${TABLE}.event_timestemp_day ;;
  }

  dimension: join_source {
    type: string
    sql: ${TABLE}.join_source ;;
  }

  dimension: join_time {
    type: string
    sql: ${TABLE}.join_time ;;
  }

  dimension_group: join_timestemp {
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
    sql: ${TABLE}.join_timestemp ;;
  }

  dimension: massage_name {
    type: string
    sql: ${TABLE}.massage_name ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}.message_id ;;
  }

  dimension: message_start_time {
    type: string
    sql: ${TABLE}.message_start_time ;;
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

  dimension: opt_out_time {
    type: string
    sql: ${TABLE}.opt_out_time ;;
  }

  dimension_group: opt_out_timestemp {
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
    sql: ${TABLE}.opt_out_timestemp ;;
  }

  dimension: phone {
    type: number
    sql: ${TABLE}.phone ;;
  }

  dimension: phone_string {
    type: string
    sql: ${TABLE}.phone_string ;;
  }

  dimension: subscription_type {
    type: string
    sql: ${TABLE}.subscription_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [creative_name, massage_name]
  }






  measure: total_unique_phone {
    type: count_distinct
    sql: ${phone} ;;
    value_format: "#,##0"
    group_label: "phone Measures"
  }

  measure: total_impression  {
    type: count_distinct
    sql: case when ${type} = 'impression' then ${phone} else null end ;;
    value_format: "#,##0"
    group_label: "phone Measures"

    }

    measure: total_message_receipt  {
      type: count_distinct
      sql: case when ${type} = 'message_receipt' then ${phone} else null end ;;
      value_format: "#,##0"
      group_label: "phone Measures"
      }

      measure: total_message_link_click  {
        type: count_distinct
        sql: case when ${type} = 'message_link_click' then ${phone} else null end ;;
        value_format: "#,##0"
        group_label: "phone Measures"
        }

        measure: total_click  {
          type: count_distinct
          sql: case when ${type} = 'message_link_click' then ${phone} else null end ;;
          value_format: "#,##0"
          group_label: "phone Measures"
         }

  measure: total_purchase  {
    type: count_distinct
    sql: case when ${type} = 'purchase' then ${phone} else null end ;;
    value_format: "#,##0"
    group_label: "phone Measures"

  }

  measure: total_join  {
    type: count_distinct
    sql: case when ${type} = 'join' then ${phone} else null end ;;
    value_format: "#,##0"
    group_label: "phone Measures"

  }


  measure: Opened_rate_recived_open {
    label: "% of clicked message out of received SMS"
    type: number
    sql: ${total_message_link_click}/ nullif(${total_message_receipt}, 0)  ;;
    value_format: "0.00%"
    group_label: "phone Measures"
  }


  measure: clicked_to_purchase_rate {
    label: "% of purchase out of clicked message "
    type: number
    sql: ${total_purchase}/ nullif(${total_message_link_click}, 0)  ;;
    value_format: "0.00%"
    group_label: "phone Measures"
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
           WHEN {% condition current_date_range %}  ${event_timestemp_raw} {% endcondition %}
           THEN "This {% parameter compare_to %}"
           WHEN ${event_timestemp_raw} between ${period_2_start} and ${period_2_end}
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
           WHEN {% condition current_date_range %} ${event_timestemp_raw} /*findme6*/{% endcondition %}
           THEN 1
           WHEN ${event_timestemp_raw} between ${period_2_start} and ${period_2_end}
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
      label_from_parameter: event_date_granularity
      sql:
            CASE
             WHEN {% parameter event_date_granularity %} = 'Hour' THEN cast(${date_in_period_hour} as string)
             WHEN {% parameter event_date_granularity %} = 'Day' THEN cast(${date_in_period_date} as string)
             WHEN {% parameter event_date_granularity %} = 'Week' THEN cast(${date_in_period_week} as string)
             WHEN {% parameter event_date_granularity %} = 'Month' THEN cast(${date_in_period_year} as string)
             WHEN {% parameter event_date_granularity %} = 'Quarter' THEN cast(${date_in_period_quarter} as string)
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
              WHEN {% condition current_date_range %} ${event_timestemp_raw} {% endcondition %}
              THEN TIMESTAMP_DIFF(${event_timestemp_raw},{% date_start current_date_range %},minute)+1

        WHEN ${event_timestemp_raw} between ${period_2_start} and ${period_2_end}
        THEN TIMESTAMP_DIFF(${event_timestemp_raw}, ${period_2_start},minute)+1
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
              WHEN {% condition current_date_range %} ${event_timestemp_raw} {% endcondition %}
              THEN TIMESTAMP_DIFF(${event_timestemp_raw},{% date_start current_date_range %},DAY)+1

        WHEN ${event_timestemp_raw} between ${period_2_start} and ${period_2_end}
        THEN TIMESTAMP_DIFF(${event_timestemp_raw}, ${period_2_start},DAY)+1
        END

        {% else %} NULL
        {% endif %}
        ;;
      hidden: no


    }


    dimension: date_formatted {
      sql: ${event_timestemp_raw} ;;
      html: {{ rendered_value | date: "%h %d" }} ;;

    }




}
