view: klaviyo_events_email_type_num_in_flow_tbl {
  sql_table_name: `omega-post-184817.Keshet.klaviyo_events_email_type_num_in_flow_tbl`
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
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
   convert_tz: no
   datatype: datetime
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

  dimension: number_of_email_in_flow_1 {
    type: string
    sql: ${TABLE}.number_of_email_in_flow_1 ;;
  }

  dimension_group: person_created {
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
    sql: ${TABLE}.person_created ;;
  }

  dimension: promo {
    type: string
    sql: ${TABLE}.promo ;;
  }

  dimension: type_of_email {
    type: string
    sql: ${TABLE}.type_of_email ;;
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







}
