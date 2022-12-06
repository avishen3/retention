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
      year
    ]
    datatype: datetime
    sql: ${TABLE}.ts_Received_email ;;
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

  measure: total_revenue_from_email_sum {
    type: sum
    sql:case when ${email_order_created_raw} is not null then (${email_order_price}-${email_order_tax}) else null end ;;
    value_format: "#,##0"
    group_label: "Orders Measures"
  }


  measure: total_revenue_from_email_sum_distinct {
    type: sum_distinct
    sql_distinct_key: concat(${email},${campaign})
    sql:case when ${email_order_created_raw} is not null then (${email_order_price}-${email_order_tax}) else null end ;;
    value_format: "#,##0"
    group_label: "Orders Measures"
  }




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




}
