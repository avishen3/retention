view: first_seconed_buy_brand_database_for_looker_tbl {
  sql_table_name: `omega-post-184817.Keshet.first_seconed_buy_brand_database_for_looker_tbl`
    ;;

  dimension: all_cart {
    type: string
    sql: ${TABLE}.all_cart ;;
  }

  dimension: all_cart_num_2 {
    type: string
    sql: ${TABLE}.all_cart_num_2 ;;
  }

  dimension: billing_provider {
    type: string
    sql: ${TABLE}.billing_provider ;;
  }

  dimension: billing_provider_num_2 {
    type: string
    sql: ${TABLE}.billing_provider_num_2 ;;
  }

  dimension: days_diff {
    type: number
    sql: ${TABLE}.days_diff ;;
  }

  dimension: f_orders {
    type: string
    sql: ${TABLE}.F_orders ;;
  }

  dimension: f_orders_num_2 {
    type: string
    sql: ${TABLE}.F_orders_num_2 ;;
  }

  dimension: has_seconed_order {
    type: number
    sql: ${TABLE}.has_seconed_order ;;
  }

  dimension: is_mattress_buys {
    type: string
    sql: ${TABLE}.is_mattress_buys ;;
  }

  dimension: is_contain_mattress {
    type: string
    sql:
    CASE
      WHEN ${is_mattress_buys} = "one_matt_two_matt" = THEN "Both sales contain a mattress"
      WHEN ${is_mattress_buys} = "one_matt_two_no" = THEN "Only the first purchase contains a mattress"
      WHEN ${is_mattress_buys} = "one_no_two_matt" = THEN "Only the second purchase contains a mattress"
      WHEN ${is_mattress_buys} = "no_matt_at_all" = THEN "Neither purchases contain a mattress"
      ELSE null
      END
    ;;
  }


  dimension: item_1 {
    type: string
    sql: ${TABLE}.item_1
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_10 {
    type: string
    sql: ${TABLE}.item_10
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_10_order_num_2 {
    type: string
    sql: ${TABLE}.item_10_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_11 {
    type: string
    sql: ${TABLE}.item_11
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_11_order_num_2 {
    type: string
    sql: ${TABLE}.item_11_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_12 {
    type: string
    sql: ${TABLE}.item_12
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_12_order_num_2 {
    type: string
    sql: ${TABLE}.item_12_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_13 {
    type: string
    sql: ${TABLE}.item_13
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_13_order_num_2 {
    type: string
    sql: ${TABLE}.item_13_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_14 {
    type: string
    sql: ${TABLE}.item_14
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_14_order_num_2 {
    type: string
    sql: ${TABLE}.item_14_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_15 {
    type: string
    sql: ${TABLE}.item_15
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_15_order_num_2 {
    type: string
    sql: ${TABLE}.item_15_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_16 {
    type: string
    sql: ${TABLE}.item_16
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_16_order_num_2 {
    type: string
    sql: ${TABLE}.item_16_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_17 {
    type: string
    sql: ${TABLE}.item_17
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_17_order_num_2 {
    type: string
    sql: ${TABLE}.item_17_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_18 {
    type: string
    sql: ${TABLE}.item_18
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_19 {
    type: string
    sql: ${TABLE}.item_19
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_1_order_num_2 {
    type: string
    sql: ${TABLE}.item_1_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_2 {
    type: string
    sql: ${TABLE}.item_2
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_20 {
    type: string
    sql: ${TABLE}.item_20
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_21 {
    type: string
    sql: ${TABLE}.item_21
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_22 {
    type: string
    sql: ${TABLE}.item_22
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_23 {
    type: string
    sql: ${TABLE}.item_23
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_24 {
    type: string
    sql: ${TABLE}.item_24
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_25 {
    type: string
    sql: ${TABLE}.item_25
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_26 {
    type: string
    sql: ${TABLE}.item_26
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_27 {
    type: string
    sql: ${TABLE}.item_27
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_28 {
    type: string
    sql: ${TABLE}.item_28
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_29 {
    type: string
    sql: ${TABLE}.item_29
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_2_order_num_2 {
    type: string
    sql: ${TABLE}.item_2_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_3 {
    type: string
    sql: ${TABLE}.item_3
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_30 {
    type: string
    sql: ${TABLE}.item_30
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_31 {
    type: string
    sql: ${TABLE}.item_31
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_32 {
    type: string
    sql: ${TABLE}.item_32
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_33 {
    type: string
    sql: ${TABLE}.item_33
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_34 {
    type: string
    sql: ${TABLE}.item_34
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_35 {
    type: string
    sql: ${TABLE}.item_35
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_36 {
    type: string
    sql: ${TABLE}.item_36
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_37 {
    type: string
    sql: ${TABLE}.item_37
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_38 {
    type: string
    sql: ${TABLE}.item_38
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_3_order_num_2 {
    type: string
    sql: ${TABLE}.item_3_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_4 {
    type: string
    sql: ${TABLE}.item_4
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_4_order_num_2 {
    type: string
    sql: ${TABLE}.item_4_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_5 {
    type: string
    sql: ${TABLE}.item_5
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_5_order_num_2 {
    type: string
    sql: ${TABLE}.item_5_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_6 {
    type: string
    sql: ${TABLE}.item_6
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_6_order_num_2 {
    type: string
    sql: ${TABLE}.item_6_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_7 {
    type: string
    sql: ${TABLE}.item_7
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_7_order_num_2 {
    type: string
    sql: ${TABLE}.item_7_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_8 {
    type: string
    sql: ${TABLE}.item_8
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_8_order_num_2 {
    type: string
    sql: ${TABLE}.item_8_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: item_9 {
    type: string
    sql: ${TABLE}.item_9
    group_label: "First Buy Items"
    ;;
  }

  dimension: item_9_order_num_2 {
    type: string
    sql: ${TABLE}.item_9_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: mattres_buy_order_num_2 {
    type: string
    sql: ${TABLE}.mattres_buy_order_num_2
    group_label: "Seconed Buy Items"
    ;;
  }

  dimension: mattress_buy {
    type: string
    sql: ${TABLE}.mattress_buy ;;
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
    datatype: datetime
    sql: ${TABLE}.order_created ;;
  }

  dimension_group: order_created_order_num_2 {
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
    datatype: datetime
    sql: ${TABLE}.order_created_order_num_2 ;;
  }

  dimension: real_email {
    type: string
    sql: ${TABLE}.real_email ;;
  }

  dimension: res_brand {
    type: string
    sql: ${TABLE}.res_brand ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: short_id_num_2 {
    type: string
    sql: ${TABLE}.short_id_num_2 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  #### measure to pass to real dash

  measure: total_first_order {
    type: count_distinct
    sql: ${f_orders} ;;
  }

  measure: total_seconed_order {
    type: count_distinct
    sql: ${f_orders_num_2} ;;
  }



}
