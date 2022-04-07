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

  dimension: phone_string {
    type: string
    sql: ${TABLE}.phone_string ;;
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

  measure: total_uniqe_phones{
    type: count_distinct
    sql: ${phone} ;;
  }


  measure: total_uniqe_phones_string{
    type: count_distinct
    sql: ${phone_string} ;;
  }


}
