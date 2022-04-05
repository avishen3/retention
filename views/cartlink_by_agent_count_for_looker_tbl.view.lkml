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

# date granularity - Order Date #

  parameter: Date_Granularity_Created_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }

  dimension: Created_Date {
    label_from_parameter: Date_Granularity_Created_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_Created_date %} = 'Day' THEN cast(${creation_date} as string)
             WHEN {% parameter Date_Granularity_Created_date %} = 'Week' THEN cast(${creation_week} as string)
             WHEN {% parameter Date_Granularity_Created_date %} = 'Month' THEN cast(${creation_month} as string)
             WHEN {% parameter Date_Granularity_Created_date %} = 'Quarter' THEN cast(${creation_quarter} as string)
             WHEN {% parameter Date_Granularity_Created_date %} = 'Year' THEN cast(${creation_year} as string)
            ELSE null
            END ;;
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
