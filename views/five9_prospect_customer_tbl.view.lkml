view: five9_prospect_customer_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.five9_prospect_customer_tbl`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: agent_email {
    type: string
    sql: ${TABLE}.agentEmail ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.AgentId ;;
  }

  dimension: order_agent_id_after {
    type: string
    sql: ${TABLE}.order_agent_id_after ;;
  }



  dimension: ani {
    type: string
    sql: ${TABLE}.ANI ;;
  }

  dimension: answered_at {
    type: string
    sql: ${TABLE}.answeredAt ;;
  }

  dimension: aoe_short_id {
    type: string
    sql: ${TABLE}.aoe_short_id ;;
  }

  dimension: aop2_short_id {
    type: string
    sql: ${TABLE}.aop2_short_id ;;
  }

  dimension: aop_short_id {
    type: string
    sql: ${TABLE}.aop_short_id ;;
  }


  dimension: short_id_before {
    type: string
    sql: ${TABLE}.short_id_before ;;
  }

  dimension: short_id_after {
    type: string
    sql: ${TABLE}.short_id_after ;;
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

  dimension: campaign_name_a {
    type: string
    sql: ${TABLE}.campaignName_a ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: correspondence_type {
    type: string
    sql: ${TABLE}.correspondenceType ;;
  }

  dimension_group: creation {
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
    sql: ${TABLE}.DNIS ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: end_timestamp {
    type: string
    sql: CAST(${TABLE}.e AS DATE) ;;
  }




  dimension_group: end_timestamp_datetime {
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
    sql: ${TABLE}.end_timestamp_datetime ;;
  }

  dimension: ended_at {
    type: string
    sql: ${TABLE}.endedAt ;;
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
    type: string
    sql: ${TABLE}.handle_time ;;
  }

  dimension: has_order {
    type: yesno
    sql: ${TABLE}.has_order ;;
  }

  dimension: has_order_before_interaction {
    type: yesno
    sql: ${TABLE}.has_order_before_interaction ;;
  }

  dimension: hold_time {
    type: string
    sql: ${TABLE}.hold_time ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: main_email {
    type: string
    sql: ${TABLE}.mainEmail ;;
  }

  dimension: mediatype {
    type: string
    sql: ${TABLE}.mediatype ;;
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


  dimension_group: order_created_before {
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
    sql: ${TABLE}.order_created_before ;;
  }


  dimension_group: order_created_after {
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
    sql: ${TABLE}.order_created_after ;;
  }




  dimension: order_id {
    type: string
    sql: ${TABLE}.OrderId ;;
  }

  dimension: order_num_entered {
    type: string
    sql: ${TABLE}.orderNumEntered ;;
  }

##  dimension: order_within_48h {
##    type: yesno
##    sql: ${TABLE}.order_within_48h ;;
##  }

##  dimension: order_within_48h_w_agent {
##    type: string
##    sql: ${TABLE}.order_within_48h_w_agent ;;
##  }

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

  dimension: provider_session_id {
    type: string
    sql: ${TABLE}.providerSessionId ;;
  }

  dimension: queue_time {
    type: string
    sql: ${TABLE}.queue_time ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }




  dimension: skill_name {
    type: string
    sql: ${TABLE}.skill_name ;;
  }

  dimension: start_time {
    type: string
    sql: ${TABLE}.start_time ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
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

  dimension: type_name {
    type: string
    sql: ${TABLE}.type_name ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  dimension: wrapup_time {
    type: string
    sql: ${TABLE}.wrapup_time ;;
  }


  dimension: AGENT_GROUP {
    type: string
    sql: ${TABLE}.AGENT_GROUP ;;
  }



  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      type_name,
      provider_name,
      first_name,
      full_name,
      disposition_name,
      last_name,
      user_name,
      campaign_name,
      skill_name,
      campaign_name
    ]
  }


  ### alert_created DATETIME  NULLABLE
## alert_title  STRING  NULLABLE
## alert_status STRING  NULLABLE
##resolveReason STRING  NULLABLE
## alert_id STRING  NULLABLE

  dimension: alert_title {
    type: string
    sql: ${TABLE}.alert_title ;;
  }


  dimension: alert_status {
    type: string
    sql: ${TABLE}.alert_status ;;
  }


  dimension: resolveReason {
    type: string
    sql: ${TABLE}.resolveReason ;;
  }

  dimension: alert_id {
    type: string
    sql: ${TABLE}.alert_id ;;
  }


  dimension_group: alert_created {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.alert_created ;;
  }





# date granularity - alert_created Date #

  parameter: Date_Granularity_alert_created_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }



  dimension: alert_created {
    label_from_parameter: Date_Granularity_alert_created_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_alert_created_date %} = 'Day' THEN cast(${transaction_date} as string)
             WHEN {% parameter Date_Granularity_alert_created_date %} = 'Week' THEN cast(${transaction_week} as string)
             WHEN {% parameter Date_Granularity_alert_created_date %} = 'Month' THEN cast(${transaction_month} as string)
             WHEN {% parameter Date_Granularity_alert_created_date %} = 'Quarter' THEN cast(${transaction_quarter} as string)
             WHEN {% parameter Date_Granularity_alert_created_date %} = 'Year' THEN cast(${transaction_year} as string)
            ELSE null
            END ;;
  }



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


### CS CVR

  dimension: is_order_after {
    type: string
    sql: CASE WHEN short_id_after IS NOT NULL THEN "Has order after" ELSE NULL END ;;
}







####




  measure: total_session_id {
    type: count_distinct
    sql: ${provider_session_id} ;;
    value_format: "#,##0"
    group_label: "five9 Measures - session"
  }

  measure: total_customer_Id {
    type: count_distinct
    sql: ${customer_id} ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }


  measure: total_session_with_orders{
    type: count_distinct
    sql: case when ${has_order} = true then ${provider_session_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - session"
  }

  measure: total_session_with_orders_before_interaction{
    type: count_distinct
    sql: case when ${has_order_before_interaction} = true then ${provider_session_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - session"
  }


 ## measure: total_session_with_order_within_48h{
  ##  type: count_distinct
  ##  sql: case when ${order_within_48h} = true then ${provider_session_id} else null end ;;
  ##  value_format: "#,##0"
  ##  group_label: "five9 Measures - session"
  ##}

  ## measure: total_session_with_order_within_48h_with_agent{
  ##  type: count_distinct
  ##  sql: case when ${order_within_48h_w_agent} is not null then ${provider_session_id} else null end ;;
  ##  value_format: "#,##0"
  ##  group_label: "five9 Measures - session"
  ##}



  measure: total_customer_with_orders{
    type: count_distinct
    sql: case when ${has_order} = true then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }

  measure: total_customer_with_orders_before_interaction{
    type: count_distinct
    sql: case when ${has_order_before_interaction} = true then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }


 ## measure: total_customer_with_order_within_48h{
  ##  type: count_distinct
  ##  sql: case when ${order_within_48h} = true then ${customer_id} else null end ;;
  ##  value_format: "#,##0"
  ##  group_label: "five9 Measures - customer"
  ##}

  ##measure: total_customer_with_order_within_48h_with_agent{
  ##  type: count_distinct
  ##  sql: case when  ${order_within_48h_w_agent} is not null then ${customer_id} else null end ;;
  ##  value_format: "#,##0"
  ##  group_label: "five9 Measures - customer"
  ##}

###

  dimension: is_call_answered {
    description: "Is call answerd"
    type: yesno
    sql: ${agent_email} <> "" ;;
  }

  dimension: is_cs_assisted_order_TF {
    description: "Is CS assisted order"
    type: yesno
    sql: datetime_diff(${order_created_after_raw},${transaction_raw},hour)<48 ;;
  }


  dimension: is_cs_agent_order_TF {
    description: "Is CS agent order"
    type: yesno
    sql: ${order_agent_id_after} is not null ;;
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
    group_label: "five9 Measures - customer"
  }

  measure: total_short_id_with_cs_agent_orders_within48h{
    type: count_distinct
    sql: case when (${is_cs_agent_order_TF} = true and ${is_cs_assisted_order_TF} = true) then ${short_id_after} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }





  ##dimension: is_cs_assisted_order {
  ##  type: string
  ##  sql: case when (datetime_diff(${order_created_after_raw},${transaction_raw},hour)<48) then "assisted 48h order " else null end ;;
  ##}


##  dimension: is_cs_agent_order {
##    type: string
##    sql: case when ((datetime_diff(${order_created_after_raw},${transaction_raw},hour)<48) and ${order_agent_id_after} is not null) then "agent 48h order " else null end
##      ;;}


}
