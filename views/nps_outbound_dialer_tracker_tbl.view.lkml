view: nps_outbound_dialer_tracker_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.nps_outbound_dialer_tracker_tbl` ;;

  dimension_group: alert_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.alert_created ;;
  }
  dimension: ani {
    type: string
    sql: ${TABLE}.ani ;;
  }
  dimension: ani_nps_number_flag {
    type: yesno
    sql: ${TABLE}.ani_nps_number_flag ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: correspondencetype {
    type: string
    sql: ${TABLE}.correspondencetype ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created ;;
  }
  dimension_group: creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.creation_time ;;
  }
  dimension: customer_phone {
    type: string
    sql: ${TABLE}.customerPhone ;;
  }
  dimension: customer_segment {
    type: string
    sql: ${TABLE}.customerSegment ;;
  }
  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: disposition_name {
    type: string
    sql: ${TABLE}.disposition_name ;;
  }
  dimension: dnis {
    type: string
    sql: ${TABLE}.dnis ;;
  }
  dimension: dnis_nps_number_flag {
    type: yesno
    sql: ${TABLE}.dnis_nps_number_flag ;;
  }
  dimension: email_address {
    type: string
    sql: ${TABLE}.email_address ;;
  }
  dimension: interactions_type {
    type: string
    sql: ${TABLE}.Interactions_type ;;
  }
  dimension: is_answered_call {
    type: string
    sql: ${TABLE}.is_answered_call ;;
  }
  dimension_group: last_activity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_activity_at ;;
  }
  dimension: metadata {
    type: string
    sql: ${TABLE}.metadata ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: providersessionid {
    type: string
    sql: ${TABLE}.providersessionid ;;
  }
  dimension: relevent_nps_call {
    type: yesno
    sql: ${TABLE}.relevent_NPS_call ;;
  }
  dimension: resolve_reason {
    type: string
    sql: ${TABLE}.resolveReason ;;
  }
  dimension: short_id_before {
    type: string
    sql: ${TABLE}.short_id_before ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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
  measure: count {
    type: count
    drill_fields: [type_name, campaign_name, disposition_name]
  }


  measure: total_interactions{
    type: count_distinct
    sql: ${providersessionid} ;;
 }

  measure: total_outbound_calls {
    type: count_distinct
    sql: case when correspondencetype = "phone-call" then ${providersessionid} else null end ;;
  }


  measure: total_outbound_to_nps_number_calls {
    type: count_distinct
    sql: CASE WHEN ${TABLE}.correspondencetype = 'phone-call'
    AND ${TABLE}.relevent_NPS_call = 'yes'
    THEN ${providersessionid}
    ELSE NULL ENd;;
  }

  measure: total_outbound_to_nps_number_calls_answered_call {
    type: count_distinct
    sql: case when (correspondencetype = "phone-call" and relevent_NPS_call = "yes" and is_answered_call = "yes")  then ${providersessionid} else null end ;;
  }


}
