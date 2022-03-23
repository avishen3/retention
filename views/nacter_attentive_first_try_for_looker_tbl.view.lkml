view: nacter_attentive_first_try_for_looker_tbl {
  sql_table_name: `omega-post-184817.Keshet.Nacter_Attentive_first_try_for_looker_tbl`
    ;;

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }

  dimension: creative_id {
    type: number
    sql: ${TABLE}.creative_id ;;
  }

  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
  }

  dimension: creative_subtype {
    type: string
    sql: ${TABLE}.creative_subtype ;;
  }

  dimension: creative_type {
    type: string
    sql: ${TABLE}.creative_type ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: join_source {
    type: string
    sql: ${TABLE}.join_source ;;
  }

  dimension: join_timestemp {
    type: string
    sql: ${TABLE}.join_timestemp ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}.message_id ;;
  }

  dimension: message_name {
    type: string
    sql: ${TABLE}.message_name ;;
  }

  dimension: message_start {
    type: string
    sql: ${TABLE}.message_start ;;
  }

  dimension: message_subtype {
    type: string
    sql: ${TABLE}.message_subtype ;;
  }

  dimension: message_text {
    type: string
    sql: ${TABLE}.message_text ;;
  }

  dimension: message_type {
    type: string
    sql: ${TABLE}.message_type ;;
  }

  dimension: opt_out_timestemp {
    type: string
    sql: ${TABLE}.opt_out_timestemp ;;
  }

  dimension: phone {
    type: number
    sql: ${TABLE}.phone ;;
  }

  dimension: subscription_type {
    type: string
    sql: ${TABLE}.subscription_type ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [creative_name, message_name]
  }

  #####

  dimension_group: event_date {
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
    sql: ${TABLE}.event_date ;;
  }

### Date_granularty

# date granularity - Order Date #

  parameter: Date_Granularity_event_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }

  dimension: Event_Date_Granularity {
    label_from_parameter: Date_Granularity_event_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_event_date %} = 'Day' THEN cast(${event_date_date} as string)
             WHEN {% parameter Date_Granularity_event_date %} = 'Week' THEN cast(${event_date_week} as string)
             WHEN {% parameter Date_Granularity_event_date %} = 'Month' THEN cast(${event_date_month} as string)
             WHEN {% parameter Date_Granularity_event_date %} = 'Quarter' THEN cast(${event_date_quarter} as string)
             WHEN {% parameter Date_Granularity_event_date %} = 'Year' THEN cast(${event_date_year} as string)
            ELSE null
            END ;;
  }



}
