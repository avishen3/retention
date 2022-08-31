view: alerts_outgoing_calls_five9_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.alerts_outgoing_calls_five9_tbl`
    ;;

  dimension: agent_group {
    type: string
    sql: ${TABLE}.agent_group ;;
  }

  dimension: alert_brand {
    type: string
    sql: ${TABLE}.alert_brand ;;
  }

  dimension_group: alert_created {
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
    sql: ${TABLE}.alert_created ;;
  }

  dimension: alert_customer_phone {
    type: string
    sql: ${TABLE}.alert_customer_phone ;;
  }

  dimension: alert_email {
    type: string
    sql: ${TABLE}.alert_email ;;
  }

  dimension: alert_id {
    type: string
    sql: ${TABLE}.alert_id ;;
  }

  dimension: alert_sku {
    type: string
    sql: ${TABLE}.alert_sku ;;
  }

  dimension: alert_status {
    type: string
    sql: ${TABLE}.alert_status ;;
  }

  dimension: alert_title {
    type: string
    sql: ${TABLE}.alert_title ;;
  }

  dimension: ani {
    type: string
    sql: ${TABLE}.ANI ;;
  }

  dimension: brand_campaign {
    type: string
    sql: ${TABLE}.brand_campaign ;;
  }

  dimension: call_rank {
    type: number
    sql: ${TABLE}.call_rank ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: correspondence_type {
    type: string
    sql: ${TABLE}.correspondenceType ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customerId ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: customer_phone {
    type: string
    sql: ${TABLE}.customerPhone ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }

  dimension: disposition_name {
    type: string
    sql: ${TABLE}.disposition_name ;;
  }

  dimension_group: exchange {
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
    sql: ${TABLE}.exchange_date ;;
  }

  dimension: exchange_discount {
    type: number
    sql: ${TABLE}.exchange_discount ;;
  }

  dimension: exchanged_agent_email {
    type: string
    sql: ${TABLE}.exchanged_agent_email ;;
  }

  dimension: exchanged_agent_first_name {
    type: string
    sql: ${TABLE}.exchanged_agent_first_name ;;
  }

  dimension: exchanged_agent_id {
    type: string
    sql: ${TABLE}.exchanged_agent_id ;;
  }

  dimension: exchanged_agent_last_name {
    type: string
    sql: ${TABLE}.exchanged_agent_last_name ;;
  }

  dimension: exchanged_original_item_category {
    type: string
    sql: ${TABLE}.exchanged_original_item_category ;;
  }

  dimension: exchanged_original_item_product_title {
    type: string
    sql: ${TABLE}.exchanged_original_item_product_title ;;
  }

  dimension: exchanged_original_item_sku {
    type: string
    sql: ${TABLE}.exchanged_original_item_sku ;;
  }

  dimension: five9_agent_email {
    type: string
    sql: ${TABLE}.five9_agentEmail ;;
  }

  dimension: five9_agent_full_name {
    type: string
    sql: ${TABLE}.five9_agent_full_name ;;
  }

  dimension_group: five9_alert_created {
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
    sql: ${TABLE}.five9_alert_created ;;
  }

  dimension: five9_alert_id {
    type: string
    sql: ${TABLE}.five9_alert_id ;;
  }

  dimension: five9_alert_status {
    type: string
    sql: ${TABLE}.five9_alert_status ;;
  }

  dimension: five9_alert_title {
    type: string
    sql: ${TABLE}.five9_alert_title ;;
  }

  dimension: five9_campaign_name {
    type: string
    sql: ${TABLE}.five9_campaignName ;;
  }

  dimension: five9_id {
    type: string
    sql: ${TABLE}.five9_id ;;
  }

  dimension: five9_phone_number {
    type: string
    sql: ${TABLE}.five9_phoneNumber ;;
  }

  dimension: five9_provider_session_id {
    type: string
    sql: ${TABLE}.five9_providerSessionId ;;
  }

  dimension: five9_resolve_reason {
    type: string
    sql: ${TABLE}.five9_resolveReason ;;
  }

  dimension: five9_short_id {
    type: string
    sql: ${TABLE}.five9_short_id ;;
  }

  dimension: has_order {
    type: yesno
    sql: ${TABLE}.has_order ;;
  }

  dimension: has_order_before_interaction {
    type: yesno
    sql: ${TABLE}.has_order_before_interaction ;;
  }

  dimension: is_mattress {
    type: yesno
    sql: ${TABLE}.is_mattress ;;
  }

  dimension: main_email {
    type: string
    sql: ${TABLE}.mainEmail ;;
  }

  dimension: mediatype {
    type: string
    sql: ${TABLE}.mediatype ;;
  }

  dimension: order_exchange_discount {
    type: number
    sql: ${TABLE}.order_exchange_discount ;;
  }

  dimension: order_within_48h {
    type: yesno
    sql: ${TABLE}.order_within_48h ;;
  }

  dimension_group: original_order_created {
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
    sql: ${TABLE}.original_order_created_date ;;
  }

  dimension: original_order_source {
    type: string
    sql: ${TABLE}.original_order_source ;;
  }

  dimension: resolve_reason {
    type: string
    sql: ${TABLE}.resolveReason ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: short_id_num {
    type: string
    sql: ${TABLE}.short_id_num ;;
  }

  dimension: trans_after_alert {
    type: yesno
    sql: ${TABLE}.trans_after_alert ;;
  }

  dimension_group: transaction {
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
    sql: ${TABLE}.transaction_time ;;
  }

  dimension: was_refunded {
    type: yesno
    sql: ${TABLE}.was_refunded ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      exchanged_agent_first_name,
      exchanged_agent_last_name,
      five9_agent_full_name,
      disposition_name,
      campaign_name,
      five9_campaign_name,
      customer_name
    ]
  }

  #### mesures 31082022 ##

  measure: total_alerts_created {
    type: count_distinct
    sql: ${alert_id} ;;
    value_format: "#,##0"
    group_label: "Alerts"
  }


  measure: total_alerts_reached_five9 {
    type: count_distinct
    sql: ${five9_alert_id} ;;
    value_format: "#,##0"
    group_label: "Alerts"
  }

  dimension: is_call_in_five9{
    description: "Is call answerd"
    type: yesno
    sql:  ${five9_provider_session_id} is not null ;;
    group_label: "Calls"
  }

  dimension: is_call_in_five9_answerd{
    description: "Is call answerd"
    type: yesno
    sql:  ${five9_provider_session_id} is not null and ${five9_agent_email} <> ""  ;;
    group_label: "Calls"
  }



  measure: total_session_id {
    type: count_distinct
    sql: ${five9_provider_session_id} ;;
    value_format: "#,##0"
    group_label: "five9 Measures - session"
  }

  measure: total_customer_Id {
    type: count_distinct
    sql: ${customer_id} ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }


  measure: total_upsell_exchange{
    type: count_distinct
    sql: case when ${exchanged_agent_email} <> "" then  ${five9_short_id} else null end
     ;;
    value_format: "#,##0"

  }



  measure: total_upsell_exchange_answered_calls{
    type: count_distinct
    sql: case when ( ${exchanged_agent_email} <> "" and   ${is_call_in_five9_answerd} is true)  then  ${five9_short_id} else null end
      ;;
    value_format: "#,##0"

  }





  measure: total_session_id_answerd {
    type: count_distinct
    sql: case when ${is_call_in_five9_answerd} is true than ${five9_provider_session_id}  else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - session"
  }



}
