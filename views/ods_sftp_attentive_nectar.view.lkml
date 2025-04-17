view: ods_sftp_attentive_nectar {
  sql_table_name: `omega-post-184817.crm.ods_sftp_attentive_nectar` ;;

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
  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }
  dimension: join_source {
    type: string
    sql: ${TABLE}.join_source ;;
  }
  dimension: message_id {
    type: string
    sql: ${TABLE}.message_id ;;
  }
  dimension: message_link_target {
    type: string
    sql: ${TABLE}.message_link_target ;;
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
  dimension: phone {
    type: number
    sql: ${TABLE}.phone ;;
    value_format: "###########"

  }
  dimension: raw_external_id {
    type: string
    sql: ${TABLE}.raw_external_id ;;
  }
  dimension: subscription_type {
    type: string
    sql: ${TABLE}.subscription_type ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
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
}
