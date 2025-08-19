view: rp_save_rate_retention_outcome_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.rp_save_rate_retention_outcome_tbl` ;;

  dimension: B2B {
    type: string
    sql: ${TABLE}.B2B ;;
  }
  dimension: bought_somewhere_else {
    type: string
    sql: ${TABLE}.Bought_Somewhere_Else ;;
  }
  dimension: change_of_address {
    type: string
    sql: ${TABLE}.Change_of_Address ;;
  }
  dimension: comfort {
    type: string
    sql: ${TABLE}.Comfort ;;
  }
  dimension: couponNotApplied {
    type: string
    sql: ${TABLE}.couponNotApplied ;;
  }
  dimension: damaged_product {
    type: string
    sql: ${TABLE}.Damaged_Product ;;
  }
  dimension: duplicate_order {
    type: string
    sql: ${TABLE}.Duplicate_Order ;;
  }
  dimension_group: first_rp_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.first_rp_created_date ;;
  }
  dimension: forms_to_items_ratio {
    type: number
    sql: ${TABLE}.Forms_to_items_ratio ;;
  }
  dimension: fraud {
    type: string
    sql: ${TABLE}.Fraud ;;
  }
  dimension: incorrect_order {
    type: string
    sql: ${TABLE}.Incorrect_Order ;;
  }
  dimension: is_lost_sale {
    type: number
    sql: ${TABLE}.is_lost_sale ;;
  }
  dimension: is_potanital_lost_sale {
    type: number
    sql: ${TABLE}.is_potanital_lost_sale ;;
  }
  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }
  dimension: manufacturing_defect {
    type: string
    sql: ${TABLE}.Manufacturing_Defect ;;
  }
  dimension: no_longer_needed {
    type: string
    sql: ${TABLE}.No_Longer_Needed ;;
  }
  dimension_group: order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created ;;
  }
  dimension: payment_issue {
    type: string
    sql: ${TABLE}.Payment_Issue ;;
  }
  dimension: quality_issue {
    type: string
    sql: ${TABLE}.Quality_Issue ;;
  }
  dimension: reason_list {
    type: string
    sql: ${TABLE}.reason_list ;;
  }
  dimension: retention_outcome {
    type: string
    sql: ${TABLE}.retention_outcome ;;
  }
  dimension: shipping_time_frame {
    type: string
    sql: ${TABLE}.Shipping_Time_Frame ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }
  dimension: test_order {
    type: string
    sql: ${TABLE}.Test_Order ;;
  }
  dimension: total_form_id {
    type: number
    sql: ${TABLE}.total_form_id ;;
  }
  dimension: total_items_with_forms {
    type: number
    sql: ${TABLE}.total_items_with_forms ;;
  }
  dimension: total_lost_forms {
    type: number
    sql: ${TABLE}.total_lost_forms ;;
  }
  dimension: total_lost_items {
    type: number
    sql: ${TABLE}.total_lost_items ;;
  }
  dimension: total_potanital_forms {
    type: number
    sql: ${TABLE}.total_potanital_forms ;;
  }
  dimension: total_potanital_items {
    type: number
    sql: ${TABLE}.total_potanital_items ;;
  }
  dimension: warranty_claim_61_plus_days {
    type: string
    sql: ${TABLE}.Warranty_Claim_61_Plus_Days ;;
  }
  dimension: wgs_post_delivery {
    type: string
    sql: ${TABLE}.WGS_Post_Delivery ;;
  }
  dimension: wgs_pre_delivery {
    type: string
    sql: ${TABLE}.WGS_Pre_Delivery ;;
  }
  measure: count {
    type: count
  }

# date granularity - first_rp_created #

  parameter: Date_Granularity_first_rp_created {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }



  dimension: first_rp_created {
    label_from_parameter: Date_Granularity_first_rp_created
    sql:
            CASE
             WHEN {% parameter Date_Granularity_first_rp_created %} = 'Day' THEN cast(${first_rp_created_date} as string)
             WHEN {% parameter Date_Granularity_first_rp_created %} = 'Week' THEN cast(${first_rp_created_week} as string)
             WHEN {% parameter Date_Granularity_first_rp_created %} = 'Month' THEN cast(${first_rp_created_month} as string)
             WHEN {% parameter Date_Granularity_first_rp_created %} = 'Quarter' THEN cast(${first_rp_created_quarter} as string)
             WHEN {% parameter Date_Granularity_first_rp_created %} = 'Year' THEN cast(${first_rp_created_year} as string)
            ELSE null
            END ;;
  }

# date granularity - order created #

  parameter: Date_Granularity_order_created {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }



  dimension: order_created {
    label_from_parameter: Date_Granularity_order_created
    sql:
            CASE
             WHEN {% parameter Date_Granularity_order_created %} = 'Day' THEN cast(${order_created_date} as string)
             WHEN {% parameter Date_Granularity_order_created %} = 'Week' THEN cast(${order_created_week} as string)
             WHEN {% parameter Date_Granularity_order_created %} = 'Month' THEN cast(${order_created_month} as string)
             WHEN {% parameter Date_Granularity_order_created %} = 'Quarter' THEN cast(${order_created_quarter} as string)
             WHEN {% parameter Date_Granularity_order_created %} = 'Year' THEN cast(${order_created_year} as string)
            ELSE null
            END ;;
  }


  measure: total_items_Wasted_Effort_Canceled_with_Cost{
    type: count_distinct
    sql: case when ${retention_outcome} = "Canceled with Cost (Wasted Effort)" then ${item_id} else null end ;;
    value_format: "#,##0"
    description: "Canceled with Cost (Wasted Effort)"
    group_label: "outcome"
  }

  measure: total_items_Canceled_No_Cost{
    type: count_distinct
    sql: case when ${retention_outcome} = "Canceled, No Cost" then ${item_id} else null end ;;
    value_format: "#,##0"
    description: "Canceled, No Cost"
    group_label: "outcome"
  }

  measure: total_items_True_Saves_Saved_with_Cost {
    type: count_distinct
    sql: case when ${retention_outcome} = "Saved with Cost (True Saves)" then ${item_id} else null end ;;
    value_format: "#,##0"
    description: "Saved with Cost (True Saves)"
    group_label: "outcome"
  }

  measure: total_items_Saved_No_Cost {
    type: count_distinct
    sql: case when ${retention_outcome} = "Saved, No Cost" then ${item_id} else null end ;;
    value_format: "#,##0"
    description: "Saved, No Cost"
    group_label: "outcome"
  }


  measure: total_at_risk_items {
    type: number
    sql: ${total_items_True_Saves_Saved_with_Cost}+${total_items_Wasted_Effort_Canceled_with_Cost} ;;
    value_format: "#,##0"
    description: "At risk items"
    group_label: "outcome"
  }

  measure: true_save_rate {
    type: number
    sql: ${total_items_True_Saves_Saved_with_Cost}/(NULLIF((${total_items_True_Saves_Saved_with_Cost} + ${total_items_Wasted_Effort_Canceled_with_Cost}), 0)) ;;
    value_format: "0.00%"
    description: "Save Rate"
  }


  dimension: order_update_cohort {
    type: string
    sql: ${TABLE}.order_update_cohort ;;
  }


  dimension: rp_update_cohort {
    type: string
    sql: ${TABLE}.rp_update_cohort ;;
  }

  dimension: days_from_order_to_last_update {
    type: number
    sql: ${TABLE}.days_from_order_to_last_update ;;
  }

  dimension: days_from_rp_to_last_update {
    type: number
    sql: ${TABLE}.days_from_rp_to_last_update ;;
  }


  dimension_group: last_approved_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.last_approved_at ;;
  }

  dimension_group: last_step_reached {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.last_step_reached ;;
  }

  dimension_group: max_cancelled_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.max_cancelled_at ;;
  }

  dimension_group: last_datetime_for_item {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.last_datetime_for_item ;;
  }


  dimension: first_form_package_status {
    type: string
    sql: ${TABLE}.first_form_package_status ;;
  }


  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }


  dimension: Number_of_Reason {
    type: number
    sql: ${TABLE}.Number_of_Reason ;;
  }


  dimension: wgs {
    type: string
    sql: ${TABLE}.wgs ;;
  }


  dimension: warrantyClaim {
    type: string
    sql: ${TABLE}.warrantyClaim ;;
  }


  dimension: lateDelivery {
    type: string
    sql: ${TABLE}.lateDelivery ;;
  }


  dimension: itemExchangeWHFault {
    type: string
    sql: ${TABLE}.itemExchangeWHFault ;;
  }

  dimension: itemExchangeEmployeeError {
    type: string
    sql: ${TABLE}.itemExchangeEmployeeError ;;
  }

  dimension: itemExchangeCustomerError {
    type: string
    sql: ${TABLE}.itemExchangeCustomerError ;;
  }

  dimension: duplicateItemReceived {
    type: string
    sql: ${TABLE}.duplicateItemReceived ;;
  }


  dimension: damagedInTransit {
    type: string
    sql: ${TABLE}.duplicateItemReceived ;;
  }

  dimension: damagedByCustomer {
    type: string
    sql: ${TABLE}.damagedByCustomer ;;
  }

  dimension: Warranty_Replacement {
    type: string
    sql: ${TABLE}.Warranty_Replacement ;;
  }

  dimension: Buyers_Remorse {
    type: string
    sql: ${TABLE}.Buyers_Remorse ;;
  }




  dimension: Clean_all_reason_list {
    type: string
    sql:
    CASE
      WHEN ${Number_of_Reason} = 1
      THEN COALESCE(
       ${wgs},
        ${warrantyClaim},
        ${lateDelivery},
        ${itemExchangeWHFault},
        ${itemExchangeEmployeeError},
        ${itemExchangeCustomerError},
        ${duplicateItemReceived},
        ${damagedInTransit},
        ${damagedByCustomer},
        ${Warranty_Replacement},
        ${Buyers_Remorse},
        ${B2B},
        ${bought_somewhere_else},
        ${change_of_address},
        ${comfort},
        ${damaged_product},
        ${duplicate_order},
        ${fraud},
        ${incorrect_order},
        ${manufacturing_defect},
        ${no_longer_needed},
        ${payment_issue},
        ${quality_issue},
        ${shipping_time_frame},
        ${test_order},
        ${wgs_post_delivery},
        ${wgs_pre_delivery},
        ${warranty_claim_61_plus_days},
        ${couponNotApplied}
      )
      ELSE NULL
    END ;;
  }


}
