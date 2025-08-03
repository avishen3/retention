view: pre_transit_agentlevel_retention_data_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.Pre_Transit_Agent-Level_Retention_Data_tbl` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: accepted_save_attempt {
    type: string
    sql: ${TABLE}.accepted_save_attempt ;;
  }
  dimension: acw_time {
    type: number
    sql: ${TABLE}.Acw_time ;;
  }
  dimension: agent_active_in_2024 {
    type: string
    sql: ${TABLE}.Agent_active_in_2024 ;;
  }
  dimension: agent_email {
    type: string
    sql: ${TABLE}.agent_email ;;
  }
  dimension: agent_first_name {
    type: string
    sql: ${TABLE}.agent_first_name ;;
  }
  dimension: agent_id {
    type: string
    sql: ${TABLE}.AgentId ;;
  }
  dimension: agent_last_name {
    type: string
    sql: ${TABLE}.agent_last_name ;;
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
  dimension_group: approved {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.approved_at ;;
  }
  dimension: asa_time {
    type: number
    sql: ${TABLE}.asa_time ;;
  }
  dimension: avg_hold_duration_seconds {
    type: number
    sql: ${TABLE}.avg_hold_duration_seconds ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
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
  dimension_group: cancelled {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.cancelled_at ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
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
  dimension: compensation {
    type: string
    sql: ${TABLE}.compensation ;;
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
  dimension: csat_agent {
    type: string
    sql: ${TABLE}.csat_agent ;;
  }
  dimension: csat_score {
    type: number
    sql: ${TABLE}.csat_score ;;
  }
  dimension: customer_id {
    type: string
    sql: ${TABLE}.customerId ;;
  }
  dimension: customer_key {
    type: string
    sql: ${TABLE}.customer_key ;;
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
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
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
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension_group: end_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.end_timestamp ;;
  }
  dimension: ended_at {
    type: string
    sql: ${TABLE}.endedAt ;;
  }
  dimension_group: f {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.f_date ;;
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
  dimension_group: first_refund_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.first_refund_ts ;;
  }
  dimension: five9_brand {
    type: string
    sql: ${TABLE}.five9_brand ;;
  }
  dimension_group: form_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.form_created_date ;;
  }
  dimension: form_id {
    type: string
    sql: ${TABLE}.form_id ;;
  }
  dimension: form_refund_amount {
    type: number
    sql: ${TABLE}.form_refund_amount ;;
  }
  dimension: from {
    type: string
    sql: ${TABLE}.`from` ;;
  }
  dimension: full_name {
    type: string
    sql: ${TABLE}.full_name ;;
  }
  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
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
    type: number
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
  dimension: is_sale_saved {
    type: yesno
    sql: ${TABLE}.is_sale_saved ;;
  }
  dimension: is_system_disposition {
    type: yesno
    sql: ${TABLE}.is_system_disposition ;;
  }
  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }
  dimension: item_price_inc_tax {
    type: number
    sql: ${TABLE}.item_price_inc_tax ;;
  }
  dimension: ivr_time {
    type: number
    sql: ${TABLE}.Ivr_time ;;
  }
  dimension_group: last_dispositioned_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.last_dispositioned_timestamp ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }
  dimension_group: last_step_reached {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.last_step_reached_at ;;
  }
  dimension: list_of_save_attempts {
    type: string
    sql: ${TABLE}.list_of_save_attempts ;;
  }
  dimension: lob {
    type: string
    sql: ${TABLE}.LOB ;;
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
  dimension: method_of_removal {
    type: string
    sql: ${TABLE}.method_of_removal ;;
  }
  dimension: min_hold_time {
    type: number
    sql: ${TABLE}.Min_hold_time ;;
  }
  dimension_group: on_hold {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.on_hold_at ;;
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
  dimension_group: order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created ;;
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
  dimension: order_is_wgs_after {
    type: yesno
    sql: ${TABLE}.order_is_wgs_after ;;
  }
  dimension: order_is_wgs_before {
    type: yesno
    sql: ${TABLE}.order_is_wgs_before ;;
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
  dimension: package_status {
    type: string
    sql: ${TABLE}.package_status ;;
  }
  dimension: phone_campaign {
    type: string
    sql: ${TABLE}.phone_campaign ;;
  }
  dimension: phone_number {
    type: string
    sql: ${TABLE}.phoneNumber ;;
  }
  dimension: placed_order_id {
    type: string
    sql: ${TABLE}.placed_order_id ;;
  }
  dimension: post_delivery_full_refund_amount {
    type: number
    sql: ${TABLE}.post_delivery_full_refund_amount ;;
  }
  dimension: post_delivery_partial_refund_amount {
    type: number
    sql: ${TABLE}.post_delivery_partial_refund_amount ;;
  }
  dimension: post_delivery_refund {
    type: number
    sql: ${TABLE}.post_delivery_refund ;;
  }
  dimension: pre_delivery_full_refund_amount {
    type: number
    sql: ${TABLE}.pre_delivery_full_refund_amount ;;
  }
  dimension: pre_delivery_partial_refund_amount {
    type: number
    sql: ${TABLE}.pre_delivery_partial_refund_amount ;;
  }
  dimension: pre_delivery_refund {
    type: number
    sql: ${TABLE}.pre_delivery_refund ;;
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
    type: number
    sql: ${TABLE}.queue_time ;;
  }
  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }
  dimension: refund_amount {
    type: number
    sql: ${TABLE}.refund_amount ;;
  }
  dimension: refund_transaction_ids {
    type: string
    sql: ${TABLE}.refund_transaction_ids ;;
  }
  dimension: refund_type {
    type: string
    sql: ${TABLE}.refund_type ;;
  }
  dimension_group: rejected {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.rejected_at ;;
  }
  dimension: reship_shipment_id {
    type: string
    sql: ${TABLE}.reship_shipment_id ;;
  }
  dimension: return_shipment_id {
    type: string
    sql: ${TABLE}.return_shipment_id ;;
  }
  dimension: rp_step_reached {
    type: string
    sql: ${TABLE}.rp_step_reached ;;
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
  dimension: sharetown_pick_up_coverage_status {
    type: string
    sql: ${TABLE}.sharetown_pick_up_coverage_status ;;
  }
  dimension: shipment_group {
    type: string
    sql: ${TABLE}.shipment_group ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
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
  dimension: sleeper_type {
    type: string
    sql: ${TABLE}.sleeper_type ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.start_time ;;
  }
  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }
  dimension: subreason {
    type: string
    sql: ${TABLE}.subreason ;;
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
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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
  dimension: user_interaction_email {
    type: string
    sql: ${TABLE}.user_interaction_email ;;
  }
  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }
  dimension: wrapup_time {
    type: number
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
  agent_first_name,
  full_name,
  disposition_name,
  last_name,
  user_name,
  skill_name,
  type_name,
  agent_last_name,
  first_name,
  agentusername,
  campaignname,
  campaign_name
  ]
  }


  measure: total_interaction{
    type: count_distinct
   sql: ${providersessionid} ;;
  }

  measure: total_interaction_with_forms_opened_the_same_day{
    type: count_distinct
    sql: case when ${form_id} is not null then ${providersessionid} else null end  ;;
  }


  measure: Total_short_id{
    type: count_distinct
    sql: ${short_id_before} ;;
  }

  measure:  Total_short_id_with_forms_opened_the_same_day{
    type: count_distinct
    sql: case when ${form_id} is not null then ${short_id_before} else null end  ;;
  }



}
