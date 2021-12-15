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
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.event_date ;;
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

  measure: total_email_sent {
    type: count_distinct
    sql: ${unique_email_id} ;;
      }



## from Klaviyo_event_data_tbl

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
    type: number
    sql: ${total_received_emails} + ${total_bounced_emails} + ${total_dropped_emails} ;;
    value_format: "#,##0"
    group_label: "Email Measures"
  }

## convertion rate

  measure: Opened_rate_recived_open {
    label: "% of opened email out of received emails"
    type: number
    sql: ${total_opened_emails}/${total_received_emails}  ;;
    value_format: "0.00%"
    group_label: "Email Measures"
  }

  measure: Opened_rate_sent_open {
    label: "% of opened email out of sent emails"
    type: number
    sql: ${total_opened_emails}/${total_sent_emails}  ;;
    value_format: "0.00%"
    group_label: "Email Measures"
  }

  measure: Clicked_rates {
    label: "% of clicked email out of opened emails"
    type: number
    sql: ${total_clicked_emails}/${total_opened_emails}  ;;
    value_format: "0.00%"
    group_label: "Email Measures"
  }


## date dimensions

  dimension: not_today {
    type: yesno
    sql: ${event_date} < current_date('America/Los_Angeles') ;;
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
             WHEN {% parameter date_granularity %} = 'Day' THEN cast(${event_date} as string)
             WHEN {% parameter date_granularity %} = 'Week' THEN cast(${event_date} as string)
             WHEN {% parameter date_granularity %} = 'Month' THEN cast(${event_date} as string)
             WHEN {% parameter date_granularity %} = 'Quarter' THEN cast(${event_date} as string)
             WHEN {% parameter date_granularity %} = 'Year' THEN cast(${event_date} as string)
            ELSE null
            END ;;
  }




}
