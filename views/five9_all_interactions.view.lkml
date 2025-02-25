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
    sql: LOWER(${TABLE}.correspondencetype) ;;
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

  ###28/10/2024

#3  dimension: end_timestamp {
##    type: string
##    sql: ${TABLE}.end_timestamp ;;
##  }


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

## 28/10/2024

##  dimension: start_time {
##    type: string
##    sql: ${TABLE}.start_time ;;
##  }

  dimension_group: start_time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
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



  dimension: LOB {
    type: string
    sql: ${TABLE}.LOB ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }



  dimension: is_system_disposition {
    type: yesno
    sql: ${TABLE}.is_system_disposition ;;
  }


  dimension: Interactions_type {
    type: string
    sql: ${TABLE}.Interactions_type ;;
  }


  dimension: customer_key {
    type: string
    sql: ${TABLE}.customer_key ;;
  }


  dimension: user_interaction_email {
    type: string
    sql: ${TABLE}.user_interaction_email ;;
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


### copied form five9 prospect castomer looker 01/07/2024





  measure: total_customer_Id {
    type: count_distinct
    sql: ${customer_id} ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }


  measure: total_prospect_customer_Id {
    type: count_distinct
    sql: case when ${customer_type} = "prospect" then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }


  ### deleted - total_session_with_orders | total_session_with_orders_before_interaction | total_customer_with_orders. | total_customer_with_orders_before_interaction fron FIVE9 prospect castomer


  measure: total_customer_key {
    type: count_distinct
    sql: ${customer_key} ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }


  dimension: is_call_answered {
    description: "Is call answerd"
    type: yesno
    sql: ${agentemail} <> "" ;;
  }

  dimension: is_cs_assisted_order_TF {
    description: "Is CS assisted order"
    type: yesno
    sql: datetime_diff(${order_created_after_raw},${transaction_raw},hour)<48 ;;
  }

  dimension: is_cs_assisted_order_NOT_agent_TF {
    description: "Is CS assisted order only (not Agent Order)"
    type: yesno
    sql: datetime_diff(${order_created_after_raw},${transaction_raw},hour)<48 and (${order_agent_id_after} is  null or ${order_agent_id_after} = "") ;;
  }


  dimension: is_cs_agent_order_TF {
    description: "Is CS agent order"
    type: yesno
    sql: ${order_agent_id_after} is not null or ${order_agent_id_after} <> "" ;;
  }


  dimension: is_order_same_day_as_cs_interaction{
    description: "Is order same day as CS interaction"
    type: yesno
    sql: ${transaction_date} = ${order_created_after_date}  ;;
  }

  dimension: is_order_one_day_after_cs_interaction{
    description: "Is order one day after CS interaction"
    type: yesno
    sql:  datetime_diff(${order_created_after_raw},${transaction_raw},day) = 1  ;;
  }

  dimension: is_order_two_day_after_cs_interaction{
    description: "Is order two day after CS interaction"
    type: yesno
    sql:  datetime_diff(${order_created_after_raw},${transaction_raw},day) = 2  ;;
  }

  dimension: is_order_three_day_after_cs_interaction{
    description: "Is order three day after CS interaction"
    type: yesno
    sql:  datetime_diff(${order_created_after_raw},${transaction_raw},day) = 3  ;;
  }


  measure: total_customer_with_cs_assisted_orders_48h{
    type: count_distinct
    sql: case when ${is_cs_assisted_order_TF} = true then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders{
    type: count_distinct
    sql: case when ${is_cs_agent_order_TF} = true then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_within48h{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_assisted_orders_only_no_agent_48h{
    type: count_distinct
    sql: case when (${is_cs_assisted_order_NOT_agent_TF} = true ) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }


###

  measure: total_customer_sale_attached_to_interaction_but_no_CS_tied_to_cart{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = false and ${is_cs_assisted_order_TF} = true and (${order_source_after}="web" or ${order_source_after}="website")) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }




###

  measure: total_customer_with_same_cs_agent_orders_within48h{
    type: count_distinct
    sql: case when ${agentemail} =${order_agent_email_after}  then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }


  ####  source

  measure: total_customer_with_cs_agent_orders_source_is_admin{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="admin") then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_cartlink{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="cartlink") then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_remote_cart{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="remote cart") then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_cartlink_OR_remote_cart{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ( ${order_source_after}="cartlink" OR ${order_source_after}="remote cart" )) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }


####  source + same day

  measure: total_customer_with_cs_agent_orders_source_is_admin_same_day {
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="admin" and ${is_order_same_day_as_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_cartlink_same_day{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="cartlink" and ${is_order_same_day_as_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_remote_cart_same_day{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="remote cart" and ${is_order_same_day_as_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_cartlink_OR_remote_cart_same_day{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ( ${order_source_after}="cartlink" OR ${order_source_after}="remote cart" )and ${is_order_same_day_as_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

####  source + one day after

  measure: total_customer_with_cs_agent_orders_source_is_admin_one_day_afer {
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="admin" and ${is_order_one_day_after_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_cartlink_one_day_afer{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="cartlink" and ${is_order_one_day_after_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_remote_cart_one_day_afer{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="remote cart" and ${is_order_one_day_after_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_cartlink_OR_remote_cart_one_day_afer{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ( ${order_source_after}="cartlink" OR ${order_source_after}="remote cart" )and ${is_order_one_day_after_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }


####  source + two day after

  measure: total_customer_with_cs_agent_orders_source_is_admin_two_days_afer {
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="admin" and  ${is_order_two_day_after_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_cartlink_two_days_afer{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="cartlink" and ${is_order_two_day_after_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_remote_cart_two_days_afer{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="remote cart" and ${is_order_two_day_after_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_cartlink_OR_remote_cart_two_days_afer{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ( ${order_source_after}="cartlink" OR ${order_source_after}="remote cart" )and ${is_order_two_day_after_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }


####  source + three day after

  measure: total_customer_with_cs_agent_orders_source_is_admin_three_days_afer {
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="admin" and  ${is_order_three_day_after_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_cartlink_three_days_afer{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="cartlink" and ${is_order_three_day_after_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_remote_cart_three_days_afer{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ${order_source_after}="remote cart" and ${is_order_three_day_after_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_cs_agent_orders_source_is_cartlink_OR_remote_cart_three_days_afer{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true and ( ${order_source_after}="cartlink" OR ${order_source_after}="remote cart" )and ${is_order_three_day_after_cs_interaction}= true) then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }


  ####


  measure: total_short_id_with_cs_assisted_orders_48h{
    type: count_distinct
    sql: case when ${is_cs_assisted_order_TF} = true then ${short_id_after} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - short_id_after"
  }

  measure: total_short_id_with_cs_agent_orders{
    type: count_distinct
    sql: case when ${is_cs_agent_order_TF} = true then ${short_id_after} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - short_id_after"
  }

  measure: total_short_id_with_cs_agent_orders_within48h{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true) then ${short_id_after} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - short_id_after"
  }


  measure: total_short_id_with_same_cs_agent_orders{
    type: count_distinct
    sql: case when ${agentemail} =${order_agent_email_after}  then ${short_id_after} else null end   ;;
    value_format: "#,##0"
    group_label: "five9 Measures - short_id_after"
  }

  measure: total_short_id_with_cs_assisted_orders_only_no_agent{
    type: count_distinct
    sql: case when ${is_cs_assisted_order_NOT_agent_TF} = true then ${short_id_after} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - short_id_after"
  }





  measure: total_order_revenue_after{
    type: sum
    sql: ${order_revenue_after};;
    value_format: "$#,##0"
    group_label: "revenue"
  }


  measure: distinct_revenue {
    ## label: “sum_distinct_revenue”
    type: sum_distinct
    sql_distinct_key: (${short_id_after}) ;;
    sql: ${order_revenue_after} ;;
  }

  measure: distinct_revenue_cs_agent {
    ## label: “sum_distinct_revenue”
    type: sum_distinct
    sql_distinct_key: (${short_id_after})||${is_cs_agent_order_TF};;
    sql: case when ${is_cs_agent_order_TF} = true then ${order_revenue_after} else null end  ;;
  }

  measure: distinct_revenue_cs_assisted_orders_48h {
    ## label: “sum_distinct_revenue”
    type: sum_distinct
    sql_distinct_key: (${short_id_after}||${is_cs_assisted_order_TF}) ;;
    sql: case when ${is_cs_assisted_order_TF} = true then  ${order_revenue_after} else null end ;;
  }


  measure: distinct_revenue_cs_agent_within48h {
    ## label: “sum_distinct_revenue”
    type: sum_distinct
    sql_distinct_key: (${short_id_after}||${is_cs_assisted_order_TF}||${is_cs_agent_order_TF}) ;;
    sql:  case when ${is_cs_assisted_order_TF} = true and ${is_cs_agent_order_TF} = true  then  ${order_revenue_after} else null end ;;
  }



  measure: distinct_revenue_cs_assisted_orders_only_no_agent {
    ## label: “sum_distinct_revenue”
    type: sum_distinct
    sql_distinct_key: (${short_id_after}||${is_cs_assisted_order_NOT_agent_TF}) ;;
    sql: case when ${is_cs_assisted_order_NOT_agent_TF} = true then  ${order_revenue_after} else null end ;;
  }

  measure: distinct_revenue_cs_same_agent {
    ## label: “sum_distinct_revenue”
    type: sum_distinct
    sql_distinct_key: (${short_id_after}||${is_cs_assisted_order_TF}||${is_cs_agent_order_TF}) ;;
    sql: case when ${agentemail} =${order_agent_email_after}  then ${order_revenue_after} else null end  ;;
  }



  measure: total_order_revenue_after_short_id_with_cs_agent_orders{
    type: sum
    sql:  case when ${is_cs_agent_order_TF} = true then ${order_revenue_after} else null end ;;
    value_format: "$#,##0"
    group_label: "revenue"
  }

  measure: total_order_revenue_after_cs_assisted_orders_48h{
    type: sum
    sql:   case when ${is_cs_assisted_order_TF} = true then  ${order_revenue_after} else null end ;;
    value_format: "$#,##0"
    group_label: "revenue"
  }


  measure: total_order_revenue_after_with_cs_agent_orders_within48h{
    type: sum
    sql:   case when ${is_cs_assisted_order_TF} = true and ${is_cs_agent_order_TF} = true  then  ${order_revenue_after} else null end ;;
    value_format: "$#,##0"
    group_label: "revenue"
  }

  measure: total_order_revenue_after_cs_assisted_orders_only_no_agent{
    type: sum
    sql:   case when ${is_cs_assisted_order_NOT_agent_TF} = true a then  ${order_revenue_after} else null end ;;
    value_format: "$#,##0"
    group_label: "revenue"
  }


  dimension: half_hour_interval {
    type: string
    sql:
    FORMAT_TIMESTAMP('%H:%M',
      TIMESTAMP(DATETIME_TRUNC(DATETIME(${transaction_time}), HOUR)) +
      INTERVAL CAST(FLOOR(EXTRACT(MINUTE FROM DATETIME(${transaction_time})) / 30) * 30 AS INT64) MINUTE
    ) ;;
  }

  dimension: is_Abandon{
    type: string
    sql:
    case when ${disposition_name} = "Abandon" then "Abandon" else "Not Abandon" end
     ;;
  }

  ###


  measure: avg_Handle_time_in_sec {
    type: number
    sql: AVG(${handle_time}) ;;
  }




  measure: avg_Ivr_time_in_sec {
    type: number
    sql: AVG(${ivr_time}) ;;
  }



  measure: avg_Acw_time_in_sec {
    type: number
    sql: AVG(${acw_time}) ;;
  }

  measure: avg_Handle_time_formatted_time {
    type: string
    sql:
    FORMAT_TIMESTAMP('%H:%M:%S', TIMESTAMP_SECONDS(CAST(${avg_Handle_time_in_sec} AS INT64)))
 ;;
    group_label: "formatted_time"

  }

  measure: avg_Ivr_time_formatted_time {
    type: string
    sql:
    FORMAT_TIMESTAMP('%H:%M:%S', TIMESTAMP_SECONDS(CAST(${avg_Ivr_time_in_sec} AS INT64)))
 ;;
    group_label: "formatted_time"

  }



  measure: avg_Acw_time_formatted_time {
    type: string
    sql:
    FORMAT_TIMESTAMP('%H:%M:%S', TIMESTAMP_SECONDS(CAST(${avg_Acw_time_in_sec} AS INT64)))
 ;;
    group_label: "formatted_time"

  }

  ### 20-02-2025 SLA calculation

  dimension: SLA_90_SECONED_TF {
    type: yesno
    sql: ${queue_time} <=90/60 ;;
  }

  dimension: SLA_120_SECONED_TF {
    type: yesno
    sql: ${queue_time} <=120/60 ;;
  }

  measure: SLA_90_SESSIONS {
    type: count_distinct
    sql: CASE WHEN ${SLA_90_SECONED_TF} IS TRUE THEN ${providersessionid} ELSE NULL END

 ;;
}
    measure: SLA_120_SESSIONS {
      type: count_distinct
      sql: CASE WHEN ${SLA_120_SECONED_TF} IS TRUE THEN ${providersessionid} ELSE NULL END
        ;;

}



  measure: SLA_120_Rate {
    type: number
    sql: ${SLA_120_SESSIONS} / NULLIF(${total_session_id}, 0) ;;
    value_format: "0.00%"
  }


  measure: SLA_90_Rate {
    type: number
    sql: ${SLA_90_SESSIONS} / NULLIF(${total_session_id}, 0) ;;
    value_format: "0.00%"
  }

  measure: Abandon_sessions{
    type: count_distinct
    sql: CASE WHEN ${disposition_name} = "Abandon"  then ${providersessionid} ELSE NULL END

       ;;
}


    measure: Abandon_Rate {
      type: number
      sql: ${Abandon_sessions} / NULLIF(${total_session_id}, 0) ;;
      value_format: "0.00%"
    }


}
