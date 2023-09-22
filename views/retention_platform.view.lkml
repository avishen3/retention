view: retention_platform {
  sql_table_name: `omega-post-184817.Operations.retention_platform`
    ;;

  dimension: accepted_save_attempt {
    type: string
    sql: ${TABLE}.accepted_save_attempt ;;
  }

  dimension: agent_email {
    type: string
    sql: ${TABLE}.agent_email ;;
  }

  dimension: agent_first_name {
    type: string
    sql: ${TABLE}.agent_first_name ;;
  }

  dimension: agent_last_name {
    type: string
    sql: ${TABLE}.agent_last_name ;;
  }

  dimension: agent_full_name {
    type: string
    sql: (concat ${TABLE}.agent_first_name ," ",${TABLE}.agent_last_name) ;;
  }

  dimension_group: approved {
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
    sql: ${TABLE}.approved_at ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension_group: cancelled {
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
    sql: ${TABLE}.cancelled_at ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: compensation {
    type: string
    sql: ${TABLE}.compensation ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension_group: form_created {
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
    sql: ${TABLE}.form_created_date ;;
  }

  dimension: form_id {
    type: string
    sql: ${TABLE}.form_id ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: is_sale_saved {
    type: yesno
    sql: ${TABLE}.is_sale_saved ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: item_price_inc_tax {
    type: number
    sql: ${TABLE}.item_price_inc_tax ;;
  }

  dimension: list_of_save_attempts {
    type: string
    sql: ${TABLE}.list_of_save_attempts ;;
  }

  dimension: method_of_removal {
    type: string
    sql: ${TABLE}.method_of_removal ;;
  }

  dimension_group: on_hold {
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
    sql: ${TABLE}.on_hold_at ;;
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

  dimension: package_status {
    type: string
    sql: ${TABLE}.package_status ;;
  }

  dimension: post_delivery_refund {
    type: number
    sql: ${TABLE}.post_delivery_refund ;;
  }

  dimension: pre_delivery_refund {
    type: number
    sql: ${TABLE}.pre_delivery_refund ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  dimension: refund_type {
    type: string
    sql: ${TABLE}.refund_type ;;
  }

  dimension_group: rejected {
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
    sql: ${TABLE}.rejected_at ;;
  }

  dimension: reship_shipment_id {
    type: string
    sql: ${TABLE}.reship_shipment_id ;;
  }

  dimension: return_shipment_id {
    type: string
    sql: ${TABLE}.return_shipment_id ;;
  }

  dimension: rp_step_reached {
    type: string
    sql: ${TABLE}.rp_step_reached ;;
  }

  dimension: sharetown_pick_up_coverage_status {
    type: string
    sql: ${TABLE}.sharetown_pick_up_coverage_status ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: sleeper_type {
    type: string
    sql: ${TABLE}.sleeper_type ;;
  }

  dimension: subreason {
    type: string
    sql: ${TABLE}.subreason ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [agent_last_name, agent_first_name]
  }

  measure: Total_FinalSale_Items {
    type: count_distinct
    sql: case when ${accepted_save_attempt} ='finalSale' then ${item_id} else null end ;;
    value_format: "#,##0"
  }

  measure: Total_FinalSale_Items_mattress{
    type: count_distinct
    sql: case when ${accepted_save_attempt} = 'finalSale' and  ${category}  = "mattress" then ${item_id} else null end ;;
    value_format: "#,##0"
  }

  measure: Total_FinalSale_Items_frames{
    type: count_distinct
    sql: case when ${accepted_save_attempt} ='finalSale' and  ${category} in ("foundation","headboard","adjustable","frame other","metal frame") then ${item_id} else null end ;;
    value_format: "#,##0"
  }

  measure: Total_FinalSale_Items_frames_and_matt{
    type: count_distinct
    sql: case when ${accepted_save_attempt} ='finalSale' and  ${category} in ("foundation","headboard","adjustable","frame other","metal frame","mattress") then ${item_id} else null end ;;
    value_format: "#,##0"
  }

}
