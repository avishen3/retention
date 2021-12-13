view: looker_klaviyo_try_1 {
  sql_table_name: `omega-post-184817.Keshet.looker_klaviyo_try_1`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_subject {
    type: string
    sql: ${TABLE}.email_subject ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}.event_date ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: flow {
    type: string
    sql: ${TABLE}.flow ;;
  }

  dimension: flow_id {
    type: string
    sql: ${TABLE}.flow_Id ;;
  }

  dimension: flow_id_1 {
    type: string
    sql: ${TABLE}.flow_id_1 ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: list {
    type: string
    sql: ${TABLE}.list ;;
  }

  dimension_group: person_created {
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
    sql: ${TABLE}.person_created ;;
  }

  dimension: promo {
    type: string
    sql: ${TABLE}.promo ;;
  }

  dimension: unique_email_id {
    type: string
    sql: ${TABLE}.unique_email_id ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name, event_name]
  }
}
