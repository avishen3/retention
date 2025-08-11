view: crm_prizm_databased_with_events_dates_tbl {
  sql_table_name: `omega-post-184817.Keshet.crm_prizm_databased_with_events_dates_tbl` ;;

  dimension: advantage_household_age {
    type: string
    sql: ${TABLE}.Advantage_Household_Age ;;
  }
  dimension: advantage_household_age_indicator {
    type: string
    sql: ${TABLE}.Advantage_Household_Age_Indicator ;;
  }
  dimension: advantage_target_narrow_band_income {
    type: string
    sql: ${TABLE}.Advantage_Target_Narrow_Band_Income ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }
  dimension: event_days_title {
    type: string
    sql: ${TABLE}.event_days_title ;;
  }
  dimension: h_37100_1 {
    type: number
    sql: ${TABLE}.H_37100_1 ;;
  }
  dimension: h_37100_2 {
    type: string
    sql: ${TABLE}.H_37100_2 ;;
  }
  dimension: h_37109_1 {
    type: string
    sql: ${TABLE}.H_37109_1 ;;
  }
  dimension: h_37109_2 {
    type: string
    sql: ${TABLE}.H_37109_2 ;;
  }


  dimension: income_group_sort_order {
    type: number
    hidden: yes  # Hides this field from users in the Explore UI
    sql:
    CASE
      WHEN ${TABLE}.income_group_5 = 'Low Income' THEN 1
      WHEN ${TABLE}.income_group_5 = 'Lower-Middle Income' THEN 2
      WHEN ${TABLE}.income_group_5 = 'Middle Income' THEN 3
      WHEN ${TABLE}.income_group_5 = 'Upper-Middle Income' THEN 4
      WHEN ${TABLE}.income_group_5 = 'High Income' THEN 5
      ELSE 6
    END ;;
  }




  dimension: income_group_5 {
    type: string
    sql: ${TABLE}.Income_Group_5 ;;
    order_by_field: income_group_sort_order

  }
  dimension: lifestage_segments_target_index {
    type: string
    sql: ${TABLE}.Lifestage_Segments_Target_Index ;;
  }
  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_date ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: prizm_premier_code {
    type: string
    sql: ${TABLE}.PRIZM_Premier_Code ;;
  }
  dimension: prizm_premier_coding_flag {
    type: string
    sql: ${TABLE}.PRIZM_Premier_Coding_Flag ;;
  }
  dimension: pzp_code {
    type: number
    sql: ${TABLE}.PZP_CODE ;;
  }
  dimension: pzp_flag {
    type: string
    sql: ${TABLE}.PZP_FLAG ;;
  }
  dimension: shipping_address {
    type: string
    sql: ${TABLE}.shipping_address ;;
  }
  dimension: shipping_city {
    type: string
    sql: ${TABLE}.shipping_city ;;
  }
  dimension: shipping_first_name {
    type: string
    sql: ${TABLE}.shipping_first_name ;;
  }
  dimension: shipping_last_name {
    type: string
    sql: ${TABLE}.shipping_last_name ;;
  }
  dimension: shipping_state {
    type: string
    sql: ${TABLE}.shipping_state ;;
  }
  dimension: shipping_zip {
    type: string
    sql: ${TABLE}.shipping_zip ;;
  }
  dimension: short_id {
    type: number
    sql: ${TABLE}.short_id ;;
  }
  measure: count {
    type: count
    drill_fields: [shipping_first_name, shipping_last_name]
  }


  measure: total_orders {
    type: count_distinct
    sql: ${short_id} ;;
    value_format: "#,##0"

  }

  measure: total_price {
    type: sum
    sql: ${price} ;;
    value_format: "$#,##0"

  }


  measure: AOV {
    type: number
    sql: ${total_price}/${total_orders} ;;
    value_format: "00.00%"
  }
}
