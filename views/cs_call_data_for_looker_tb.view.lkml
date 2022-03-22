view: cs_call_data_for_looker_tb {
  sql_table_name: `omega-post-184817.Keshet.CS_call_data_for_looker_tb`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: call_to_visit_ratio {
    type: number
    sql: ${TABLE}.call_to_visit_ratio ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: inbound_calls {
    type: number
    sql: ${TABLE}.Inbound_calls ;;
  }

  dimension: nanobar_call_to_visit_ratio {
    type: number
    sql: ${TABLE}.nanobar_call_to_visit_ratio ;;
  }

  dimension: nanobar_calls {
    type: number
    sql: ${TABLE}.nanobar_calls ;;
  }

  dimension: nanobar_calls_out_of_calls_ratio {
    type: number
    sql: ${TABLE}.nanobar_calls_out_of_calls_ratio ;;
  }

  dimension: site_visit {
    type: number
    sql: ${TABLE}.site_visit ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_inbound_Calls{
  type: sum
  sql: ${inbound_calls} ;;
  }

  measure: total_inbound_nano_bar_Calls{
    type: sum
    sql: ${nanobar_calls} ;;
  }

  measure: total_site_visits{
    type: sum
    sql: ${site_visit} ;;
  }

  measure: call_to_visit_ratio_mesure{
    sql: (${total_inbound_Calls}/${total_site_visits} ;;
  }

  measure: nanobar_call_to_visit_ratio_mesure{
    sql: (${total_inbound_nano_bar_Calls}/${total_site_visits} ;;
  }

  measure: nanobar_call_to_all_calls_ratio_mesure{
    sql: (${total_inbound_nano_bar_Calls}/${total_inbound_Calls} ;;
  }





}
