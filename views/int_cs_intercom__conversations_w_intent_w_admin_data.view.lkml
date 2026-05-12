view: intercom_conversation {
  sql_table_name: `omega-post-184817.Keshet.int_cs_intercom__conversations_w_intent_w_admin_data`  ;;


  # -------------------------------------------------------
  # PRIMARY KEY
  # -------------------------------------------------------

  dimension: conversation_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.conversation_id ;;
    group_label: "Conversation - Core"
  }


  # -------------------------------------------------------
  # CONVERSATION - CORE
  # -------------------------------------------------------

  dimension: source_type {
    type: string
    sql: ${TABLE}.source_type ;;
    group_label: "Conversation - Core"
  }

  dimension: initiated_type {
    type: string
    sql: ${TABLE}.initiated_type ;;
    group_label: "Conversation - Core"
  }

  dimension: source_author_type {
    type: string
    sql: ${TABLE}.source_author_type ;;
    group_label: "Conversation - Core"
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
    group_label: "Conversation - Core"
  }

  dimension: call_status {
    type: string
    sql: ${TABLE}.call_status ;;
    group_label: "Conversation - Core"
  }

  dimension: resolution_status {
    type: string
    sql: ${TABLE}.resolution_status ;;
    group_label: "Conversation - Core"
  }

  dimension: workspace_phone_number {
    type: string
    sql: ${TABLE}.workspace_phone_number ;;
    group_label: "Conversation - Core"
  }

  dimension: webhook_intent {
    type: string
    sql: ${TABLE}.webhook_intent ;;
    group_label: "Conversation - Core"
  }

  dimension: webhook_sub_intent {
    type: string
    sql: ${TABLE}.webhook_sub_intent ;;
    group_label: "Conversation - Core"
  }

  dimension: webhook_outcome {
    type: string
    sql: ${TABLE}.webhook_outcome ;;
    group_label: "Conversation - Core"
  }

  dimension: sla_name {
    type: string
    sql: ${TABLE}.sla_name ;;
    group_label: "Conversation - Core"
  }

  dimension: sla_status {
    type: string
    sql: ${TABLE}.sla_status ;;
    group_label: "Conversation - Core"
  }

  dimension: folder_type {
    type: string
    sql: ${TABLE}.folder_type ;;
    group_label: "Conversation - Core"
  }

  dimension: inbox_routing_chat {
    type: string
    sql: ${TABLE}.inbox_routing_chat ;;
    group_label: "Conversation - Core"
  }

  dimension: inbox_routing_email {
    type: string
    sql: ${TABLE}.inbox_routing_email ;;
    group_label: "Conversation - Core"
  }

  dimension: inbox_routing_voice {
    type: string
    sql: ${TABLE}.inbox_routing_voice ;;
    group_label: "Conversation - Core"
  }

  dimension: inbox_routing_callback {
    type: string
    sql: ${TABLE}.inbox_routing_callback ;;
    group_label: "Conversation - Core"
  }


  # -------------------------------------------------------
  # CONVERSATION - TIMESTAMPS (PST)
  # -------------------------------------------------------

  dimension_group: conversation_start_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.conversation_start_time_pst ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: conversation_end_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.conversation_end_time_pst ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: first_sent_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.first_sent_time_pst ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: first_response_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.first_response_time_pst ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: first_contact_reply_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.first_contact_reply_time_pst ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: admin_reply_first_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.admin_reply_first_time_pst ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: admin_reply_last_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.admin_reply_last_time_pst ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: assignment_first_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.assignment_first_time_pst ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: assignment_last_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.assignment_last_time_pst ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: contact_reply_first_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.contact_reply_first_time_pst ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: assignment_admin_reply_last_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.assignment_admin_reply_last_time_pst ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: webhook_publish {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.webhook_publish_time ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: intent_publish {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.intent_publish_time ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: ai_agent_created_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.ai_agent_created_time_pst ;;
    group_label: "Conversation - Timestamps PST"
  }

  dimension_group: ai_agent_updated_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.ai_agent_updated_time_pst ;;
    group_label: "Conversation - Timestamps PST"
  }


  # -------------------------------------------------------
  # DATE GRANULARITY PARAMETER - conversation_start_time_pst
  # -------------------------------------------------------

  parameter: date_granularity_conversation_start {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
    group_label: "Conversation - Timestamps PST"
  }

  dimension: conversation_start_dynamic {
    label_from_parameter: date_granularity_conversation_start
    sql:
      CASE
        WHEN {% parameter date_granularity_conversation_start %} = 'Day'     THEN CAST(${conversation_start_time_pst_date}    AS STRING)
        WHEN {% parameter date_granularity_conversation_start %} = 'Week'    THEN CAST(${conversation_start_time_pst_week}    AS STRING)
        WHEN {% parameter date_granularity_conversation_start %} = 'Month'   THEN CAST(${conversation_start_time_pst_month}   AS STRING)
        WHEN {% parameter date_granularity_conversation_start %} = 'Quarter' THEN CAST(${conversation_start_time_pst_quarter} AS STRING)
        WHEN {% parameter date_granularity_conversation_start %} = 'Year'    THEN CAST(${conversation_start_time_pst_year}    AS STRING)
        ELSE NULL
      END ;;
    group_label: "Conversation - Timestamps PST"
  }


  # -------------------------------------------------------
  # CONVERSATION - DURATIONS (seconds)
  # -------------------------------------------------------

  dimension: resolution_duration_seconds {
    type: number
    sql: ${TABLE}.resolution_duration_seconds ;;
    group_label: "Conversation - Durations"
  }

  dimension: handling_duration_seconds {
    type: number
    sql: ${TABLE}.handling_duration_seconds ;;
    group_label: "Conversation - Durations"
  }

  dimension: handling_adjusted_duration_seconds {
    type: number
    sql: ${TABLE}.handling_adjusted_duration_seconds ;;
    group_label: "Conversation - Durations"
  }

  dimension: time_to_assignment_duration_seconds {
    type: number
    sql: ${TABLE}.time_to_assignment_duration_seconds ;;
    group_label: "Conversation - Durations"
  }

  dimension: time_to_admin_reply_duration {
    type: number
    sql: ${TABLE}.time_to_admin_reply_duration ;;
    group_label: "Conversation - Durations"
  }

  dimension: time_to_assignment_duration {
    type: number
    sql: ${TABLE}.time_to_assignment_duration ;;
    group_label: "Conversation - Durations"
  }

  dimension: time_to_first_close_duration {
    type: number
    sql: ${TABLE}.time_to_first_close_duration ;;
    group_label: "Conversation - Durations"
  }

  dimension: time_to_last_close_duration {
    type: number
    sql: ${TABLE}.time_to_last_close_duration ;;
    group_label: "Conversation - Durations"
  }


  # -------------------------------------------------------
  # CONVERSATION - INTERACTION COUNTS
  # -------------------------------------------------------

  dimension: agent_replies_count {
    type: number
    sql: ${TABLE}.agent_replies_count ;;
    group_label: "Conversation - Interaction Counts"
  }

  dimension: customer_messages_count {
    type: number
    sql: ${TABLE}.customer_messages_count ;;
    group_label: "Conversation - Interaction Counts"
  }

  dimension: reopen_count {
    type: number
    sql: ${TABLE}.reopen_count ;;
    group_label: "Conversation - Interaction Counts"
  }

  dimension: reopen_flag {
    type: yesno
    sql: ${TABLE}.reopen_flag ;;
    group_label: "Conversation - Interaction Counts"
  }

  dimension: agent_reassignment_count {
    type: number
    sql: ${TABLE}.agent_reassignment_count ;;
    group_label: "Conversation - Interaction Counts"
  }

  dimension: conv_has_user_part {
    type: yesno
    sql: ${TABLE}.conv_has_user_part ;;
    group_label: "Conversation - Interaction Counts"
  }

  dimension: conv_has_bot_part {
    type: yesno
    sql: ${TABLE}.conv_has_bot_part ;;
    group_label: "Conversation - Interaction Counts"
  }

  dimension: conv_has_admin_part {
    type: yesno
    sql: ${TABLE}.conv_has_admin_part ;;
    group_label: "Conversation - Interaction Counts"
  }

  dimension: is_interaction_for_prediction {
    type: yesno
    sql: ${TABLE}.is_interaction_for_prediction ;;
    group_label: "Conversation - Interaction Counts"
  }


  # -------------------------------------------------------
  # CUSTOMER
  # -------------------------------------------------------

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
    group_label: "Customer"
  }

  dimension: customer_email_outbound {
    type: string
    sql: ${TABLE}.customer_email_outbound ;;
    group_label: "Customer"
  }

  dimension: customer_phone_number {
    type: string
    sql: ${TABLE}.customer_phone_number ;;
    group_label: "Customer"
  }

  dimension: customer_segment {
    type: string
    sql: ${TABLE}.customer_segment ;;
    group_label: "Customer"
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
    group_label: "Customer"
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
    group_label: "Customer"
  }

  dimension: cart_id {
    type: string
    sql: ${TABLE}.cart_id ;;
    group_label: "Customer"
  }


  # -------------------------------------------------------
  # AGENT / ADMIN
  # -------------------------------------------------------

  dimension: teammate_admin_id {
    type: string
    sql: ${TABLE}.teammate_admin_id ;;
    group_label: "Agent - Admin"
  }

  dimension: teammate_admin_type {
    type: string
    sql: ${TABLE}.teammate_admin_type ;;
    group_label: "Agent - Admin"
  }

  dimension: assigned_agent_id {
    type: string
    sql: ${TABLE}.assigned_agent_id ;;
    group_label: "Agent - Admin"
  }

  dimension: agent_team_id {
    type: string
    sql: ${TABLE}.agent_team_id ;;
    group_label: "Agent - Admin"
  }


  # -------------------------------------------------------
  # INTENT
  # -------------------------------------------------------

  dimension: intent_for_routing {
    type: string
    sql: ${TABLE}.intent_for_routing ;;
    group_label: "Intent"
  }

  dimension: intent_message_id {
    type: string
    sql: ${TABLE}.intent_message_id ;;
    group_label: "Intent"
  }

  dimension: ds_intent {
    type: string
    sql: ${TABLE}.ds_intent ;;
    group_label: "Intent"
  }

  dimension: ds_sub_reason {
    type: string
    sql: ${TABLE}.ds_sub_reason ;;
    group_label: "Intent"
  }

  dimension: ds_outcome {
    type: string
    sql: ${TABLE}.ds_outcome ;;
    group_label: "Intent"
  }

  dimension: ds_classification_rationale {
    type: string
    sql: ${TABLE}.ds_classification_rationale ;;
    group_label: "Intent"
  }


  # -------------------------------------------------------
  # CSAT / RATING
  # -------------------------------------------------------

  dimension: cx_score {
    type: string
    sql: ${TABLE}.cx_score ;;
    group_label: "CSAT - Rating"
  }

  dimension: cx_score_explanation {
    type: string
    sql: ${TABLE}.cx_score_explanation ;;
    group_label: "CSAT - Rating"
  }

  dimension: conv_rating_value {
    type: number
    sql: ${TABLE}.conv_rating_value ;;
    group_label: "CSAT - Rating"
  }

  dimension: conv_rating_remark {
    type: string
    sql: ${TABLE}.conv_rating_remark ;;
    group_label: "CSAT - Rating"
  }

  dimension: conv_rating_contact_id {
    type: string
    sql: ${TABLE}.conv_rating_contact_id ;;
    group_label: "CSAT - Rating"
  }

  dimension: conv_rating_contact_external_id {
    type: string
    sql: ${TABLE}.conv_rating_contact_external_id ;;
    group_label: "CSAT - Rating"
  }

  dimension: conv_rating_teammate_id {
    type: string
    sql: ${TABLE}.conv_rating_teammate_id ;;
    group_label: "CSAT - Rating"
  }

  dimension: conv_rating_teammate_type {
    type: string
    sql: ${TABLE}.conv_rating_teammate_type ;;
    group_label: "CSAT - Rating"
  }


  # -------------------------------------------------------
  # AI / FIN AGENT
  # -------------------------------------------------------

  dimension: ai_agent_participated {
    type: string
    sql: ${TABLE}.ai_agent_participated ;;
    group_label: "AI - Fin Agent"
  }

  dimension: ai_agent_resolution_state {
    type: string
    sql: ${TABLE}.ai_agent_resolution_state ;;
    group_label: "AI - Fin Agent"
  }

  dimension: ai_agent_last_answer_type {
    type: string
    sql: ${TABLE}.ai_agent_last_answer_type ;;
    group_label: "AI - Fin Agent"
  }

  dimension: ai_agent_rating {
    type: string
    sql: ${TABLE}.ai_agent_rating ;;
    group_label: "AI - Fin Agent"
  }

  dimension: ai_agent_rating_remark {
    type: string
    sql: ${TABLE}.ai_agent_rating_remark ;;
    group_label: "AI - Fin Agent"
  }

  dimension: ai_agent_source_title {
    type: string
    sql: ${TABLE}.ai_agent_source_title ;;
    group_label: "AI - Fin Agent"
  }

  dimension: ai_agent_source_type {
    type: string
    sql: ${TABLE}.ai_agent_source_type ;;
    group_label: "AI - Fin Agent"
  }

  dimension: ai_fin_beyond_general_inquiry {
    type: string
    sql: ${TABLE}.ai_fin_beyond_general_inquiry ;;
    group_label: "AI - Fin Agent"
  }

  dimension: ai_issue_summary {
    type: string
    sql: ${TABLE}.ai_issue_summary ;;
    group_label: "AI - Fin Agent"
  }

  dimension: ai_fin_preview {
    type: string
    sql: ${TABLE}.ai_fin_preview ;;
    group_label: "AI - Fin Agent"
  }

  dimension: ai_fin_resolution_state {
    type: string
    sql: ${TABLE}.ai_fin_resolution_state ;;
    group_label: "AI - Fin Agent"
  }

  dimension: ai_fin_escalation_reason {
    type: string
    sql: ${TABLE}.ai_fin_escalation_reason ;;
    group_label: "AI - Fin Agent"
  }


  # -------------------------------------------------------
  # TAGS
  # -------------------------------------------------------

  dimension: tag_0  { type: string sql: ${TABLE}.tag_0  ;; group_label: "Tags" }
  dimension: tag_1  { type: string sql: ${TABLE}.tag_1  ;; group_label: "Tags" }
  dimension: tag_2  { type: string sql: ${TABLE}.tag_2  ;; group_label: "Tags" }
  dimension: tag_3  { type: string sql: ${TABLE}.tag_3  ;; group_label: "Tags" }
  dimension: tag_4  { type: string sql: ${TABLE}.tag_4  ;; group_label: "Tags" }
  dimension: tag_5  { type: string sql: ${TABLE}.tag_5  ;; group_label: "Tags" }
  dimension: tag_6  { type: string sql: ${TABLE}.tag_6  ;; group_label: "Tags" }
  dimension: tag_7  { type: string sql: ${TABLE}.tag_7  ;; group_label: "Tags" }
  dimension: tag_8  { type: string sql: ${TABLE}.tag_8  ;; group_label: "Tags" }
  dimension: tag_9  { type: string sql: ${TABLE}.tag_9  ;; group_label: "Tags" }
  dimension: tag_10 { type: string sql: ${TABLE}.tag_10 ;; group_label: "Tags" }
  dimension: tag_11 { type: string sql: ${TABLE}.tag_11 ;; group_label: "Tags" }


  # -------------------------------------------------------
  # TOPICS
  # -------------------------------------------------------

  dimension: topics_total_count {
    type: number
    sql: ${TABLE}.topics_total_count ;;
    group_label: "Topics"
  }

  dimension: topic_0 { type: string sql: ${TABLE}.topic_0 ;; group_label: "Topics" }
  dimension: topic_1 { type: string sql: ${TABLE}.topic_1 ;; group_label: "Topics" }
  dimension: topic_2 { type: string sql: ${TABLE}.topic_2 ;; group_label: "Topics" }
  dimension: topic_3 { type: string sql: ${TABLE}.topic_3 ;; group_label: "Topics" }
  dimension: topic_4 { type: string sql: ${TABLE}.topic_4 ;; group_label: "Topics" }
  dimension: topic_5 { type: string sql: ${TABLE}.topic_5 ;; group_label: "Topics" }
  dimension: topic_6 { type: string sql: ${TABLE}.topic_6 ;; group_label: "Topics" }
  dimension: topic_7 { type: string sql: ${TABLE}.topic_7 ;; group_label: "Topics" }
  dimension: topic_8 { type: string sql: ${TABLE}.topic_8 ;; group_label: "Topics" }


  # -------------------------------------------------------
  # ORDER - PRE IVR SNAPSHOT
  # -------------------------------------------------------

  dimension: order_id_pre_ivr {
    type: string
    sql: ${TABLE}.order_id_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: short_id_branded_pre_ivr {
    type: string
    sql: ${TABLE}.short_id_branded_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_status_pre_ivr {
    type: string
    sql: ${TABLE}.order_status_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_language_pre_ivr {
    type: string
    sql: ${TABLE}.order_language_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_total_amount_pre_ivr {
    type: number
    sql: ${TABLE}.order_total_amount_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_ships_in_pre_ivr {
    type: number
    sql: ${TABLE}.order_ships_in_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_delayed_pre_ivr {
    type: yesno
    sql: ${TABLE}.order_delayed_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_time_since_status_change_pre_ivr {
    type: number
    sql: ${TABLE}.order_time_since_status_change_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_total_cs_interactions_pre_ivr {
    type: number
    sql: ${TABLE}.order_total_cs_interactions_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_cs_interactions_for_order_pre_ivr {
    type: number
    sql: ${TABLE}.order_cs_interactions_for_order_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_latest_cs_interaction_pre_ivr {
    type: number
    sql: ${TABLE}.order_latest_cs_interaction_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_trial_expires_at_pre_ivr {
    type: number
    sql: ${TABLE}.order_trial_expires_at_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_time_since_trial_expiration_pre_ivr {
    type: number
    sql: ${TABLE}.order_time_since_trial_expiration_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_wismo_page_url_pre_ivr {
    type: string
    sql: ${TABLE}.order_wismo_page_url_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_is_wgs_pre_ivr {
    type: yesno
    sql: ${TABLE}.order_is_wgs_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: order_has_active_retention_pre_ivr {
    type: yesno
    sql: ${TABLE}.order_has_active_retention_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: admin_url_pre_ivr {
    type: string
    sql: ${TABLE}.admin_url_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }

  dimension: is_delivered_pre_ivr {
    type: yesno
    sql: ${TABLE}.is_delivered_pre_ivr ;;
    group_label: "Order - Pre IVR"
  }


  # -------------------------------------------------------
  # ORDER - BEFORE INTERACTION
  # -------------------------------------------------------

  dimension_group: order_created_before {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created_before ;;
    group_label: "Order - Before"
  }

  dimension: short_id_before {
    type: string
    sql: ${TABLE}.short_id_before ;;
    group_label: "Order - Before"
  }

  dimension: brand_before {
    type: string
    sql: ${TABLE}.brand_before ;;
    group_label: "Order - Before"
  }

  dimension: email_before {
    type: string
    sql: ${TABLE}.email_before ;;
    group_label: "Order - Before"
  }

  dimension: shipping_phone_before {
    type: string
    sql: ${TABLE}.shipping_phone_before ;;
    group_label: "Order - Before"
  }

  dimension: billing_phone_before {
    type: string
    sql: ${TABLE}.billing_phone_before ;;
    group_label: "Order - Before"
  }

  dimension: key_before {
    type: string
    sql: ${TABLE}.key_before ;;
    group_label: "Order - Before"
  }

  dimension: key_join_label_before {
    type: string
    sql: ${TABLE}.key_join_label_before ;;
    group_label: "Order - Before"
  }

  dimension: order_type_before {
    type: string
    sql: ${TABLE}.order_type_before ;;
    group_label: "Order - Before"
  }

  dimension: is_valid_order_before {
    type: yesno
    sql: ${TABLE}.is_valid_order_before ;;
    group_label: "Order - Before"
  }

  dimension: one_click_order_before {
    type: yesno
    sql: ${TABLE}.one_click_order_before ;;
    group_label: "Order - Before"
  }

  dimension: order_source_before {
    type: string
    sql: ${TABLE}.order_source_before ;;
    group_label: "Order - Before"
  }

  dimension: was_reordered_before {
    type: yesno
    sql: ${TABLE}.was_reordered_before ;;
    group_label: "Order - Before"
  }

  dimension: is_wgs_order_before {
    type: yesno
    sql: ${TABLE}.is_wgs_order_before ;;
    group_label: "Order - Before"
  }

  dimension: cart_id_before {
    type: string
    sql: ${TABLE}.cart_id_before ;;
    group_label: "Order - Before"
  }

  dimension: cart_remote_token_before {
    type: string
    sql: ${TABLE}.cart_remote_token_before ;;
    group_label: "Order - Before"
  }

  dimension: price_before {
    type: number
    sql: ${TABLE}.price_before ;;
    group_label: "Order - Before"
  }

  dimension: is_price_0_before {
    type: yesno
    sql: ${TABLE}.is_price_0_before ;;
    group_label: "Order - Before"
  }

  dimension: amount_price_0_item_before {
    type: number
    sql: ${TABLE}.amount_price_0_item_before ;;
    group_label: "Order - Before"
  }

  dimension: tax_before {
    type: number
    sql: ${TABLE}.tax_before ;;
    group_label: "Order - Before"
  }

  dimension: status_before {
    type: string
    sql: ${TABLE}.status_before ;;
    group_label: "Order - Before"
  }

  dimension: was_canceled_before {
    type: yesno
    sql: ${TABLE}.was_canceled_before ;;
    group_label: "Order - Before"
  }

  dimension: was_refunded_before {
    type: yesno
    sql: ${TABLE}.was_refunded_before ;;
    group_label: "Order - Before"
  }

  dimension: was_returned_before {
    type: yesno
    sql: ${TABLE}.was_returned_before ;;
    group_label: "Order - Before"
  }

  dimension: was_delivered_before {
    type: yesno
    sql: ${TABLE}.was_delivered_before ;;
    group_label: "Order - Before"
  }

  dimension: coupon_name_before {
    type: string
    sql: ${TABLE}.coupon_name_before ;;
    group_label: "Order - Before"
  }

  dimension: coupon_code_before {
    type: string
    sql: ${TABLE}.coupon_code_before ;;
    group_label: "Order - Before"
  }

  dimension: traffic_source_before {
    type: string
    sql: ${TABLE}.traffic_source_before ;;
    group_label: "Order - Before"
  }

  dimension: marketing_source_before {
    type: string
    sql: ${TABLE}.marketing_source_before ;;
    group_label: "Order - Before"
  }

  dimension: agent_email_before {
    type: string
    sql: ${TABLE}.agent_email_before ;;
    group_label: "Order - Before"
  }

  dimension: exchanged_agent_email_before {
    type: string
    sql: ${TABLE}.exchanged_agent_email_before ;;
    group_label: "Order - Before"
  }

  dimension: total_matresses_before {
    type: number
    sql: ${TABLE}.total_matresses_before ;;
    group_label: "Order - Before"
  }

  dimension: amount_mattress_before {
    type: number
    sql: ${TABLE}.amount_mattress_before ;;
    group_label: "Order - Before"
  }

  dimension: amount_actual_item_non_mattress_before {
    type: number
    sql: ${TABLE}.amount_actual_item_non_mattress_before ;;
    group_label: "Order - Before"
  }

  dimension: exchange_type_before {
    type: string
    sql: ${TABLE}.exchange_type_before ;;
    group_label: "Order - Before"
  }

  dimension: highest_product_type_before {
    type: string
    sql: ${TABLE}.highest_product_type_before ;;
    group_label: "Order - Before"
  }

  dimension: highest_product_model_before {
    type: string
    sql: ${TABLE}.highest_product_model_before ;;
    group_label: "Order - Before"
  }

  dimension: highest_product_feature_before {
    type: string
    sql: ${TABLE}.highest_product_feature_before ;;
    group_label: "Order - Before"
  }

  dimension: match_source_before {
    type: string
    sql: ${TABLE}.match_source_before ;;
    group_label: "Order - Before"
  }


  # -------------------------------------------------------
  # ORDER - AFTER INTERACTION
  # -------------------------------------------------------

  dimension_group: order_created_after {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created_after ;;
    group_label: "Order - After"
  }

  dimension: short_id_after {
    type: string
    sql: ${TABLE}.short_id_after ;;
    group_label: "Order - After"
  }

  dimension: brand_after {
    type: string
    sql: ${TABLE}.brand_after ;;
    group_label: "Order - After"
  }

  dimension: email_after {
    type: string
    sql: ${TABLE}.email_after ;;
    group_label: "Order - After"
  }

  dimension: shipping_phone_after {
    type: string
    sql: ${TABLE}.shipping_phone_after ;;
    group_label: "Order - After"
  }

  dimension: billing_phone_after {
    type: string
    sql: ${TABLE}.billing_phone_after ;;
    group_label: "Order - After"
  }

  dimension: key_after {
    type: string
    sql: ${TABLE}.key_after ;;
    group_label: "Order - After"
  }

  dimension: key_join_label_after {
    type: string
    sql: ${TABLE}.key_join_label_after ;;
    group_label: "Order - After"
  }

  dimension: order_type_after {
    type: string
    sql: ${TABLE}.order_type_after ;;
    group_label: "Order - After"
  }

  dimension: is_valid_order_after {
    type: yesno
    sql: ${TABLE}.is_valid_order_after ;;
    group_label: "Order - After"
  }

  dimension: one_click_order_after {
    type: yesno
    sql: ${TABLE}.one_click_order_after ;;
    group_label: "Order - After"
  }

  dimension: order_source_after {
    type: string
    sql: ${TABLE}.order_source_after ;;
    group_label: "Order - After"
  }

  dimension: was_reordered_after {
    type: yesno
    sql: ${TABLE}.was_reordered_after ;;
    group_label: "Order - After"
  }

  dimension: is_wgs_order_after {
    type: yesno
    sql: ${TABLE}.is_wgs_order_after ;;
    group_label: "Order - After"
  }

  dimension: cart_id_after {
    type: string
    sql: ${TABLE}.cart_id_after ;;
    group_label: "Order - After"
  }

  dimension: cart_remote_token_after {
    type: string
    sql: ${TABLE}.cart_remote_token_after ;;
    group_label: "Order - After"
  }

  dimension: price_after {
    type: number
    sql: ${TABLE}.price_after ;;
    group_label: "Order - After"
  }

  dimension: is_price_0_after {
    type: yesno
    sql: ${TABLE}.is_price_0_after ;;
    group_label: "Order - After"
  }

  dimension: amount_price_0_item_after {
    type: number
    sql: ${TABLE}.amount_price_0_item_after ;;
    group_label: "Order - After"
  }

  dimension: tax_after {
    type: number
    sql: ${TABLE}.tax_after ;;
    group_label: "Order - After"
  }

  dimension: status_after {
    type: string
    sql: ${TABLE}.status_after ;;
    group_label: "Order - After"
  }

  dimension: was_canceled_after {
    type: yesno
    sql: ${TABLE}.was_canceled_after ;;
    group_label: "Order - After"
  }

  dimension: was_refunded_after {
    type: yesno
    sql: ${TABLE}.was_refunded_after ;;
    group_label: "Order - After"
  }

  dimension: was_returned_after {
    type: yesno
    sql: ${TABLE}.was_returned_after ;;
    group_label: "Order - After"
  }

  dimension: was_delivered_after {
    type: yesno
    sql: ${TABLE}.was_delivered_after ;;
    group_label: "Order - After"
  }

  dimension: coupon_name_after {
    type: string
    sql: ${TABLE}.coupon_name_after ;;
    group_label: "Order - After"
  }

  dimension: coupon_code_after {
    type: string
    sql: ${TABLE}.coupon_code_after ;;
    group_label: "Order - After"
  }

  dimension: traffic_source_after {
    type: string
    sql: ${TABLE}.traffic_source_after ;;
    group_label: "Order - After"
  }

  dimension: marketing_source_after {
    type: string
    sql: ${TABLE}.marketing_source_after ;;
    group_label: "Order - After"
  }

  dimension: agent_email_after {
    type: string
    sql: ${TABLE}.agent_email_after ;;
    group_label: "Order - After"
  }

  dimension: exchanged_agent_email_after {
    type: string
    sql: ${TABLE}.exchanged_agent_email_after ;;
    group_label: "Order - After"
  }

  dimension: total_matresses_after {
    type: number
    sql: ${TABLE}.total_matresses_after ;;
    group_label: "Order - After"
  }

  dimension: amount_mattress_after {
    type: number
    sql: ${TABLE}.amount_mattress_after ;;
    group_label: "Order - After"
  }

  dimension: amount_actual_item_non_mattress_after {
    type: number
    sql: ${TABLE}.amount_actual_item_non_mattress_after ;;
    group_label: "Order - After"
  }

  dimension: exchange_type_after {
    type: string
    sql: ${TABLE}.exchange_type_after ;;
    group_label: "Order - After"
  }

  dimension: highest_product_type_after {
    type: string
    sql: ${TABLE}.highest_product_type_after ;;
    group_label: "Order - After"
  }

  dimension: highest_product_model_after {
    type: string
    sql: ${TABLE}.highest_product_model_after ;;
    group_label: "Order - After"
  }

  dimension: highest_product_feature_after {
    type: string
    sql: ${TABLE}.highest_product_feature_after ;;
    group_label: "Order - After"
  }

  dimension: match_source_after {
    type: string
    sql: ${TABLE}.match_source_after ;;
    group_label: "Order - After"
  }


  # -------------------------------------------------------
  # CS ATTRIBUTION LOGIC
  # -------------------------------------------------------

  dimension: has_order_before {
    description: "Customer had an existing order before the interaction"
    type: yesno
    sql: ${short_id_before} IS NOT NULL ;;
    group_label: "CS Attribution"
  }

  dimension: has_order_after {
    description: "Conversation has an order placed after the interaction"
    type: yesno
    sql: ${short_id_after} IS NOT NULL ;;
    group_label: "CS Attribution"
  }

  dimension: is_cs_assisted_order_48h {
    description: "Order placed within 48 hours after CS interaction"
    type: yesno
    sql: datetime_diff(${order_created_after_raw}, ${conversation_start_time_pst_raw}, hour) < 48 ;;
    group_label: "CS Attribution"
  }

  dimension: is_cs_agent_order {
    description: "Order had a CS agent email attached"
    type: yesno
    sql: ${agent_email_after} IS NOT NULL AND ${agent_email_after} <> "" ;;
    group_label: "CS Attribution"
  }

  dimension: is_cs_assisted_order_not_agent_48h {
    description: "CS assisted order within 48h but NOT agent-placed"
    type: yesno
    sql: datetime_diff(${order_created_after_raw}, ${conversation_start_time_pst_raw}, hour) < 48
      AND (${agent_email_after} IS NULL OR ${agent_email_after} = "") ;;
    group_label: "CS Attribution"
  }

  dimension: is_order_same_day_as_interaction {
    description: "Order placed on same calendar day as CS interaction"
    type: yesno
    sql: ${conversation_start_time_pst_date} = ${order_created_after_date} ;;
    group_label: "CS Attribution"
  }

  dimension: is_order_one_day_after_interaction {
    description: "Order placed exactly 1 day after CS interaction"
    type: yesno
    sql: datetime_diff(${order_created_after_raw}, ${conversation_start_time_pst_raw}, day) = 1 ;;
    group_label: "CS Attribution"
  }

  dimension: is_order_two_days_after_interaction {
    description: "Order placed exactly 2 days after CS interaction"
    type: yesno
    sql: datetime_diff(${order_created_after_raw}, ${conversation_start_time_pst_raw}, day) = 2 ;;
    group_label: "CS Attribution"
  }

  dimension: is_order_three_days_after_interaction {
    description: "Order placed exactly 3 days after CS interaction"
    type: yesno
    sql: datetime_diff(${order_created_after_raw}, ${conversation_start_time_pst_raw}, day) = 3 ;;
    group_label: "CS Attribution"
  }


  # -------------------------------------------------------
  # MEASURES - CONVERSATIONS
  # -------------------------------------------------------

  measure: count {
    type: count
    drill_fields: [detail*]
    group_label: "Intercom Measures - Conversations"
  }

  measure: total_conversations {
    type: count_distinct
    sql: ${conversation_id} ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - Conversations"
  }

  measure: total_conversations_resolved {
    type: count_distinct
    sql: CASE WHEN ${resolution_status} = 'Resolved' THEN ${conversation_id} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - Conversations"
  }

  measure: total_conversations_not_resolved {
    type: count_distinct
    sql: CASE WHEN ${resolution_status} != 'Resolved' OR ${resolution_status} IS NULL THEN ${conversation_id} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - Conversations"
  }

  measure: total_conversations_reopened {
    type: count_distinct
    sql: CASE WHEN ${reopen_flag} = TRUE THEN ${conversation_id} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - Conversations"
  }


  # -------------------------------------------------------
  # MEASURES - AI / FIN
  # -------------------------------------------------------

  measure: total_conversations_ai_participated {
    type: count_distinct
    sql: CASE WHEN ${ai_agent_participated} = 'true' THEN ${conversation_id} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - AI Fin"
  }

  measure: total_conversations_ai_resolved {
    type: count_distinct
    sql: CASE WHEN ${ai_fin_resolution_state} = 'resolved' THEN ${conversation_id} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - AI Fin"
  }

  measure: fin_ai_involvement_rate {
    type: number
    sql: ${total_conversations_ai_participated} / NULLIF(${total_conversations}, 0) ;;
    value_format: "0.0%"
    group_label: "Intercom Measures - AI Fin"
  }

  measure: fin_ai_resolution_rate {
    type: number
    sql: ${total_conversations_ai_resolved} / NULLIF(${total_conversations_ai_participated}, 0) ;;
    value_format: "0.0%"
    group_label: "Intercom Measures - AI Fin"
  }


  # -------------------------------------------------------
  # MEASURES - DURATION AVERAGES
  # -------------------------------------------------------

  measure: avg_resolution_duration_seconds {
    type: average
    sql: ${resolution_duration_seconds} ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - Durations"
  }

  measure: avg_handling_duration_seconds {
    type: average
    sql: ${handling_duration_seconds} ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - Durations"
  }

  measure: avg_handling_adjusted_duration_seconds {
    type: average
    sql: ${handling_adjusted_duration_seconds} ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - Durations"
  }

  measure: avg_time_to_admin_reply_duration {
    type: average
    sql: ${time_to_admin_reply_duration} ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - Durations"
  }

  measure: avg_time_to_first_close_duration {
    type: average
    sql: ${time_to_first_close_duration} ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - Durations"
  }


#------

  dimension: handling_duration_mmss {
    description: "Handle time formatted as MM:SS"
    type: string
    sql: CONCAT(
           LPAD(CAST(FLOOR(${handling_duration_seconds} / 60) AS STRING), 2, '0'),
           ':',
           LPAD(CAST(MOD(CAST(${handling_duration_seconds} AS INT64), 60) AS STRING), 2, '0')
         ) ;;
    group_label: "Conversation - Durations"
  }

  measure: avg_handling_duration_mmss {
    description: "Average handle time formatted as MM:SS"
    type: string
    sql: CONCAT(
           LPAD(CAST(FLOOR(AVG(${handling_duration_seconds}) / 60) AS STRING), 2, '0'),
           ':',
           LPAD(CAST(MOD(CAST(ROUND(AVG(${handling_duration_seconds})) AS INT64), 60) AS STRING), 2, '0')
         ) ;;
    group_label: "Intercom Measures - Durations"
  }



  dimension: handling_duration_minutes {
    description: "Handle time in minutes (numeric, use for charts)"
    type: number
    sql: ROUND(${handling_duration_seconds} / 60.0, 2) ;;
    value_format: "0.00"
    group_label: "Conversation - Durations"
  }

  measure: avg_handling_duration_minutes {
    description: "Average handle time in minutes (numeric, sortable, use for charts)"
    type: average
    sql: ${handling_duration_seconds} / 60.0 ;;
    value_format: "0.0"
    group_label: "Intercom Measures - Durations"
  }


#---

  # -------------------------------------------------------
  # MEASURES - CS ATTRIBUTION
  # -------------------------------------------------------

  measure: total_conversations_with_order_before {
    type: count_distinct
    sql: CASE WHEN ${has_order_before} = TRUE THEN ${conversation_id} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - CS Attribution"
  }

  measure: total_conversations_with_order_after {
    type: count_distinct
    sql: CASE WHEN ${has_order_after} = TRUE THEN ${conversation_id} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - CS Attribution"
  }

  measure: total_conversations_cs_assisted_48h {
    type: count_distinct
    sql: CASE WHEN ${is_cs_assisted_order_48h} = TRUE THEN ${conversation_id} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - CS Attribution"
  }

  measure: total_conversations_cs_agent_order {
    type: count_distinct
    sql: CASE WHEN ${is_cs_agent_order} = TRUE THEN ${conversation_id} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - CS Attribution"
  }

  measure: total_conversations_cs_agent_order_within_48h {
    type: count_distinct
    sql: CASE WHEN ${is_cs_agent_order} = TRUE AND ${is_cs_assisted_order_48h} = TRUE THEN ${conversation_id} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - CS Attribution"
  }

  measure: total_conversations_cs_assisted_only_no_agent_48h {
    type: count_distinct
    sql: CASE WHEN ${is_cs_assisted_order_not_agent_48h} = TRUE THEN ${conversation_id} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - CS Attribution"
  }

  measure: total_short_id_after_cs_assisted_48h {
    type: count_distinct
    sql: CASE WHEN ${is_cs_assisted_order_48h} = TRUE THEN ${short_id_after} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - CS Attribution"
  }

  measure: total_short_id_after_cs_agent_order_within_48h {
    type: count_distinct
    sql: CASE WHEN ${is_cs_agent_order} = TRUE AND ${is_cs_assisted_order_48h} = TRUE THEN ${short_id_after} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - CS Attribution"
  }


  # -------------------------------------------------------
  # MEASURES - REVENUE
  # -------------------------------------------------------

  measure: total_revenue_after {
    type: sum
    sql: ${price_after} ;;
    value_format: "$#,##0"
    group_label: "Intercom Measures - Revenue"
  }

  measure: distinct_revenue_after {
    type: sum_distinct
    sql_distinct_key: ${short_id_after} ;;
    sql: ${price_after} ;;
    value_format: "$#,##0"
    group_label: "Intercom Measures - Revenue"
  }

  measure: distinct_revenue_cs_assisted_48h {
    type: sum_distinct
    sql_distinct_key: CONCAT(${short_id_after}, CAST(${is_cs_assisted_order_48h} AS STRING)) ;;
    sql: CASE WHEN ${is_cs_assisted_order_48h} = TRUE THEN ${price_after} ELSE NULL END ;;
    value_format: "$#,##0"
    group_label: "Intercom Measures - Revenue"
  }

  measure: distinct_revenue_cs_agent_within_48h {
    type: sum_distinct
    sql_distinct_key: CONCAT(${short_id_after}, CAST(${is_cs_assisted_order_48h} AS STRING), CAST(${is_cs_agent_order} AS STRING)) ;;
    sql: CASE WHEN ${is_cs_assisted_order_48h} = TRUE AND ${is_cs_agent_order} = TRUE THEN ${price_after} ELSE NULL END ;;
    value_format: "$#,##0"
    group_label: "Intercom Measures - Revenue"
  }

  measure: distinct_revenue_cs_assisted_only_no_agent {
    type: sum_distinct
    sql_distinct_key: CONCAT(${short_id_after}, CAST(${is_cs_assisted_order_not_agent_48h} AS STRING)) ;;
    sql: CASE WHEN ${is_cs_assisted_order_not_agent_48h} = TRUE THEN ${price_after} ELSE NULL END ;;
    value_format: "$#,##0"
    group_label: "Intercom Measures - Revenue"
  }

  measure: avg_order_value_after {
    type: number
    sql: ${distinct_revenue_after} / NULLIF(${total_short_id_after_cs_assisted_48h}, 0) ;;
    value_format: "$#,##0"
    group_label: "Intercom Measures - Revenue"
  }


  measure: cvr_cs_assisted_48h {
    description: "CVR - CS assisted orders within 48h out of total conversations"
    type: number
    sql: ${total_conversations_cs_assisted_48h} / NULLIF(${total_conversations}, 0) ;;
    value_format: "0.0%"
    group_label: "Intercom Measures - CS Attribution"
  }

  measure: cvr_cs_agent_order_within_48h {
    description: "CVR - CS agent-placed orders within 48h out of total conversations"
    type: number
    sql: ${total_conversations_cs_agent_order_within_48h} / NULLIF(${total_conversations}, 0) ;;
    value_format: "0.0%"
    group_label: "Intercom Measures - CS Attribution"
  }

  measure: cvr_cs_assisted_only_no_agent_48h {
    description: "CVR - CS assisted (non-agent) orders within 48h out of total conversations"
    type: number
    sql: ${total_conversations_cs_assisted_only_no_agent_48h} / NULLIF(${total_conversations}, 0) ;;
    value_format: "0.0%"
    group_label: "Intercom Measures - CS Attribution"
  }

  measure: cvr_cs_agent_order {
    description: "CVR - all CS agent-placed orders out of total conversations"
    type: number
    sql: ${total_conversations_cs_agent_order} / NULLIF(${total_conversations}, 0) ;;
    value_format: "0.0%"
    group_label: "Intercom Measures - CS Attribution"
  }


  # -------------------------------------------------------
  # MEASURES - aov
  # ----


  measure: aov_cs_assisted_48h {
    description: "AOV - CS assisted orders within 48h (revenue / distinct orders)"
    type: number
    sql: ${distinct_revenue_cs_assisted_48h} / NULLIF(${total_short_id_after_cs_assisted_48h}, 0) ;;
    value_format: "$#,##0"
    group_label: "Intercom Measures - Revenue"
  }

  measure: aov_cs_agent_order_within_48h {
    description: "AOV - CS agent-placed orders within 48h (revenue / distinct orders)"
    type: number
    sql: ${distinct_revenue_cs_agent_within_48h} / NULLIF(${total_short_id_after_cs_agent_order_within_48h}, 0) ;;
    value_format: "$#,##0"
    group_label: "Intercom Measures - Revenue"
  }

  measure: aov_cs_agent_order {
    description: "AOV - all CS agent-placed orders regardless of time (revenue / distinct orders)"
    type: number
    sql: ${distinct_revenue_cs_agent_within_48h} / NULLIF(${total_conversations_cs_agent_order}, 0) ;;
    value_format: "$#,##0"
    group_label: "Intercom Measures - Revenue"
  }



  # -------------------------------------------------------
  # MEASURES - CSAT
  # -------------------------------------------------------

  measure: total_conversations_with_rating {
    type: count_distinct
    sql: CASE WHEN ${conv_rating_value} IS NOT NULL THEN ${conversation_id} ELSE NULL END ;;
    value_format: "#,##0"
    group_label: "Intercom Measures - CSAT"
  }

  measure: avg_conv_rating_value {
    type: average
    sql: ${conv_rating_value} ;;
    value_format: "0.00"
    group_label: "Intercom Measures - CSAT"
  }


#-- avg_touches_per_client_client_id

  measure: avg_touches_per_client {
    description: "Average number of conversations per unique client ID"
    type: number
    sql: ${total_conversations} / NULLIF(COUNT(DISTINCT ${client_id}), 0) ;;
    value_format: "0.00"
    group_label: "Intercom Measures - Conversations"
  }


  # -------------------------------------------------------
  # DRILL FIELDS
  # -------------------------------------------------------

  set: detail {
    fields: [
      conversation_id,
      brand,
      source_type,
      webhook_intent,
      webhook_sub_intent,
      resolution_status,
      customer_email,
      customer_type,
      ai_agent_participated,
      ai_fin_resolution_state,
      conversation_start_time_pst_date,
      short_id_after,
      agent_email_after
    ]
  }

}
