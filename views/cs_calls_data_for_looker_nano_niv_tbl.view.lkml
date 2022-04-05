view: cs_calls_data_for_looker_nano_niv_tbl {
  sql_table_name: `omega-post-184817.Keshet.CS_calls_data_for_looker_nano_niv_tbl`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
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

  dimension: nano_bar_all_skills {
    type: number
    sql: ${TABLE}.nano_bar_all_skills ;;
  }

  dimension: nano_bar_inbound_calls {
    type: number
    sql: ${TABLE}.nano_bar_Inbound_calls ;;
  }

  dimension: nav_bar_all_skills {
    type: number
    sql: ${TABLE}.nav_bar_all_skills ;;
  }

  dimension: nav_bar_inbound_calls {
    type: number
    sql: ${TABLE}.nav_bar_Inbound_calls ;;
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

  measure: total_nano_bar_all_calls{
    type: sum
    sql: ${nano_bar_all_skills} ;;
  }

  measure: total_nano_bar_only_inbound_Calls{
    type: sum
    sql: ${nano_bar_inbound_calls} ;;
  }



  measure: total_nav_bar_all_calls{
    type: sum
    sql: ${nav_bar_all_skills} ;;
  }

  measure: total_nav_bar_only_inbound_Calls{
    type: sum
    sql: ${nav_bar_inbound_calls} ;;
  }





  measure: total_site_visits{
    type: sum
    sql: ${site_visit} ;;
  }

  measure: call_to_visit_ratio_mesure{
    sql: (${total_inbound_Calls}/${total_site_visits} ;;
  }

  measure: nanobar_all_call_to_visit_ratio_mesure{
    sql: (${total_nano_bar_all_calls}/${total_site_visits} ;;
  }

  measure: nanobar_only_inbound_call_to_visit_ratio_mesure{
    sql: (${total_nano_bar_only_inbound_Calls}/${total_site_visits} ;;
  }

  measure: nanobar_all_call_to_all_calls_ratio_mesure{
    sql: (${total_nano_bar_all_calls}/${total_inbound_Calls} ;;
  }

  measure: nanobar_only_inbound_call_to_all_calls_ratio_mesure{
    sql: (${total_nano_bar_only_inbound_Calls}/${total_inbound_Calls} ;;
  }

 ##@

  measure: navbar_all_call_to_visit_ratio_mesure{
    sql: (${total_nav_bar_all_calls}/${total_site_visits} ;;
  }

  measure: navbar_only_inbound_call_to_visit_ratio_mesure{
    sql: (${total_nav_bar_only_inbound_Calls}/${total_site_visits} ;;
  }

  measure: navbar_all_call_to_all_calls_ratio_mesure{
    sql: (${total_nav_bar_all_calls}/${total_inbound_Calls} ;;
  }

  measure: navbar_only_inbound_call_to_all_calls_ratio_mesure{
    sql: (${total_nav_bar_only_inbound_Calls}/${total_inbound_Calls} ;;
  }



}
