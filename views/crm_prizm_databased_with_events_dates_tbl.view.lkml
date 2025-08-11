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

  dimension: advantage_target_narrow_band_income_sort_order {
    type: number
    hidden: yes
    sql:
    CASE
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = 'Less than $14,999' THEN 1
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$15,000 - $19,999' THEN 2
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$20,000 - $24,999' THEN 3
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$25,000 - $29,999' THEN 4
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$30,000 - $34,999' THEN 5
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$35,000 - $39,999' THEN 6
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$40,000 - $44,999' THEN 7
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$45,000 - $49,999' THEN 8
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$50,000 - $54,999' THEN 9
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$55,000 - $59,999' THEN 10
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$60,000 - $64,999' THEN 11
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$65,000 - $69,999' THEN 12
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$70,000 - $74,999' THEN 13
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$75,000 - $79,999' THEN 14
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$80,000 - $84,999' THEN 15
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$85,000 - $89,999' THEN 16
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$90,000 - $94,999' THEN 17
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$95,000 - $99,999' THEN 18
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$100,000 - $104,999' THEN 19
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$105,000 - $109,999' THEN 20
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$110,000 - $114,999' THEN 21
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$115,000 - $119,999' THEN 22
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$120,000 - $124,999' THEN 23
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$125,000 - $129,999' THEN 24
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$130,000 - $134,999' THEN 25
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$135,000 - $139,999' THEN 26
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$140,000 - $144,999' THEN 27
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$145,000 - $149,999' THEN 28
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$150,000 - $159,999' THEN 29
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$160,000 - $169,999' THEN 30
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$170,000 - $174,999' THEN 31
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$175,000 - $189,999' THEN 32
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$190,000 - $199,999' THEN 33
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$200,000 - $249,999' THEN 34
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$250,000 - $499,999' THEN 35
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = '$500,000 or More' THEN 36
      WHEN ${TABLE}.Advantage_Target_Narrow_Band_Income = 'Unknown Code' THEN 37
      ELSE 99 -- Places NULLs or any other values at the very end
    END ;;
  }



  dimension: advantage_target_narrow_band_income {
    type: string
    sql: ${TABLE}.Advantage_Target_Narrow_Band_Income ;;
    order_by_field: advantage_target_narrow_band_income_sort_order

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
    value_format: "$#,##0"

  }
}


##value_format: "00.00%"
