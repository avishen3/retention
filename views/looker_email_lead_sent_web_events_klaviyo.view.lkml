view: looker_email_lead_sent_web_events_klaviyo {
  sql_table_name: `omega-post-184817.Keshet.looker_email_lead_sent_web_events_klaviyo`
    ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
   ## convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
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
    sql:${num_of_email_created_by_day_lead_created}/ nullif(${num_send_first_email},0);;
    value_format: "0.00%"
  }




}
