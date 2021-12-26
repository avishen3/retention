view: looker_klaviyo_try_1 {
  sql_table_name: `omega-post-184817.Keshet.looker_klaviyo_try_1`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_subject {
    type: string
    sql: ${TABLE}.email_subject ;;
  }

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      hour,
      time,
      day_of_week
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.event ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: flow {
    type: string
    sql: ${TABLE}.flow ;;
  }

  dimension: flow_id {
    type: string
    sql: ${TABLE}.flow_Id ;;
  }

  dimension: flow_id_1 {
    type: string
    sql: ${TABLE}.flow_id_1 ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: list {
    type: string
    sql: ${TABLE}.list ;;
  }

  dimension_group: person_created {
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
    sql: ${TABLE}.person_created ;;
  }

  dimension: promo {
    type: string
    sql: ${TABLE}.promo ;;
  }

  dimension: unique_email_id {
    type: string
    sql: ${TABLE}.unique_email_id ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name, event_name]
  }

## new masures

  ## measure: total_email_sent {
  ##  type: count_distinct
  ##  sql: ${unique_email_id} ;;
  ##    }



## from Klaviyo_event_data_tbl
  #total measures

  measure: total_unique_emails {
    type: count_distinct
    sql: ${unique_email_id} ;;
    value_format: "#,##0"
    group_label: "Email Measures"
  }

  measure: total_opened_emails {
    type: count_distinct
    sql: case when ${event_name} = 'Opened Email' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
    group_label: "Email Measures"
  }

  measure: total_clicked_emails {
    type: count_distinct
    sql: case when ${event_name} = 'Clicked Email' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
    group_label: "Email Measures"
  }

  measure: total_received_emails {
    type: count_distinct
    sql: case when ${event_name} = 'Received Email' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
    group_label: "Email Measures"
  }

  measure: total_bounced_emails {
    type: count_distinct
    sql: case when ${event_name} = 'Bounced Email' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
    group_label: "Email Measures"
  }

  measure: total_dropped_emails {
    type: count_distinct
    sql: case when ${event_name} = 'Dropped Email' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
    group_label: "Email Measures"
  }

  measure: total_sent_emails {
    type: count_distinct
    sql: ${unique_email_id}  ;;
    value_format: "#,##0"
    group_label: "Email Measures"
  }

## convertion rate

    # sending to reciving

  measure: deliverability_rate {
    label: "recevied out of sent"
    type: number
    sql: ${total_received_emails} / nullif(${total_sent_emails}, 0) ;;
    value_format: "0.00%"
    group_label: "Email Measures"
  }

  measure: bounce_rate {
    label: "bounced out of sent"
    type: number
    sql: ${total_bounced_emails} / nullif(${total_sent_emails}, 0) ;;
    value_format: "0.00%"
    group_label: "Email Measures"
  }

  measure: drop_rate {
    label: "drop out of sent"
    type: number
    sql: ${total_dropped_emails} / nullif(${total_sent_emails}, 0) ;;
    value_format: "0.00%"
    group_label: "Email Measures"
  }

  # after reciving

  measure: Opened_rate_recived_open {
    label: "% of opened email out of received emails"
    type: number
    sql: ${total_opened_emails}/ nullif(${total_received_emails}, 0)  ;;
    value_format: "0.00%"
    group_label: "Email Measures"
  }

  measure: Opened_rate_sent_open {
    label: "% of opened email out of sent emails"
    type: number
    sql: ${total_opened_emails}/ nullif(${total_sent_emails}, 0)  ;;
    value_format: "0.00%"
    group_label: "Email Measures"
  }

  measure: Clicked_rates {
    label: "% of clicked email out of opened emails"
    type: number
    sql: ${total_clicked_emails}/ nullif(${total_opened_emails}, 0)  ;;
    value_format: "0.00%"
    group_label: "Email Measures"
  }


## date dimensions
  # date_granularity

  dimension: not_today {
    type: yesno
    sql: ${event_raw} < current_date('America/Los_Angeles') ;;
    group_label: "Date Filters"
    description: "Filters any date after today (including today)"
  }

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

  dimension: date {
    label_from_parameter: date_granularity
    description: "Use 'Date Granularity' selector to modify the date granularity"
    sql:
            CASE
            WHEN {% parameter date_granularity %} = 'Hour' THEN cast(${event_hour} as string)
             WHEN {% parameter date_granularity %} = 'Day' THEN cast(${event_date} as string)
             WHEN {% parameter date_granularity %} = 'Week' THEN cast(${event_week} as string)
             WHEN {% parameter date_granularity %} = 'Month' THEN cast(${event_month} as string)
             WHEN {% parameter date_granularity %} = 'Quarter' THEN cast(${event_quarter} as string)
             WHEN {% parameter date_granularity %} = 'Year' THEN cast(${event_year} as string)
            ELSE null
            END ;;
  }


  dimension:  dow_num {
    type:  string
    sql: EXTRACT(DAYOFWEEK FROM ${event_date}) ;;
    hidden: yes
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

  # date comparison


## Comparison - from web events Ecommerce


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
           WHEN {% condition current_date_range %}  ${event_raw} {% endcondition %}
           THEN "This {% parameter compare_to %}"
           WHEN ${event_raw} between ${period_2_start} and ${period_2_end}
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
           WHEN {% condition current_date_range %} ${event_raw} /*findme6*/{% endcondition %}
           THEN 1
           WHEN ${event_raw} between ${period_2_start} and ${period_2_end}
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
      label_from_parameter: date_granularity
      sql:
            CASE
             WHEN {% parameter date_granularity %} = 'Hour' THEN cast(${date_in_period_hour} as string)
             WHEN {% parameter date_granularity %} = 'Day' THEN cast(${date_in_period_date} as string)
             WHEN {% parameter date_granularity %} = 'Week' THEN cast(${date_in_period_week} as string)
             WHEN {% parameter date_granularity %} = 'Month' THEN cast(${date_in_period_year} as string)
             WHEN {% parameter date_granularity %} = 'Quarter' THEN cast(${date_in_period_quarter} as string)
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
              WHEN {% condition current_date_range %} ${event_raw} {% endcondition %}
              THEN TIMESTAMP_DIFF(${event_raw},{% date_start current_date_range %},minute)+1

              WHEN ${event_raw} between ${period_2_start} and ${period_2_end}
              THEN TIMESTAMP_DIFF(${event_raw}, ${period_2_start},minute)+1
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
              WHEN {% condition current_date_range %} ${event_raw} {% endcondition %}
              THEN TIMESTAMP_DIFF(${event_raw},{% date_start current_date_range %},DAY)+1

              WHEN ${event_raw} between ${period_2_start} and ${period_2_end}
              THEN TIMESTAMP_DIFF(${event_raw}, ${period_2_start},DAY)+1
            END

          {% else %} NULL
          {% endif %}
          ;;
      hidden: no
    }



}
