view: topper_and_pillow_refund_data_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.topper_and_pillow_refund_data_tbl` ;;

  dimension: agent_email_mattress {
    type: string
    sql: ${TABLE}.agent_email_mattress ;;
  }
  dimension: agent_email_topper {
    type: string
    sql: ${TABLE}.agent_email_topper ;;
  }
  dimension: agent_id_mattress {
    type: string
    sql: ${TABLE}.agent_id_mattress ;;
  }
  dimension: agent_name_mattress {
    type: string
    sql: ${TABLE}.agent_name_mattress ;;
  }
  dimension: agent_name_topper {
    type: string
    sql: ${TABLE}.agent_name_topper ;;
  }
  dimension: agg_days_from_order_to_topper {
    type: string
    sql: ${TABLE}.agg_days_from_order_to_topper ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: days_from_original_order_to_refound {
    type: number
    sql: ${TABLE}.days_from_original_order_to_refound ;;
  }
  dimension: days_from_original_order_to_topper {
    type: number
    sql: ${TABLE}.days_from_original_order_to_topper ;;
  }
  dimension: days_from_topper_order_to_refound {
    type: number
    sql: ${TABLE}.days_from_topper_order_to_refound ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension_group: first_refund_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.first_refund_ts ;;
  }
  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }
  dimension_group: order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created ;;
  }
  dimension_group: order_created_topper {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created_topper ;;
  }
  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }
  dimension: order_id_topper {
    type: string
    sql: ${TABLE}.order_id_topper ;;
  }
  dimension_group: order_updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_updated ;;
  }
  dimension: original_appeasement_item_id {
    type: string
    sql: ${TABLE}.original_appeasement_item_id ;;
  }
  dimension: original_appeasement_order_id {
    type: string
    sql: ${TABLE}.original_appeasement_order_id ;;
  }
  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: product_name_topper {
    type: string
    sql: ${TABLE}.product_name_topper ;;
  }
  dimension: product_size {
    type: string
    sql: ${TABLE}.product_size ;;
  }
  dimension: product_title {
    type: string
    sql: ${TABLE}.product_title ;;
  }
  dimension: product_title_topper {
    type: string
    sql: ${TABLE}.product_title_topper ;;
  }
  dimension: refund_type {
    type: string
    sql: ${TABLE}.refund_type ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }
  dimension: short_id_topper {
    type: string
    sql: ${TABLE}.short_id_topper ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: usage_period {
    type: number
    sql: ${TABLE}.usage_period ;;
  }
  dimension: was_canceled {
    type: yesno
    sql: ${TABLE}.was_canceled ;;
  }
  dimension: was_refunded {
    type: yesno
    sql: ${TABLE}.was_refunded ;;
  }
  dimension: was_returned {
    type: yesno
    sql: ${TABLE}.was_returned ;;
  }
  dimension: whs_name_last_purchase {
    type: string
    sql: ${TABLE}.whs_name_last_purchase ;;
  }
  dimension: whs_title_last_purchase {
    type: string
    sql: ${TABLE}.whs_title_last_purchase ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]
  }

####

  dimension: days_from_topper_order_to_refound_cohort {
    type: string
    sql: case
              when ${days_from_topper_order_to_refound} is null then "a: Not refound"
              when ${days_from_topper_order_to_refound} <=0  then "b: 0: less then 0 days"
              when ${days_from_topper_order_to_refound} =1  then "c: same day"
              when ${days_from_topper_order_to_refound} between 2 and 5 then "d: 2-5"
              when ${days_from_topper_order_to_refound} between 6 and 10 then "e: 6-10"
              when ${days_from_topper_order_to_refound} between 11 and 20 then "f: 11-20"
              when ${days_from_topper_order_to_refound} between 21 and 35 then "g: 21-35"
              when ${days_from_topper_order_to_refound} between 36 and 50 then "h: 36-50"
              when ${days_from_topper_order_to_refound} between 51 and 100 then "i: 51-100"
              when ${days_from_topper_order_to_refound} between 101 and 200 then "j: 101-200"
              when ${days_from_topper_order_to_refound} > 201 then "k: more then 200"
      else null end
      ;;
  }

  dimension: topper_type {
    type: string
    sql:  Case when regexp_contains(lower(${product_name_topper}),"soft") then "Soft"
              when regexp_contains(lower(${product_name_topper}),"firm") then "Firm"
              Else ${product_name_topper}
              End ;;
  }

  measure: total_mattress_orders_that_were_sent_toppers{
    type: count_distinct
    sql:case when ${category} = "topper" then short_id else null end ;;
    value_format: "#,##0"
    group_label: "Mattress Measures"
  }

  measure: total_refund_mattress_order_with_toppers {
    type: count_distinct
    sql: case when (${refund_type} = 'full refund' and ${category} = "topper") then ${short_id} else null end ;;
    value_format: "#,##0"
    group_label: "Mattress Measures"
  }



  measure: total_topper_refund_mattress_rate {
    type: number
    sql: case when ${total_mattress_orders_that_were_sent_toppers}>0 then   ${total_refund_mattress_order_with_toppers}/${total_mattress_orders_that_were_sent_toppers} else null end  ;;
    value_format: "####.##%"
    group_label: "Mattress Measures"
  }

  ###

  measure: total_mattress_orders_that_were_sent_pillow{
    type: count_distinct
    sql:case when ${category} = "pillow" then short_id else null end;;
    value_format: "#,##0"
    group_label: "Mattress Measures"
  }

  measure: total_refund_mattress_order_with_pillow {
    type: count_distinct
    sql: case when (${refund_type} = 'full refund' and ${category} = "pillow") then ${short_id} else null end ;;
    value_format: "#,##0"
    group_label: "Mattress Measures"
  }



  measure: total_pillow_refund_mattress_rate {
    type: number
    sql: case when ${total_mattress_orders_that_were_sent_pillow}>0 then  ${total_refund_mattress_order_with_pillow}/${total_mattress_orders_that_were_sent_pillow} else null end  ;;
    value_format: "####.##%"
    group_label: "Mattress Measures"
  }




# date granularity - order_created #

  parameter: Date_Granularity_order_created_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }



  dimension: order_created {
    label_from_parameter: Date_Granularity_order_created_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_order_created_date %} = 'Day' THEN cast(${order_created_date} as string)
             WHEN {% parameter Date_Granularity_order_created_date %} = 'Week' THEN cast(${order_created_week} as string)
             WHEN {% parameter Date_Granularity_order_created_date %} = 'Month' THEN cast(${order_created_month} as string)
             WHEN {% parameter Date_Granularity_order_created_date %} = 'Quarter' THEN cast(${order_created_quarter} as string)
             WHEN {% parameter Date_Granularity_order_created_date %} = 'Year' THEN cast(${order_created_year} as string)
            ELSE null
            END ;;
  }



# date granularity - order_created_topper #

  parameter: Date_Granularity_order_created_topper_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }



  dimension: order_created_topper {
    label_from_parameter: Date_Granularity_order_created_topper_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_order_created_topper_date %} = 'Day' THEN cast(${order_created_topper_date} as string)
             WHEN {% parameter Date_Granularity_order_created_topper_date %} = 'Week' THEN cast(${order_created_topper_week} as string)
             WHEN {% parameter Date_Granularity_order_created_topper_date %} = 'Month' THEN cast(${order_created_topper_month} as string)
             WHEN {% parameter Date_Granularity_order_created_topper_date %} = 'Quarter' THEN cast(${order_created_topper_quarter} as string)
             WHEN {% parameter Date_Granularity_order_created_topper_date %} = 'Year' THEN cast(${order_created_topper_year} as string)
            ELSE null
            END ;;
  }


  dimension: days_from_original_order_to_topper_cohort {
    type: string
    sql: case
              when ${days_from_original_order_to_topper} between 0 and 7 then "a: 0-7"
              when ${days_from_original_order_to_topper} between 8 and 30 then "b: 8-30"
              when ${days_from_original_order_to_topper} between 31 and 60 then "c: 31-60"
              when ${days_from_original_order_to_topper} between 61 and 90 then "d: 61-90"
              when ${days_from_original_order_to_topper} between 91 and 120 then "e: 91-120"
              when ${days_from_original_order_to_topper} between 121 and 150 then "f: 121-150"
              when ${days_from_original_order_to_topper} between 151 and 180 then "g: 151-180"
              when ${days_from_original_order_to_topper} between 181 and 250 then "h: 181-250"
              when ${days_from_original_order_to_topper} between 251 and 300 then "i: 251-300"
              when ${days_from_original_order_to_topper} between 301 and 330 then "j: 301-330"
              when ${days_from_original_order_to_topper} between 331 and 365 then "k: 331-365"

              when ${days_from_original_order_to_topper} > 365 then "l: more then 365"

      else null end
      ;;
  }

  dimension: placed_order_id {
    type: string
    sql: ${TABLE}.placed_order_id ;;
  }

  dimension: placed_short_id {
    type: string
    sql: ${TABLE}.placed_short_id ;;
  }



  dimension_group: form_created_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.form_created_date ;;
  }


  dimension: rp_item_id {
    type: string
    sql: ${TABLE}.rp_item_id ;;
  }

  dimension: form_id {
    type: string
    sql: ${TABLE}.form_id ;;
  }

  dimension: reship_shipment_id {
    type: string
    sql: ${TABLE}.reship_shipment_id ;;
  }

  dimension: rp_step_reached {
    type: string
    sql: ${TABLE}.rp_step_reached ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  dimension: subreason {
    type: string
    sql: ${TABLE}.subreason ;;
  }

  dimension: package_status {
    type: string
    sql: ${TABLE}.package_status ;;
  }

  dimension: list_of_save_attempts {
    type: string
    sql: ${TABLE}.list_of_save_attempts ;;
  }

  dimension: accepted_save_attempt {
    type: string
    sql: ${TABLE}.accepted_save_attempt ;;
  }

  dimension: rp_agent_email {
    type: string
    sql: ${TABLE}.rp_agent_email ;;
  }


  dimension: topper_sku {
    type: string
    sql: ${TABLE}.topper_sku ;;
  }


  dimension: is_price_0 {
    type: yesno
    sql: ${TABLE}.is_price_0 ;;
  }


  dimension: topper_single_price {
    type: number
    sql: ${TABLE}.topper_single_price ;;
  }

  dimension: topper_total_price {
    type: number
    sql: ${TABLE}.topper_total_price ;;
  }


### 30072025


  dimension: actual_price {
    type: string
    sql: ${TABLE}.actual_price ;;
  }

  dimension: item_tax {
    type: string
    sql: ${TABLE}.item_tax ;;
  }

  dimension: topper_product_cost_actual {
    type: string
    sql: ${TABLE}.topper_product_cost_actual ;;
  }


  measure: total_mattress_price {
    type: sum
    sql:  ${actual_price} ;;
    value_format: "#,##0"

  }

  measure: total_topper_product_cost_actual {
    type: sum
    sql:  ${topper_product_cost_actual} ;;
    value_format: "#,##0"

  }


}
