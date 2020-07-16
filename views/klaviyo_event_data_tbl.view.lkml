view: klaviyo_event_data_tbl {
  sql_table_name: retention.klaviyo_event_data_tbl  ;;

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

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: list {
    type: string
    sql: ${TABLE}.list ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: email_created {
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
    sql: ${TABLE}.email_created ;;
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

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_date ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: is_unsubscriber {
    type: yesno
    sql: ${TABLE}.is_unsubscriber ;;
  }

  dimension: unique_email_id {
    type: string
    sql: ${TABLE}.unique_email_id ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name, event_name]
  }

# Date dimensions and parameters

  dimension: not_today {
    type: yesno
    sql: ${email_created_date} < current_date() ;;
  }

  parameter: email_created_granularity {
    type: string
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

  dimension: granular_email_created {
    label_from_parameter: email_created_granularity
    sql:
            CASE
             WHEN {% parameter email_created_granularity %} = 'Day' THEN cast(${email_created_date} as string)
             WHEN {% parameter email_created_granularity %} = 'Week' THEN cast(${email_created_week} as string)
             WHEN {% parameter email_created_granularity %} = 'Month' THEN cast(${email_created_month} as string)
             WHEN {% parameter email_created_granularity %} = 'Quarter' THEN cast(${email_created_quarter} as string)
             WHEN {% parameter email_created_granularity %} = 'Year' THEN cast(${email_created_year} as string)
            ELSE null
            END ;;
  }


  # measures - from sending to receiving

  measure: total_unique_emails {
    type: count_distinct
    sql: ${unique_email_id} ;;
    value_format: "#,##0"
  }

  measure: total_received_emails {
    type: count_distinct
    sql: case when ${event_name} = 'Received Email' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
  }

  measure: total_bounced_emails {
    type: count_distinct
    sql: case when ${event_name} = 'Bounced Email' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
  }

  measure: total_dropped_emails {
    type: count_distinct
    sql: case when ${event_name} = 'Dropped Email' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
  }

  measure: total_sent_emails {
    type: number
    sql: ${total_received_emails} + ${total_bounced_emails} + ${total_dropped_emails} ;;
    value_format: "#,##0"
  }

  measure: deliverability_rate {
    type: number
    sql: ${total_received_emails} / nullif(${total_sent_emails}, 0) ;;
    value_format: "0.00%"
  }

  measure: bounce_rate {
    type: number
    sql: ${total_bounced_emails} / nullif(${total_sent_emails}, 0) ;;
    value_format: "0.00%"
  }

  measure: drop_rate {
    type: number
    sql: ${total_dropped_emails} / nullif(${total_sent_emails}, 0) ;;
    value_format: "0.00%"
  }

  # measures - after receiving

  measure: total_opens {
    type: count_distinct
    sql: case when ${event_name} = 'Opened Email' then ${event_id} else null end ;;
    value_format: "#,##0"
  }

  measure: total_opened_emails {
    type: count_distinct
    sql: case when ${event_name} = 'Opened Email' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
  }

  measure: total_clicks {
    type: count_distinct
    sql: case when ${event_name} = 'Clicked Email' then ${event_id} else null end ;;
    value_format: "#,##0"
  }

  measure: total_clicked_emails {
    type: count_distinct
    sql: case when ${event_name} = 'Clicked Email' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
  }

  measure: total_orders {
    type: count_distinct
    sql: ${order_id};;
    value_format: "#,##0"
  }

  measure: open_rate {
    type: number
    sql: ${total_opened_emails} / nullif(${total_unique_emails}, 0) ;;
    value_format: "0.00%"
  }

  measure: ctr {
    label: "CTR"
    type: number
    sql: ${total_clicked_emails} / nullif(${total_unique_emails}, 0) ;;
    value_format: "0.00%"
  }

  measure: ctor {
    label: "CTOR"
    description: "Click-to-open rate"
    type: number
    sql: ${total_clicks} / nullif(${total_opens}, 0) ;;
    value_format: "0.00%"
  }

  measure: cvr {
    label: "CVR"
    type: number
    sql: ${total_orders} / nullif(${total_clicks}, 0) ;;
    value_format: "0.00%"
  }


  # measures - user preferences

  measure: total_unsubscribed_emails {
    type: count_distinct
    sql: case when ${event_name} = 'Unsubscribed' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
  }

  measure: total_unsubscribed_emails_from_list {
    type: count_distinct
    sql: case when ${event_name} = 'Unsubscribed from List' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
  }

  measure: total_unsubscribed_emails_to_list {
    type: count_distinct
    sql: case when ${event_name} = 'Subscribed to List' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
  }

  measure: total_emails_marked_as_spam {
    type: count_distinct
    sql: case when ${event_name} = 'Marked Email as Spam' then ${unique_email_id} else null end ;;
    value_format: "#,##0"
  }

  measure: total_updated_email_preferences {
    type: count_distinct
    sql: case when ${event_name} = 'Updated Email Preferences' then ${event_id} else null end ;;
    value_format: "#,##0"
  }

  measure: unsubscribe_rate {
    type: number
    sql: ${total_unsubscribed_emails} / nullif(${total_received_emails}, 0) ;;
    value_format: "0.00%"
  }

  measure: unsubscribe_from_list_rate {
    type: number
    sql: ${total_unsubscribed_emails_from_list} / nullif(${total_received_emails}, 0) ;;
    value_format: "0.00%"
  }

  measure: spam_rate {
    type: number
    sql: ${total_emails_marked_as_spam} / nullif(${total_received_emails}, 0) ;;
    value_format: "0.00%"
  }

  # user measures

  measure: total_users {
    type: count_distinct
    sql: ${email} ;;
    value_format: "#,##0"
  }

}
