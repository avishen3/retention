view: daily_cs_agents_cartlink_remote_cart_tb {
  sql_table_name: `omega-post-184817.CS_NEW.daily_cs_agents_cartlink_remote_cart_tb`
    ;;

  dimension: agent_full_name {
    type: string
    sql: ${TABLE}.agent_full_name ;;
  }

  dimension: agent_name {
    type: string
    sql: ${TABLE}.agent_name ;;
  }

  dimension: all_carts {
    type: number
    sql: ${TABLE}.all_carts ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: created_to_order_ratio {
    type: number
    sql: ${TABLE}.created_to_order_ratio ;;
  }

  dimension: num_of_carts_created_not_ordered {
    type: number
    sql: ${TABLE}.num_of_carts_created_not_ordered ;;
  }

  dimension_group: order_created {
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
    sql: ${TABLE}.order_created_date ;;
  }

  dimension: order_source_channel_fix {
    type: string
    sql: ${TABLE}.order_source_channel_fix ;;
  }

  dimension: ordered_carts {
    type: number
    sql: ${TABLE}.ordered_carts ;;
  }

  measure: count {
    type: count
    drill_fields: [agent_full_name, agent_name]
  }

  ### Date_granularty

# date granularity - Order Date #

  parameter: Date_Granularity_order_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }

  dimension: Order_Date {
    label_from_parameter: Date_Granularity_order_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_order_date %} = 'Day' THEN cast(${order_created_date} as string)
             WHEN {% parameter Date_Granularity_order_date %} = 'Week' THEN cast(${order_created_week} as string)
             WHEN {% parameter Date_Granularity_order_date %} = 'Month' THEN cast(${order_created_month} as string)
             WHEN {% parameter Date_Granularity_order_date %} = 'Quarter' THEN cast(${order_created_quarter} as string)
             WHEN {% parameter Date_Granularity_order_date %} = 'Year' THEN cast(${order_created_year} as string)
            ELSE null
            END ;;
  }

  ## NEASURES

    measure: total_order_palaced {
      type: sum
      sql: ${ordered_carts} ;;
      value_format: "####"
    }

  measure: total_link_created_no_order {
    type: sum
    sql: ${num_of_carts_created_not_ordered};;
    value_format: "####"
  }

  measure: total_link_created {
    type: sum
    sql: ${all_carts} ;;
    value_format: "####"
  }

}
