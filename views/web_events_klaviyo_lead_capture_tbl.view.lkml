view: web_events_klaviyo_lead_capture_tbl {
  sql_table_name: `omega-post-184817.Keshet.web_events_klaviyo_lead_capture_tbl`
    ;;

  dimension_group: date {
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
    sql: timestamp(${TABLE}.date) ;;
  }

  dimension: email_web_events {
    type: number
    sql: ${TABLE}.email_web_events ;;
  }

  dimension: klaviyo_emails_welcome_abandon {
    type: number
    sql: ${TABLE}.klaviyo_emails_welcome_abandon ;;
  }

  dimension: num_of_email_created_by_day_lead_created {
    type: number
    sql: ${TABLE}.num_of_email_created_by_day_lead_created ;;
  }

  dimension: num_send_first_email {
    type: number
    sql: ${TABLE}.num_send_first_email ;;
  }

  dimension: ratio_first_email_lead_created {
    type: number
    sql: ${TABLE}.ratio_first_email_lead_created ;;
  }

  dimension: ratio_lead_created_lead_cap {
    type: number
    sql: ${TABLE}.ratio_lead_created_lead_cap ;;
  }

  dimension: ratio_welcome_abandon_1_email_lead_created {
    type: number
    sql: ${TABLE}.ratio_welcome_abandon_1_email_lead_created ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }



## date dimensions

  dimension: not_today {
    type: yesno
    sql: ${date_date} < current_date('America/Los_Angeles') ;;
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
             WHEN {% parameter date_granularity %} = 'Day' THEN cast(${date_date} as string)
             WHEN {% parameter date_granularity %} = 'Week' THEN cast(${date_week} as string)
             WHEN {% parameter date_granularity %} = 'Month' THEN cast(${date_month} as string)
             WHEN {% parameter date_granularity %} = 'Quarter' THEN cast(${date_quarter} as string)
             WHEN {% parameter date_granularity %} = 'Year' THEN cast(${date_year} as string)
            ELSE null
            END ;;
  }




  ## measures


  measure: total_lead_created {
    type: sum
    sql:${TABLE}.num_of_email_created_by_day_lead_created  ;;
    value_format: "#,##0"
  }

  measure: total_first_email_sent {
    type: sum
    sql:${TABLE}.num_send_first_email ;;
    value_format: "#,##0"
  }

  measure: ratio_lead_cap_to_first_email {
    label: "lead cap ratio"
    type: number
    sql:${total_first_email_sent}/ nullif(${total_lead_created},0);;
    value_format: "0.00%"
  }







}
