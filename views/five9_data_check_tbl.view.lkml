view: five9_data_check_tbl {
  sql_table_name: `omega-post-184817.Keshet.five9_data_check_tbl`
    ;;

  dimension: agent_email {
    type: string
    sql: ${TABLE}.agentEmail ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaignName ;;
  }

  dimension: correspondence_type {
    type: string
    sql: ${TABLE}.correspondenceType ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customerId ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: has_order {
    type: yesno
    sql: ${TABLE}.has_order ;;
  }

  dimension: has_order_before_interaction {
    type: yesno
    sql: ${TABLE}.has_order_before_interaction ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: main_email {
    type: string
    sql: ${TABLE}.mainEmail ;;
  }

  dimension: order_within_48h {
    type: yesno
    sql: ${TABLE}.order_within_48h ;;
  }

  dimension: phone_campaign {
    type: string
    sql: ${TABLE}.phone_campaign ;;
  }

  dimension: provider_name {
    type: string
    sql: ${TABLE}.providerName ;;
  }

  dimension: provider_session_id {
    type: string
    sql: ${TABLE}.providerSessionId ;;
  }

  dimension: recovery_phone_number {
    type: string
    sql: ${TABLE}.recoveryPhoneNumber ;;
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





  measure: count {
    type: count
    drill_fields: [last_name, first_name, campaign_name, provider_name]
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


  measure: total_session_with_order_within_48h{
    type: count_distinct
    sql: case when ${order_within_48h} = true then ${provider_session_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - session"
  }





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


  measure: total_customer_with_order_within_48h{
    type: count_distinct
    sql: case when ${order_within_48h} = true then ${customer_id} else null end ;;
    value_format: "#,##0"
    group_label: "five9 Measures - customer"
  }



}
