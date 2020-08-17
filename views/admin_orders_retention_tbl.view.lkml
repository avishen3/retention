view: admin_orders_retention_tbl {
  sql_table_name: retention.admin_orders_retention_tbl ;;
  view_label: "Retention - Orders"

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: days_from_previous_order {
    type: number
    sql: ${TABLE}.days_from_previous_order ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: gift_blankets {
    type: number
    sql: ${TABLE}.gift_blankets ;;
    hidden: yes
  }

  dimension: gift_mps {
    type: number
    sql: ${TABLE}.gift_MPs ;;
    hidden: yes
  }

  dimension: gift_pillows {
    type: number
    sql: ${TABLE}.gift_pillows ;;
    hidden: yes
  }

  dimension: gift_sheets {
    type: number
    sql: ${TABLE}.gift_sheets ;;
    hidden: yes
  }

  dimension: other_gifts {
    type: number
    sql: ${TABLE}.other_gifts ;;
    hidden: yes
  }

  dimension: all_gifts {
    type: number
    sql: ${TABLE}.all_gifts ;;
    hidden: yes
  }


  dimension: gross_sales {
    type: number
    sql: ${TABLE}.gross_sales ;;
    hidden: yes
  }

  dimension: is_repeat_user {
    type: yesno
    sql: ${TABLE}.is_repeat_user ;;
  }

  dimension: is_retention {
    type: yesno
    sql: ${TABLE}.is_retention ;;
  }

  dimension_group: order_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.order_created AS TIMESTAMP) ;;
  }

  dimension: order_index {
    type: number
    sql: ${TABLE}.order_index ;;
  }

  dimension: paid_bedframes {
    type: number
    sql: ${TABLE}.paid_bedframes ;;
    hidden: yes
  }

  dimension: paid_blankets {
    type: number
    sql: ${TABLE}.paid_blankets ;;
    hidden: yes
  }

  dimension: paid_furniture {
    type: number
    sql: ${TABLE}.paid_furniture ;;
    hidden: yes
  }

  dimension: paid_mattresses {
    type: number
    sql: ${TABLE}.paid_mattresses ;;
    hidden: yes
  }

  dimension: paid_mps {
    type: number
    sql: ${TABLE}.paid_MPs ;;
    hidden: yes
  }

  dimension: paid_pillows {
    type: number
    sql: ${TABLE}.paid_pillows ;;
    hidden: yes
  }

  dimension: paid_rugs {
    type: number
    sql: ${TABLE}.paid_rugs ;;
    hidden: yes
  }

  dimension: paid_sheets {
    type: number
    sql: ${TABLE}.paid_sheets ;;
    hidden: yes
  }

  dimension: other_paid_items {
    type: number
    sql: ${TABLE}.other_paid_items ;;
    hidden: yes
  }

  dimension: non_mattress_paid_items {
    type: number
    sql: ${TABLE}.non_mattress_paid_items ;;
    hidden: yes
  }

  dimension: all_paid_items {
    type: number
    sql: ${TABLE}.all_paid_items ;;
    hidden: yes
  }

  dimension_group: previous_order_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.previous_order_ts AS TIMESTAMP) ;;
  }

  dimension: short_id {
    label: "Order ID"
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: typeform_reported_income {
    type: string
    sql: ${TABLE}.typeform_reported_income ;;
  }

  dimension: typeform_reported_mattress_budget {
    type: string
    sql: ${TABLE}.typeform_reported_mattress_budget ;;
  }

  dimension: typeform_reported_purchase_budget {
    type: string
    sql: ${TABLE}.typeform_reported_purchase_budget ;;
  }

  dimension: typeform_score {
    type: number
    sql: ${TABLE}.typeform_score ;;
  }

  dimension: yotpo_score {
    type: number
    sql: ${TABLE}.yotpo_score ;;
  }

  dimension: paid_items_included {
    type: string
    sql: ${TABLE}.paid_items_included ;;
    drill_fields: [gifts_included]
  }

  dimension: gifts_included {
    type: string
    sql: ${TABLE}.gifts_included ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  dimension: retention_or_acquisition {
    type: string
    sql: case when ${is_repeat_user} = true then 'Retention' else 'Acquisition' end ;;
  }

  dimension: new_or_repeat_users {
    type: string
    sql: case when ${is_repeat_user} = true then 'Repeat Users' else 'New Users' end ;;
  }


# Date dimensions and parameters

  dimension: not_today {
    type: yesno
    sql: ${order_created_date} < current_date() ;;
  }

  parameter: date_granularity {
    type: string
    allowed_value: {
      label: "Day"
      value: "Day"
    }
    allowed_value: {
      label: "Week"
      value: "Week"
    }
    allowed_value: {
      label: "Month"
      value: "Month"
    }
    allowed_value: {
      label: "Quarter"
      value: "Quarter"
    }
    allowed_value: {
      label: "Year"
      value: "Year"
    }

    allowed_value: {
      label: "None"
      value: "None"
    }

  }

  dimension: date {
    label_from_parameter: date_granularity
    sql:
            CASE
             WHEN {% parameter date_granularity %} = 'Day' THEN cast(${order_created_date} as string)
             WHEN {% parameter date_granularity %} = 'Week' THEN cast(${order_created_week} as string)
             WHEN {% parameter date_granularity %} = 'Month' THEN cast(${order_created_month} as string)
             WHEN {% parameter date_granularity %} = 'Quarter' THEN cast(${order_created_quarter} as string)
             WHEN {% parameter date_granularity %} = 'Year' THEN cast(${order_created_year} as string)
            ELSE null
            END ;;
  }


  dimension:  dow_num {
    type:  string
    sql: EXTRACT(DAYOFWEEK FROM ${order_created_date}) ;;
    hidden: yes
  }


  dimension:  day_of_week {
    label: "Day of Week"
    type:  string
    sql: case
          when ${dow_num} = 1 then 'Sunday'
          when ${dow_num} = 2 then 'Monday'
          when ${dow_num} = 3 then 'Tuesday'
          when ${dow_num} = 4 then 'Wednesday'
          when ${dow_num} = 5 then 'Thursday'
          when ${dow_num} = 6 then 'Friday'
          when ${dow_num} = 7 then 'Saturday'
        end ;;
    order_by_field: dow_num
  }


  # Item measures

  measure: total_paid_bedframes {
    type: sum
    sql: ${paid_bedframes} ;;
    value_format: "#,##0"
    group_label: "Paid Categories"
  }

  measure: total_paid_blankets {
    type: sum
    sql: ${paid_blankets} ;;
    value_format: "#,##0"
    group_label: "Paid Categories"
  }

  measure: total_paid_furniture {
    type: sum
    sql: ${paid_furniture} ;;
    value_format: "#,##0"
    group_label: "Paid Categories"
  }

  measure: total_paid_mattresses {
    type: sum
    sql: ${paid_mattresses} ;;
    value_format: "#,##0"
    group_label: "Paid Categories"
  }

  measure: total_paid_mps {
    label: "Total Paid MPs"
    type: sum
    sql: ${paid_mps} ;;
    value_format: "#,##0"
    group_label: "Paid Categories"
  }

  measure: total_paid_pillows {
    type: sum
    sql: ${paid_pillows} ;;
    value_format: "#,##0"
    group_label: "Paid Categories"
  }

  measure: total_paid_rugs {
    type: sum
    sql: ${paid_rugs} ;;
    value_format: "#,##0"
    group_label: "Paid Categories"
  }

  measure: total_paid_sheets {
    type: sum
    sql: ${paid_sheets} ;;
    value_format: "#,##0"
    group_label: "Paid Categories"
  }

  measure: total_other_paid_items {
    type: sum
    sql: ${other_paid_items} ;;
    value_format: "#,##0"
    group_label: "Paid Categories"
  }

  measure: total_gift_blankets {
    type: sum
    sql: ${gift_blankets} ;;
    value_format: "#,##0"
    group_label: "Gift Categories"
  }

  measure: total_gift_mps {
    label: "Total Gift MPs"
    type: sum
    sql: ${gift_mps} ;;
    value_format: "#,##0"
    group_label: "Gift Categories"
  }

  measure: total_gift_pillows {
    type: sum
    sql: ${gift_pillows} ;;
    value_format: "#,##0"
    group_label: "Gift Categories"
  }

  measure: total_gift_sheets {
    type: sum
    sql: ${gift_sheets} ;;
    value_format: "#,##0"
    group_label: "Gift Categories"
  }

  measure: total_other_gifts {
    type: sum
    sql: ${other_gifts} ;;
    value_format: "#,##0"
    group_label: "Gift Categories"
  }

    # Other measures

  measure: total_gross_sales {
    type: sum
    sql: ${gross_sales} ;;
    value_format: "$#,##0"
  }

  measure: total_retention {
    type: sum
    sql: case when ${is_retention} = true then ${gross_sales} else 0 end ;;
    value_format: "$#,##0"
  }

  measure: total_acquisition {
    type: sum
    sql: case when ${is_retention} = false then ${gross_sales} else 0 end ;;
    value_format: "$#,##0"
  }

  measure: retention_rate {
    description: "revenue from retention / total revenue"
    type: number
    sql: ${total_retention} / nullif(${total_gross_sales}, 0) ;;
    value_format: "0.00%"
  }

  measure: total_orders {
    type: count_distinct
    sql: ${short_id} ;;
    value_format: "#,##0"
  }

  measure: total_repeat_orders {
    type: count_distinct
    sql: case when ${is_retention} = true then ${short_id} else null end ;;
    value_format: "#,##0"
  }

  measure: repeat_order_rate {
    description: "repeat orders / total orders"
    type: number
    sql: ${total_repeat_orders} / nullif(${total_orders}, 0) ;;
    value_format: "0.00%"
  }

  measure: total_customers {
    type: count_distinct
    sql: ${email} ;;
    value_format: "#,##0"
  }

  measure: total_repeat_customers {
    type: count_distinct
    sql: case when ${is_repeat_user} = true then ${email} else null end ;;
    value_format: "#,##0"
  }

  measure: repeat_customer_rate {
    description: "repeat users / total users"
    type: number
    sql: ${total_repeat_customers} / nullif(${total_customers}, 0) ;;
    value_format: "0.00%"
  }

  measure: aov {
    label: "AOV"
    type: number
    sql: ${total_gross_sales} / nullif(${total_orders}, 0) ;;
    value_format: "$#,##0"
  }

  measure: arpu {
    label: "ARPU"
    type: number
    sql: ${total_gross_sales} / nullif(${total_customers}, 0) ;;
    value_format: "$#,##0"
  }

  # Days between orders

  measure: avg_days_from_previous_order {
    type:  average
    sql: ${days_from_previous_order} ;;
    value_format: "#,##0"
  }

  dimension: grouped_days_from_previous_order {
    type: tier
    tiers: [1,51,101,201,301,401,501]
    style: integer
    sql: ${days_from_previous_order} ;;
  }

    # Reviews

  measure: avg_yopto_score {
    type: average
    sql: ${yotpo_score} ;;
    value_format: "0.0"
  }

  measure: avg_typeform_score {
    type: average
    sql: ${typeform_score} ;;
    value_format: "0.0"
  }

}
