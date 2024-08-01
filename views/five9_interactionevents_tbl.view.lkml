view: five9_interactionevents_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.five9_interactionevents_tbl` ;;

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }
  dimension_group: event_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.event_timestamp ;;
  }
  dimension: header {
    type: string
    sql: ${TABLE}.header ;;
  }
  dimension: payload {
    type: string
    sql: ${TABLE}.payload ;;
  }
  measure: count {
    type: count
  }
}
