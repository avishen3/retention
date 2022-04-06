view: attentive_all_brands_full_data_for_looker_tbl {
  sql_table_name: `omega-post-184817.crm.attentive_all_brands_full_data_for_looker_tbl`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

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

  dimension: creative_name_lower {
    type: string
    sql: ${TABLE}.creative_name_lower ;;
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

  dimension: event_time {
    type: string
    sql: ${TABLE}.event_time ;;
  }

  dimension_group: event_timestemp {
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
    sql: ${TABLE}.event_timestemp ;;
  }


  ####


# date granularity - Event Date #

  parameter: Date_Granularity_event_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }

  dimension: Event_Date_gr {
    label_from_parameter: Date_Granularity_event_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_event_date %} = 'Day' THEN cast(${event_timestemp_date} as string)
             WHEN {% parameter Date_Granularity_event_date %} = 'Week' THEN cast(${event_timestemp_week} as string)
             WHEN {% parameter Date_Granularity_event_date %} = 'Month' THEN cast(${event_timestemp_month} as string)
             WHEN {% parameter Date_Granularity_event_date %} = 'Quarter' THEN cast(${event_timestemp_quarter} as string)
             WHEN {% parameter Date_Granularity_event_date %} = 'Year' THEN cast(${event_timestemp_year} as string)
            ELSE null
            END ;;
  }




  dimension_group: event_timestemp_day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.event_timestemp_day ;;
  }

  dimension: join_source {
    type: string
    sql: ${TABLE}.join_source ;;
  }

  dimension: join_time {
    type: string
    sql: ${TABLE}.join_time ;;
  }

  dimension_group: join_timestemp {
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
    sql: ${TABLE}.join_timestemp ;;
  }



# date granularity - join Date #

  parameter: Date_Granularity_join_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }

  dimension: Join_Date_gr {
    label_from_parameter: Date_Granularity_event_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_join_date %} = 'Day' THEN cast(${join_timestemp_date} as string)
             WHEN {% parameter Date_Granularity_join_date %} = 'Week' THEN cast(${join_timestemp_week} as string)
             WHEN {% parameter Date_Granularity_join_date %} = 'Month' THEN cast(${join_timestemp_month} as string)
             WHEN {% parameter Date_Granularity_join_date %} = 'Quarter' THEN cast(${join_timestemp_quarter} as string)
             WHEN {% parameter Date_Granularity_join_date %} = 'Year' THEN cast(${join_timestemp_year} as string)
            ELSE null
            END ;;
  }




  dimension: massage_name {
    type: string
    sql: ${TABLE}.massage_name ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}.message_id ;;
  }

  dimension: message_start_time {
    type: string
    sql: ${TABLE}.message_start_time ;;
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

  dimension: opt_out_time {
    type: string
    sql: ${TABLE}.opt_out_time ;;
  }

  dimension_group: opt_out_timestemp {
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

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [creative_name, massage_name]
  }



##### sms type masures

measure: total_unique_phones{
  type: count_distinct
  sql: ${phone} ;;
  value_format: "#,##0"
  group_label: "SMS Measures"
}

  measure: total_join {
    type: count_distinct
    sql: case when ${type} = 'join' then ${phone} else null end ;;
    value_format: "#,##0"
    group_label: "SMS Measures"
  }

  measure: total_click {
    type: count_distinct
    sql: case when ${type} = 'click' then ${phone} else null end ;;
    value_format: "#,##0"
    group_label: "SMS Measures"
  }

  measure: total_impression {
    type: count_distinct
    sql: case when ${type} = 'impression' then ${phone} else null end ;;
    value_format: "#,##0"
    group_label: "SMS Measures"
  }


  measure: total_message_link_click {
    type: count_distinct
    sql: case when ${type} = 'message_link_click' then ${phone} else null end ;;
    value_format: "#,##0"
    group_label: "SMS Measures"
  }


  measure: total_message_receipt {
    type: count_distinct
    sql: case when ${type} = 'message_receipt' then ${phone} else null end ;;
    value_format: "#,##0"
    group_label: "SMS Measures"
  }

  measure: total_purchase {
    type: count_distinct
    sql: case when ${type} = 'purchase' then ${phone} else null end ;;
    value_format: "#,##0"
    group_label: "SMS Measures"
  }

  measure: total_email_save {
    type: count_distinct
    sql: case when ${type} = 'email_save' then ${phone} else null end ;;
    value_format: "#,##0"
    group_label: "SMS Measures"
  }



}
