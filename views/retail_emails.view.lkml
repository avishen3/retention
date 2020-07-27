view: retail_emails {
  sql_table_name: retention.retail_emails ;;

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }

  dimension: customer_firstname {
    type: string
    sql: ${TABLE}.customer_firstname ;;
  }

  dimension: customer_lastname {
    type: string
    sql: ${TABLE}.customer_lastname ;;
  }

  dimension: days_from_first_ga_tran_to_retail_order {
    type: number
    sql: ${TABLE}.days_from_first_ga_tran_to_retail_order ;;
  }

  dimension: days_from_first_visit_to_retail_order {
    type: number
    sql: ${TABLE}.days_from_first_visit_to_retail_order ;;
  }

  dimension_group: first_ga_tran {
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
    sql: ${TABLE}.first_ga_tran_date ;;
  }

  dimension: first_ga_tran_id {
    type: string
    sql: ${TABLE}.first_ga_tran_id ;;
  }

  dimension_group: first_retail_order {
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
    sql: ${TABLE}.first_retail_order_date ;;
  }

  dimension: first_tactic {
    label: "First Visit Tactic"
    type: string
    sql: ${TABLE}.first_tactic ;;
  }

  dimension_group: first_visit {
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
    sql: ${TABLE}.first_visit_date ;;
  }

  dimension: first_visit_marketing_platform {
    type: string
    sql: ${TABLE}.first_visit_marketing_platform ;;
  }

  dimension: first_visit_traffic_source {
    type: string
    sql: ${TABLE}.first_visit_traffic_source ;;
  }

  dimension: has_also_purchaced_on_site {
    type: yesno
    sql: ${TABLE}.has_also_purchaced_on_site ;;
  }

  dimension: has_been_on_site {
    type: yesno
    sql: ${TABLE}.has_been_on_site ;;
  }

  dimension: is_first_visit_before_retail_order {
    type: yesno
    sql: ${TABLE}.is_first_visit_before_retail_order ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
    hidden: yes
  }

  dimension: retailer {
    type: string
    sql: ${TABLE}.retailer ;;
  }

  dimension: store_address {
    type: string
    sql: ${TABLE}.store_address ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }

  dimension: store_zip {
    type: string
    sql: ${TABLE}.store_ZIP ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_lastname, customer_firstname, store_name]
  }

  measure: total_users {
    type:  count_distinct
    sql: ${customer_email} ;;
    value_format: "#,##0"
  }

  measure: total_online_users {
    type:  count_distinct
    sql: case when ${has_been_on_site} = true then ${customer_email} else null end ;;
    value_format: "#,##0"
  }

  measure: perc_online_users {
    type:  number
    sql: ${total_online_users} / nullif(${total_users}, 0) ;;
    value_format: "0.00%"
  }

  measure: total_price {
    description: "Taxes included"
    type: sum
    sql: ${price} ;;
    value_format: "$#,##0"
  }

  dimension: first_visit_platform_tactic {
    label: "First Visit Platform + Tactic"
    sql: concat(${first_visit_marketing_platform}, ' - ', ${first_tactic})  ;;
  }

  dimension: grouped_days_from_first_visit_to_retail_order {
    type: tier
    tiers: [-10,0,1,2,3,4,5,6,7,8,9,10,20,30,40,50,60,70,80,90,100]
    style: integer
    sql: ${days_from_first_visit_to_retail_order} ;;
  }

}
