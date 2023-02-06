view: klaviyo_email_events_by_user {
  sql_table_name: `omega-post-184817.customer.klaviyo_email_events_by_user`
    ;;

  dimension: billing_provider_first {
    type: string
    sql: ${TABLE}.billing_provider_first ;;
  }

  dimension: billing_provider_last {
    type: string
    sql: ${TABLE}.billing_provider_last ;;
  }

  dimension: billing_provider_transaction {
    type: string
    sql: ${TABLE}.billing_provider_transaction ;;
  }

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

  dimension: click_eorder_minute_diff {
    type: number
    sql: ${TABLE}.click_eorder_minute_diff ;;
  }

  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
  }

  dimension: device_category_first {
    type: string
    sql: ${TABLE}.deviceCategory_first ;;
  }

  dimension: device_category_last {
    type: string
    sql: ${TABLE}.deviceCategory_last ;;
  }

  dimension: device_category_transaction {
    type: string
    sql: ${TABLE}.deviceCategory_transaction ;;
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

  dimension: first_lc_order_day_diff {
    type: number
    sql: ${TABLE}.first_lc_order_day_diff ;;
  }

  dimension_group: first_lc_ts {
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
    sql: ${TABLE}.first_lc_ts ;;
  }

  dimension: first_lc_widget {
    type: string
    sql: ${TABLE}.first_lc_widget ;;
  }

  dimension: flow_id {
    type: string
    sql: ${TABLE}.flow_id ;;
  }

  dimension: flow_name {
    type: string
    sql: ${TABLE}.flow_name ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: is_checkout_lead {
    type: yesno
    sql: ${TABLE}.is_checkout_lead ;;
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

  dimension: landing_page_first {
    type: string
    sql: ${TABLE}.landing_page_first ;;
  }

  dimension: landing_page_last {
    type: string
    sql: ${TABLE}.landing_page_last ;;
  }

  dimension: landing_page_transaction {
    type: string
    sql: ${TABLE}.landing_page_transaction ;;
  }

  dimension: last_lc_order_day_diff {
    type: number
    sql: ${TABLE}.last_lc_order_day_diff ;;
  }

  dimension_group: last_lc_ts {
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
    sql: ${TABLE}.last_lc_ts ;;
  }

  dimension: last_lc_widget {
    type: string
    sql: ${TABLE}.last_lc_widget ;;
  }

  dimension: max_funnel_step_first {
    type: string
    sql: ${TABLE}.max_funnel_step_first ;;
  }

  dimension: max_funnel_step_last {
    type: string
    sql: ${TABLE}.max_funnel_step_last ;;
  }

  dimension: max_funnel_step_transaction {
    type: string
    sql: ${TABLE}.max_funnel_step_transaction ;;
  }

  dimension: missing_ts_received_email {
    type: yesno
    sql: ${TABLE}.missing_ts_Received_email ;;
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

  dimension: num_lc {
    type: number
    sql: ${TABLE}.num_lc ;;
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

  dimension: number_of_visits_from_email {
    type: number
    sql: ${TABLE}.number_of_visits_from_email ;;
  }

  dimension: offer {
    type: string
    sql: ${TABLE}.offer ;;
  }

  dimension: open_click_minute_diff {
    type: number
    sql: ${TABLE}.open_click_minute_diff ;;
  }

  dimension: open_eorder_minute_diff {
    type: number
    sql: ${TABLE}.open_eorder_minute_diff ;;
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

  dimension: order_marketing_campaign {
    type: string
    sql: ${TABLE}.order_marketing_campaign ;;
  }

  dimension: order_marketing_platform {
    type: string
    sql: ${TABLE}.order_marketing_platform ;;
  }

  dimension: promo_or_flow {
    type: string
    sql: ${TABLE}.promo_or_flow ;;
  }

  dimension: receive_click_minute_diff {
    type: number
    sql: ${TABLE}.receive_click_minute_diff ;;
  }

  dimension: receive_eorder_minute_diff {
    type: number
    sql: ${TABLE}.receive_eorder_minute_diff ;;
  }

  dimension: receive_open_minute_diff {
    type: number
    sql: ${TABLE}.receive_open_minute_diff ;;
  }

  dimension: receive_visit_minute_diff {
    type: number
    sql: ${TABLE}.receive_visit_minute_diff ;;
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

  dimension: time_on_site_first {
    type: number
    sql: ${TABLE}.timeOnSite_first ;;
  }

  dimension: time_on_site_last {
    type: number
    sql: ${TABLE}.timeOnSite_last ;;
  }

  dimension: time_on_site_transaction {
    type: number
    sql: ${TABLE}.timeOnSite_transaction ;;
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
    sql: ${TABLE}.ts_Received_email ;;
  }

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

  dimension: visit_eorder_minute_diff {
    type: number
    sql: ${TABLE}.visit_eorder_minute_diff ;;
  }

  dimension_group: visit_start_time_first {
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
    sql: ${TABLE}.visitStartTime_first ;;
  }

  dimension_group: visit_start_time_last {
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
    sql: ${TABLE}.visitStartTime_last ;;
  }

  dimension_group: visit_start_time_transaction {
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
    sql: ${TABLE}.visitStartTime_transaction ;;
  }

  dimension: visit_transactionid_first {
    type: string
    sql: ${TABLE}.visit_transactionid_first ;;
  }

  dimension: visit_transactionid_last {
    type: string
    sql: ${TABLE}.visit_transactionid_last ;;
  }

  dimension: visit_transactionid_transaction {
    type: string
    sql: ${TABLE}.visit_transactionid_transaction ;;
  }

  dimension: widget {
    type: string
    sql: ${TABLE}.widget ;;
  }

  measure: count {
    type: count
    drill_fields: [subflow_name, campaign_name, flow_name, klaviyo_flow_name]
  }
}
