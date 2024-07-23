view: five9_all_interactions {
  sql_table_name: `omega-post-184817.CS_NEW.five9_all_interactions` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: acw_time {
    type: number
    sql: ${TABLE}.Acw_time ;;
  }
  dimension: agent_active_in_2024 {
    type: string
    sql: ${TABLE}.Agent_active_in_2024 ;;
  }
  dimension: agent_id {
    type: string
    sql: ${TABLE}.AgentId ;;
  }
  dimension: agentemail {
    type: string
    sql: ${TABLE}.agentemail ;;
  }
  dimension: agentusername {
    type: string
    sql: ${TABLE}.agentusername ;;
  }
  dimension: ani {
    type: string
    sql: ${TABLE}.ani ;;
  }
  dimension: answered_at {
    type: string
    sql: ${TABLE}.answeredAt ;;
  }
  dimension: avg_hold_duration_seconds {
    type: number
    sql: ${TABLE}.avg_hold_duration_seconds ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
  }
  dimension: brand_campaign {
    type: string
    sql: ${TABLE}.brand_campaign ;;
  }
  dimension: call_id {
    type: string
    sql: ${TABLE}.call_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: campaignname {
    type: string
    sql: ${TABLE}.campaignname ;;
  }
  dimension: chat_total_time {
    type: number
    sql: ${TABLE}.chat_total_time ;;
  }
  dimension: client_id {
    type: string
    sql: ${TABLE}.ClientID ;;
  }
  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }
  dimension: component_id {
    type: number
    sql: ${TABLE}.componentId ;;
  }
  dimension: correspondencetype {
    type: string
    sql: ${TABLE}.correspondencetype ;;
  }
  dimension: created_chat_from {
    type: string
    sql: ${TABLE}.created_chat_from ;;
  }
  dimension: created_chat_to {
    type: string
    sql: ${TABLE}.Created_chat_to ;;
  }
  dimension_group: creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.creation_time ;;
  }
  dimension: customer_id {
    type: string
    sql: ${TABLE}.customerId ;;
  }
  dimension: customer_phone {
    type: string
    sql: ${TABLE}.customerPhone ;;
  }
  dimension: customer_segment {
    type: string
    sql: ${TABLE}.customerSegment ;;
  }
  dimension: customer_source_after {
    type: string
    sql: ${TABLE}.customer_source_after ;;
  }
  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }
  dimension: disposition_id {
    type: string
    sql: ${TABLE}.disposition_id ;;
  }
  dimension: disposition_name {
    type: string
    sql: ${TABLE}.disposition_name ;;
  }
  dimension: dnis {
    type: string
    sql: ${TABLE}.dnis ;;
  }
  dimension: ece {
    type: string
    sql: ${TABLE}.ECE ;;
  }
  dimension: end_timestamp {
    type: string
    sql: ${TABLE}.end_timestamp ;;
  }
  dimension: ended_at {
    type: string
    sql: ${TABLE}.endedAt ;;
  }
  dimension: final_customer_email {
    type: string
    sql: ${TABLE}.final_customer_email ;;
  }
  dimension: first_agent {
    type: string
    sql: ${TABLE}.first_agent ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }
  dimension: from {
    type: string
    sql: ${TABLE}.`from` ;;
  }
  dimension: full_name {
    type: string
    sql: ${TABLE}.full_name ;;
  }
  dimension: handle_time {
    type: number
    sql: ${TABLE}.Handle_time ;;
  }
  dimension: highest_model_after {
    type: string
    sql: ${TABLE}.highest_model_after ;;
  }
  dimension: highest_type_after {
    type: string
    sql: ${TABLE}.highest_type_after ;;
  }
  dimension: hold_time {
    type: string
    sql: ${TABLE}.hold_time ;;
  }
  dimension: interactions_type {
    type: string
    sql: ${TABLE}.Interactions_type ;;
  }
  dimension: is_callback {
    type: yesno
    sql: ${TABLE}.Is_callback ;;
  }
  dimension: is_callbackrequested {
    type: yesno
    sql: ${TABLE}.is_callbackrequested ;;
  }
  dimension: is_inactive_user {
    type: number
    sql: ${TABLE}.is_Inactive_User ;;
  }
  dimension: is_other_roles_ {
    type: number
    sql: ${TABLE}.is_Other_Roles_ ;;
  }
  dimension: ivr_time {
    type: number
    sql: ${TABLE}.Ivr_time ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }
  dimension: main_email {
    type: string
    sql: ${TABLE}.mainEmail ;;
  }
  dimension: match_email {
    type: string
    sql: ${TABLE}.match_email ;;
  }
  dimension: max_hold_time {
    type: number
    sql: ${TABLE}.max_hold_time ;;
  }
  dimension: mediatype {
    type: string
    sql: ${TABLE}.mediatype ;;
  }
  dimension: metadata_email {
    type: string
    sql: ${TABLE}.metadata_email ;;
  }
  dimension: min_hold_time {
    type: number
    sql: ${TABLE}.Min_hold_time ;;
  }
  dimension: order_agent_email_after {
    type: string
    sql: ${TABLE}.order_agent_email_after ;;
  }
  dimension: order_agent_email_before {
    type: string
    sql: ${TABLE}.order_agent_email_before ;;
  }
  dimension: order_agent_id_after {
    type: string
    sql: ${TABLE}.order_agent_id_after ;;
  }
  dimension: order_agent_id_before {
    type: string
    sql: ${TABLE}.order_agent_id_before ;;
  }
  dimension: order_channel_after {
    type: string
    sql: ${TABLE}.order_channel_after ;;
  }
  dimension_group: order_created_after {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created_after ;;
  }
  dimension_group: order_created_before {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created_before ;;
  }
  dimension: order_customer_email_after {
    type: string
    sql: ${TABLE}.order_customer_email_after ;;
  }
  dimension: order_customer_email_before {
    type: string
    sql: ${TABLE}.order_customer_email_before ;;
  }
  dimension: order_id {
    type: string
    sql: ${TABLE}.OrderId ;;
  }
  dimension: order_num_entered {
    type: string
    sql: ${TABLE}.orderNumEntered ;;
  }
  dimension: order_price_after {
    type: number
    sql: ${TABLE}.order_price_after ;;
  }
  dimension: order_price_before {
    type: number
    sql: ${TABLE}.order_price_before ;;
  }
  dimension: order_revenue_after {
    type: number
    sql: ${TABLE}.order_revenue_after ;;
  }
  dimension: order_revenue_before {
    type: number
    sql: ${TABLE}.order_revenue_before ;;
  }
  dimension: order_source_after {
    type: string
    sql: ${TABLE}.order_source_after ;;
  }
  dimension: order_status_after {
    type: string
    sql: ${TABLE}.order_status_after ;;
  }
  dimension: order_status_before {
    type: string
    sql: ${TABLE}.order_status_before ;;
  }
  dimension: order_tax_after {
    type: number
    sql: ${TABLE}.order_tax_after ;;
  }
  dimension: order_tax_before {
    type: number
    sql: ${TABLE}.order_tax_before ;;
  }
  dimension: phone_campaign {
    type: string
    sql: ${TABLE}.phone_campaign ;;
  }
  dimension: phone_number {
    type: string
    sql: ${TABLE}.phoneNumber ;;
  }
  dimension: provider_name {
    type: string
    sql: ${TABLE}.providerName ;;
  }
  dimension: providersessionid {
    type: string
    sql: ${TABLE}.providersessionid ;;
  }
  dimension: queue_time {
    type: string
    sql: ${TABLE}.queue_time ;;
  }
  dimension: sales {
    type: string
    sql: ${TABLE}.Sales ;;
  }
  dimension: sales_support {
    type: string
    sql: ${TABLE}.Sales_Support ;;
  }
  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }
  dimension: short_id_after {
    type: string
    sql: ${TABLE}.short_id_after ;;
  }
  dimension: short_id_before {
    type: string
    sql: ${TABLE}.short_id_before ;;
  }
  dimension: skill_aggression {
    type: string
    sql: ${TABLE}.Skill_Aggression ;;
  }
  dimension: skill_name {
    type: string
    sql: ${TABLE}.skill_name ;;
  }
  dimension: start_time {
    type: string
    sql: ${TABLE}.start_time ;;
  }
  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }
  dimension: support {
    type: string
    sql: ${TABLE}.Support ;;
  }
  dimension: time_to_agent_first_response {
    type: number
    sql: ${TABLE}.time_to_agent_first_response ;;
  }
  dimension: time_to_first_response {
    type: number
    sql: ${TABLE}.time_to_first_response ;;
  }
  dimension: total_bases_after {
    type: number
    sql: ${TABLE}.total_bases_after ;;
  }
  dimension: total_hold_duration_seconds {
    type: number
    sql: ${TABLE}.total_hold_duration_seconds ;;
  }
  dimension: total_interaction_time {
    type: number
    sql: ${TABLE}.Total_interaction_time ;;
  }
  dimension_group: transaction {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.transaction_time ;;
  }
  dimension: type_name {
    type: string
    sql: ${TABLE}.type_name ;;
  }
  dimension: us_agent {
    type: string
    sql: ${TABLE}.US_Agent ;;
  }
  dimension: us_ece {
    type: string
    sql: ${TABLE}.US_ECE ;;
  }
  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }
  dimension: wrapup_time {
    type: string
    sql: ${TABLE}.wrapup_time ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  provider_name,
  full_name,
  disposition_name,
  last_name,
  user_name,
  skill_name,
  type_name,
  first_name,
  agentusername,
  campaignname,
  campaign_name
  ]
  }

  ### 15042024 - Keshet: table connected to looker


  ### transaction date Granularity

# date granularity - transaction Date #

  parameter: Date_Granularity_transaction_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }



  dimension: transaction {
    label_from_parameter: Date_Granularity_transaction_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_transaction_date %} = 'Day' THEN cast(${transaction_date} as string)
             WHEN {% parameter Date_Granularity_transaction_date %} = 'Week' THEN cast(${transaction_week} as string)
             WHEN {% parameter Date_Granularity_transaction_date %} = 'Month' THEN cast(${transaction_month} as string)
             WHEN {% parameter Date_Granularity_transaction_date %} = 'Quarter' THEN cast(${transaction_quarter} as string)
             WHEN {% parameter Date_Granularity_transaction_date %} = 'Year' THEN cast(${transaction_year} as string)
            ELSE null
            END ;;
  }


  measure: total_session_id {
    type: count_distinct
    sql: ${providersessionid} ;;
    value_format: "#,##0"
    group_label: "five9 Measures - session"
  }

}
