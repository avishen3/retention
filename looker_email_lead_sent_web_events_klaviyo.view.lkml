view: looker_to_delea{
  sql_table_name: `omega-post-184817.Keshet.looker_email_lead_sent_web_events_klaviyo`
    ;;

  dimension_group: date_time {
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
    sql: ${TABLE}.date_time ;;
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





}
