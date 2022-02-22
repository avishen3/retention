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
    sql: ${TABLE}.updtated_day;;
  }

  dimension: upsell {
    type: string
    sql: ${TABLE}.upsell ;;
  }

  measure: count {
    type: count
    drill_fields: [exchanged_agent_full_name]
  }


dimension: brand {
  type: string
  sql: ${TABLE}.brand ;;
}


dimension:category {
  type: string
  sql: ${TABLE}.category ;;
  }



  ## measures


    measure: total_upsell {
    type: sum
    sql: ${num_of} ;;
    value_format: "###"
  }




# date granularity - Order Date #

  parameter: Date_Granularity_updtated_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }

  dimension: updtate_Date {
    label_from_parameter: Date_Granularity_updtated_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_updtated_date %} = 'Day' THEN cast(${updtated_day_date} as string)
             WHEN {% parameter Date_Granularity_updtated_date %} = 'Week' THEN cast(${updtated_day_week} as string)
             WHEN {% parameter Date_Granularity_updtated_date %} = 'Month' THEN cast(${updtated_day_month} as string)
             WHEN {% parameter Date_Granularity_updtated_date %} = 'Quarter' THEN cast(${updtated_day_quarter} as string)
             WHEN {% parameter Date_Granularity_updtated_date %} = 'Year' THEN cast(${updtated_day_year} as string)
            ELSE null
            END ;;
  }




}
