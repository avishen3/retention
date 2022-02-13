view: upsell_by_agents_tbl {
  sql_table_name: `omega-post-184817.Keshet.upsell_by_agents_tbl`
    ;;

  dimension: exchanged_agent_full_name {
    type: string
    sql: ${TABLE}.exchanged_agent_full_name ;;
  }

  dimension: num_of {
    type: number
    sql: ${TABLE}.num_of ;;
  }

  dimension_group: updtated_day {
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
    sql: ${TABLE}.updtated_day ;;
  }

  dimension: upsell {
    type: string
    sql: ${TABLE}.upsell ;;
  }

  measure: count {
    type: count
    drill_fields: [exchanged_agent_full_name]
  }
}
