view: cartlink_by_agent_count_for_looker_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.Cartlink_by_agent_count_for_looker_tbl`
    ;;

  dimension: created_carts {
    type: number
    sql: ${TABLE}.created_carts ;;
  }

  dimension_group: creation {
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
    sql: ${TABLE}.creation_date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: orders_not_final {
    type: number
    sql: ${TABLE}.orders_not_final ;;
  }

  dimension: orders_with_status {
    type: number
    sql: ${TABLE}.orders_with_status ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
