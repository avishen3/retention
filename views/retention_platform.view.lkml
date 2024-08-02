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
    sql: (concat (${TABLE}.agent_first_name ," ",${TABLE}.agent_last_name)) ;;
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

  ### added dimension 01/07/2024


  dimension_group: last_step_reached {
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
    sql: ${TABLE}.last_step_reached_at ;;
  }

  dimension_group: first_refund {
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
    sql: ${TABLE}.first_refund_ts ;;
  }

  dimension: refund_amount {
    type: number
    sql: ${TABLE}.refund_amount ;;
  }

  dimension: pre_delivery_partial_refund_amount {
    type: number
    sql: ${TABLE}.pre_delivery_partial_refund_amount ;;
  }

  dimension: post_delivery_partial_refund_amount {
    type: number
    sql: ${TABLE}.post_delivery_partial_refund_amount ;;
  }

  dimension: pre_delivery_full_refund_amount {
    type: number
    sql: ${TABLE}.pre_delivery_full_refund_amount ;;
  }

  dimension: post_delivery_full_refund_amount {
    type: number
    sql: ${TABLE}.post_delivery_full_refund_amount ;;
  }


#### ??

# -- forms saved reship ------

  measure: rp_forms_saved_reship {
    type: count_distinct
    sql: ${form_id} ;;
    drill_fields: [brand,short_id,form_id]
    filters: {
      field: rp_forms_saved_reship_condition
      value: "Yes"
    }
  }
  dimension: rp_forms_saved_reship_condition {
    hidden: yes
    type: yesno
    sql: ${type} = "retentionPlatform"
      AND ${rp_step_reached} in ("completed","summary")
      AND ${is_sale_saved} = "true"
      AND ${accepted_save_attempt} = "reship" ;;
  }

  # -- save method ------

  measure: rp_forms_saved_by_method {
    type: count_distinct
    sql: ${form_id} ;;
    drill_fields: [brand,short_id,form_id]
    filters: {
      field: rp_forms_saved_by_method_condition
      value: "Yes"
    }
  }
  dimension: rp_forms_saved_by_method_condition {
    hidden: yes
    type: yesno
    sql: ${type} = "retentionplatform"
         AND ${rp_step_reached} in string("completed","summary")
         AND ${is_sale_saved} = "true"
         AND ${accepted_save_attempt} is not null;;
  }

### 02/08/2024

  dimension: Offered_Save_Attempts_appeasement {
    type: string
    sql: case when ${list_of_save_attempts} is not null then REGEXP_EXTRACT(${list_of_save_attempts}, r'appeasement')  else null end  ;;
    group_label: "Offered Save Attempts"
  }

  dimension: Offered_Save_Attempts_giftFirmTopper {
    type: string
    sql: case when ${list_of_save_attempts} is not null then REGEXP_EXTRACT(${list_of_save_attempts}, r'giftFirmTopper')  else null end  ;;
    group_label: "Offered Save Attempts"
  }

  dimension: Offered_Save_Attempts_appeasementAndReship {
    type: string
    sql: case when ${list_of_save_attempts} is not null then REGEXP_EXTRACT(${list_of_save_attempts}, r'appeasementAndReship')  else null end  ;;
    group_label: "Offered Save Attempts"
  }

  dimension: Offered_Save_Attempts_reship {
    type: string
    sql: case when ${list_of_save_attempts} is not null then REGEXP_EXTRACT(${list_of_save_attempts}, r'reship')  else null end  ;;
    group_label: "Offered Save Attempts"
  }


  dimension: Offered_Save_Attempts_finalSale {
    type: string
    sql: case when ${list_of_save_attempts} is not null then REGEXP_EXTRACT(${list_of_save_attempts}, r'finalSale')  else null end  ;;
    group_label: "Offered Save Attempts"
  }


  dimension: Offered_Save_Attempts_crossSell {
    type: string
    sql: case when ${list_of_save_attempts} is not null then REGEXP_EXTRACT(${list_of_save_attempts}, r'crossSell')  else null end  ;;
    group_label: "Offered Save Attempts"
  }


  dimension: Offered_Save_Attempts_replaceItem {
    type: string
    sql: case when ${list_of_save_attempts} is not null then REGEXP_EXTRACT(${list_of_save_attempts}, r'replaceItem')  else null end  ;;
    group_label: "Offered Save Attempts"
  }

  dimension: Offered_Save_Attempts_finalSalePreset {
    type: string
    sql: case when ${list_of_save_attempts} is not null then REGEXP_EXTRACT(${list_of_save_attempts}, r'finalSalePreset')  else null end  ;;
    group_label: "Offered Save Attempts"
  }

  dimension: Offered_Save_Attempts_giftSoftTopper {
    type: string
    sql: case when ${list_of_save_attempts} is not null then REGEXP_EXTRACT(${list_of_save_attempts}, r'giftSoftTopper')  else null end  ;;
    group_label: "Offered Save Attempts"
  }

  dimension: Offered_Save_Attempts_giftAccessories {
    type: string
    sql: case when ${list_of_save_attempts} is not null then REGEXP_EXTRACT(${list_of_save_attempts}, r'giftAccessories')  else null end  ;;
    group_label: "Offered Save Attempts"
  }


### Measure total offered

  measure: Total_Offerd_appeasement {
    type: count_distinct
    sql:  case when ${Offered_Save_Attempts_appeasement} = 'appeasement' then item_id else null end ;;
    group_label: "Total Offered Save Attempts"

  }

  measure: Total_Offerd_giftFirmTopper {
    type: count_distinct
    sql:  case when ${Offered_Save_Attempts_giftFirmTopper} = 'giftFirmTopper' then item_id else null end ;;
    group_label: "Total Offered Save Attempts"

  }

  measure: Total_Offerd_appeasementAndReship {
    type: count_distinct
    sql:  case when ${Offered_Save_Attempts_appeasementAndReship} = 'appeasementAndReship' then item_id else null end ;;
    group_label: "Total Offered Save Attempts"

  }


  measure: Total_Offerd_reship {
    type: count_distinct
    sql:  case when ${Offered_Save_Attempts_reship} = 'reship' then item_id else null end ;;
    group_label: "Total Offered Save Attempts"

  }

  measure: Total_Offerd_finalSale {
    type: count_distinct
    sql:  case when ${Offered_Save_Attempts_finalSale} = 'finalSale' then item_id else null end ;;
    group_label: "Total Offered Save Attempts"

  }

  measure: Total_Offerd_crossSell {
    type: count_distinct
    sql:  case when ${Offered_Save_Attempts_crossSell} = 'crossSell' then item_id else null end ;;
    group_label: "Total Offered Save Attempts"

  }

  measure: Total_Offerd_replaceItem {
    type: count_distinct
    sql:  case when ${Offered_Save_Attempts_replaceItem} = 'replaceItem' then item_id else null end ;;
    group_label: "Total Offered Save Attempts"

  }

  measure: Total_Offerd_finalSalePreset {
    type: count_distinct
    sql:  case when ${Offered_Save_Attempts_finalSalePreset} = 'finalSalePreset' then item_id else null end ;;
    group_label: "Total Offered Save Attempts"

  }

  measure: Total_Offerd_giftSoftTopper {
    type: count_distinct
    sql:  case when ${Offered_Save_Attempts_giftSoftTopper} = 'giftSoftTopper' then item_id else null end ;;
    group_label: "Total Offered Save Attempts"

  }

  measure: Total_Offerd_giftAccessories {
    type: count_distinct
    sql:  case when ${Offered_Save_Attempts_giftAccessories} = 'giftAccessories}' then item_id else null end ;;
  group_label: "Total Offered Save Attempts"

  }

### Measure total accepted

  measure: Total_accepted_save_appeasement {
    type: count_distinct
    sql:  case when ${accepted_save_attempt} = 'appeasement' then item_id else null end ;;
    group_label: "Total Accepted Save"

  }

  measure: Total_accepted_save_giftFirmTopper {
    type: count_distinct
    sql:  case when ${accepted_save_attempt} = 'giftFirmTopper' then item_id else null end ;;
    group_label: "Total Accepted Save"

  }

  measure: Total_accepted_save_appeasementAndReship {
    type: count_distinct
    sql:  case when ${accepted_save_attempt} = 'appeasementAndReship' then item_id else null end ;;
    group_label: "Total Accepted Save"

  }


  measure: Total_accepted_save_reship {
    type: count_distinct
    sql:  case when ${accepted_save_attempt} = 'reship' then item_id else null end ;;
    group_label: "Total Accepted Save"

  }

  measure: Total_accepted_save_finalSale {
    type: count_distinct
    sql:  case when ${accepted_save_attempt} = 'finalSale' then item_id else null end ;;
    group_label: "Total Accepted Save"

  }

  measure: Total_accepted_save_crossSell {
    type: count_distinct
    sql:  case when ${accepted_save_attempt} = 'crossSell' then item_id else null end ;;
    group_label: "Total Accepted Save"

  }

  measure: Total_accepted_save_replaceItem {
    type: count_distinct
    sql:  case when ${accepted_save_attempt} = 'replaceItem' then item_id else null end ;;
    group_label: "Total Accepted Save"

  }

  measure: Total_accepted_save_finalSalePreset {
    type: count_distinct
    sql:  case when ${accepted_save_attempt} = 'finalSalePreset' then item_id else null end ;;
    group_label: "Total Accepted Save"

  }

  measure: Total_accepted_save_giftSoftTopper {
    type: count_distinct
    sql:  case when ${accepted_save_attempt} = 'giftSoftTopper' then item_id else null end ;;
    group_label: "Total Accepted Save"

  }

  measure: Total_accepted_save_giftAccessories {
    type: count_distinct
    sql:  case when ${accepted_save_attempt} = 'giftAccessories}' then item_id else null end ;;
    group_label: "Total Accepted Save"

  }

### Accepted Rate

  measure: Accepted_Save_Rate_giftAccessories {
    type: number
    sql: case when Total_Offerd_giftAccessories>0 then ${Total_accepted_save_giftAccessories}/${Total_Offerd_giftAccessories} else null end;;
    group_label: "Total Accepted Save"

  }



}
