view: customers_retention_tbl {
  sql_table_name: retention.customers_retention_tbl ;;
  view_label: "Retention - Customers"

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: gross_sales {
    type: number
    sql: ${TABLE}.gross_sales ;;
    hidden: yes
  }

  dimension: orders {
    type: number
    sql: ${TABLE}.orders ;;
    hidden: yes
  }

  dimension: days_from_first_order {
    type: number
    sql: ${TABLE}.days_from_first_order ;;
  }

  dimension: days_from_second_order {
    type: number
    sql: ${TABLE}.days_from_second_order ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension_group: first_order {
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
    sql: CAST(${TABLE}.first_order_date AS TIMESTAMP) ;;
  }

  dimension: first_order_gifts_included_included {
    type: string
    sql: ${TABLE}.first_order_gifts_included_included ;;
  }

  dimension: first_order_gross_sales {
    type: number
    sql: ${TABLE}.first_order_gross_sales ;;
  }

  dimension: first_order_id {
    type: string
    sql: ${TABLE}.first_order_id ;;
  }

  dimension: first_order_paid_items_included {
    type: string
    sql: ${TABLE}.first_order_paid_items_included ;;
    drill_fields: [first_order_gifts_included_included]
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: is_repeat_user {
    type: yesno
    sql: ${TABLE}.is_repeat_user ;;
  }

  dimension_group: second_order {
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
    sql: CAST(${TABLE}.second_order_date AS TIMESTAMP) ;;
  }

  dimension: second_order_gifts_included {
    type: string
    sql: ${TABLE}.second_order_gifts_included ;;
  }

  dimension: second_order_gross_sales {
    type: number
    sql: ${TABLE}.second_order_gross_sales ;;
  }

  dimension: second_order_id {
    type: string
    sql: ${TABLE}.second_order_id ;;
  }

  dimension: second_order_paid_items_included {
    type: string
    sql: ${TABLE}.second_order_paid_items_included ;;
    drill_fields: [second_order_gifts_included]
  }

  dimension_group: third_order {
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
    sql: CAST(${TABLE}.third_order_date AS TIMESTAMP) ;;
  }

  dimension: third_order_gifts_included {
    type: string
    sql: ${TABLE}.third_order_gifts_included ;;
  }

  dimension: third_order_gross_sales {
    type: number
    sql: ${TABLE}.third_order_gross_sales ;;
  }

  dimension: third_order_id {
    type: string
    sql: ${TABLE}.third_order_id ;;
  }

  dimension: third_order_paid_items_included {
    type: string
    sql: ${TABLE}.third_order_paid_items_included ;;
    drill_fields: [third_order_gifts_included]
  }

  measure: count {
    type: count
    drill_fields: []
  }

  # Other Metrics

  measure: total_gross_sales {
    type: sum
    sql: ${gross_sales} ;;
    value_format: "$#,##0"
  }

  measure: total_orders {
    type: sum
    sql: ${orders} ;;
    value_format: "#,##0"
  }

  measure: total_customers {
    type: count_distinct
    sql: ${email} ;;
    value_format: "#,##0"
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

  measure: avg_days_from_first_order {
    type:  average
    sql: ${days_from_first_order} ;;
    value_format: "#,##0"
  }

  measure: avg_days_from_second_order {
    type:  average
    sql: ${days_from_second_order} ;;
    value_format: "#,##0"
  }


}
