view: rp_save_rate_retention_outcome_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.rp_save_rate_retention_outcome_tbl` ;;

  dimension: b2_b {
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
  dimension: coupon_not_applied {
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
}
