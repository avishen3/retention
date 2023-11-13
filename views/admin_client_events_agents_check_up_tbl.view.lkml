view: admin_client_events_agents_check_up_tbl {
  sql_table_name: `omega-post-184817.Keshet.admin_client_events_agents_check_up_tbl`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: amount_already_submitted {
    type: string
    sql: ${TABLE}.amount_already_submitted ;;
  }

  dimension: appeasement_amount {
    type: string
    sql: ${TABLE}.appeasement_amount ;;
  }

  dimension: appeasement_reason {
    type: string
    sql: ${TABLE}.appeasement_reason ;;
  }

  dimension: appeasement_sub_reason {
    type: string
    sql: ${TABLE}.appeasement_sub_reason ;;
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension_group: event_ts {
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
    sql: ${TABLE}.event_ts ;;
  }


# date granularity - event_date #

  parameter: Date_Granularity_event_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
    allowed_value: { value: "Hour" }
    allowed_value: { value: "Hour of Day" }
  }

  dimension: event_date {
    label_from_parameter: Date_Granularity_event_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_event_date %} = 'Day' THEN cast(${event_ts_date} as string)
             WHEN {% parameter Date_Granularity_event_date %} = 'Week' THEN cast(${event_ts_week} as string)
             WHEN {% parameter Date_Granularity_event_date %} = 'Month' THEN cast(${event_ts_month} as string)
             WHEN {% parameter Date_Granularity_event_date %} = 'Quarter' THEN cast(${event_ts_quarter} as string)
             WHEN {% parameter Date_Granularity_event_date %} = 'Year' THEN cast(${event_ts_year} as string)
            ELSE null
            END ;;
  }



  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.full_name ;;
  }

  dimension: gauid {
    type: string
    sql: ${TABLE}.gauid ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.info ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_ID ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: refund_reason {
    type: string
    sql: ${TABLE}.refund_reason ;;
  }

  dimension: refund_sub_reason {
    type: string
    sql: ${TABLE}.refund_sub_reason ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: shipment_id {
    type: string
    sql: ${TABLE}.shipment_ID ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: widget {
    type: string
    sql: ${TABLE}.widget ;;
  }

  measure: count {
    type: count
    drill_fields: [id, last_name, full_name, first_name]
  }


  measure: session_count  {
    type: count_distinct
    sql: ${session_id}
      ;;
    value_format: "#,##0"
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  measure: short_id_count  {
    type: count_distinct
    sql: ${session_id}
      ;;
    value_format: "#,##0"
  }

}
