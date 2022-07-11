view: cs_upsell_alerts_with_order_line_items_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.cs_upsell_alerts_with_order_line_items_tbl`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: actual_price {
    type: number
    sql: ${TABLE}.actual_price ;;
  }

  dimension: admin_discount {
    type: number
    sql: ${TABLE}.admin_discount ;;
  }

  dimension: admin_physical_discount {
    type: number
    sql: ${TABLE}.admin_physical_discount ;;
  }

  dimension: admin_physical_price_no_tax {
    type: number
    sql: ${TABLE}.admin_physical_price_no_tax ;;
  }

  dimension: admin_price_no_tax {
    type: number
    sql: ${TABLE}.admin_price_no_tax ;;
  }

  dimension: agent_email {
    type: string
    sql: ${TABLE}.agent_email ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.agent_id ;;
  }

  dimension: agent_name {
    type: string
    sql: ${TABLE}.agent_name ;;
  }

  dimension: billing_provider {
    type: string
    sql: ${TABLE}.billing_provider ;;
  }

  dimension: billing_state {
    type: string
    sql: ${TABLE}.billing_state ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: capital {
    type: number
    sql: ${TABLE}.capital ;;
  }

  dimension: carrier_name_last_purchase {
    type: string
    sql: ${TABLE}.carrier_name_last_purchase ;;
  }

  dimension: carrier_name_last_purchase_rts {
    type: string
    sql: ${TABLE}.carrier_name_last_purchase_rts ;;
  }

  dimension: cart_id {
    type: string
    sql: ${TABLE}.cart_id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }

  dimension: coupon_discount {
    type: number
    sql: ${TABLE}.coupon_discount ;;
  }

  dimension: coupon_name {
    type: string
    sql: ${TABLE}.coupon_name ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created ;;
  }


####

# date granularity - created alerts #

  parameter: Date_Granularity_created_alerts {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }

  dimension: created_date_gr {
    label_from_parameter: Date_Granularity_created_alerts
    sql:
            CASE
             WHEN {% parameter Date_Granularity_created_alerts %} = 'Day' THEN cast(${created_date} as string)
             WHEN {% parameter Date_Granularity_created_alerts %} = 'Week' THEN cast( ${created_week} as string)
             WHEN {% parameter Date_Granularity_created_alerts %} = 'Month' THEN cast(${created_month} as string)
             WHEN {% parameter Date_Granularity_created_alerts %} = 'Quarter' THEN cast(${created_quarter} as string)
             WHEN {% parameter Date_Granularity_created_alerts %} = 'Year' THEN cast(${created_year} as string)
            ELSE null
            END ;;
  }


####



  dimension_group: creation {
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
    sql: ${TABLE}.creation_time ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: customer_phone {
    type: string
    sql: ${TABLE}.customer_phone ;;
  }

  dimension_group: delivered_last_purchase_ts {
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
    sql: ${TABLE}.delivered_last_purchase_ts ;;
  }

  dimension_group: delivered_last_reship_ts {
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
    sql: ${TABLE}.delivered_last_reship_ts ;;
  }

  dimension: dma {
    type: string
    sql: ${TABLE}.DMA ;;
  }

  dimension: dray {
    type: number
    sql: ${TABLE}.dray ;;
  }

  dimension: duty {
    type: number
    sql: ${TABLE}.duty ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: estimated_shipping_days_from {
    type: number
    sql: ${TABLE}.estimatedShippingDays_from ;;
  }

  dimension: estimated_shipping_days_to {
    type: number
    sql: ${TABLE}.estimatedShippingDays_to ;;
  }

  dimension_group: exchange {
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
    sql: ${TABLE}.exchange_date ;;
  }

####

# date granularity - exchange date #

  parameter: Date_Granularity_exchange_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }

  dimension: exchange_date_gr {
    label_from_parameter: Date_Granularity_exchange_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_exchange_date %} = 'Day' THEN cast(${exchange_date} as string)
             WHEN {% parameter Date_Granularity_exchange_date %} = 'Week' THEN cast( ${exchange_week} as string)
             WHEN {% parameter Date_Granularity_exchange_date %} = 'Month' THEN cast(${exchange_month} as string)
             WHEN {% parameter Date_Granularity_exchange_date %} = 'Quarter' THEN cast(${exchange_quarter} as string)
             WHEN {% parameter Date_Granularity_exchange_date %} = 'Year' THEN cast(${exchange_year} as string)
            ELSE null
            END ;;
  }


####



  dimension: exchange_discount {
    type: number
    sql: ${TABLE}.exchange_discount ;;
  }

  dimension: exchanged_agent_email {
    type: string
    sql: ${TABLE}.exchanged_agent_email ;;
  }

  dimension: exchanged_agent_first_name {
    type: string
    sql: ${TABLE}.exchanged_agent_first_name ;;
  }

  dimension: exchanged_agent_id {
    type: string
    sql: ${TABLE}.exchanged_agent_id ;;
  }

  dimension: exchanged_agent_last_name {
    type: string
    sql: ${TABLE}.exchanged_agent_last_name ;;
  }

  dimension: exchanged_original_item_category {
    type: string
    sql: ${TABLE}.exchanged_original_item_category ;;
  }

  dimension: exchanged_original_item_coupon_discount {
    type: number
    sql: ${TABLE}.exchanged_original_item_coupon_discount ;;
  }

  dimension: exchanged_original_item_product_cost_estimated {
    type: number
    sql: ${TABLE}.exchanged_original_item_product_cost_estimated ;;
  }

  dimension: exchanged_original_item_product_title {
    type: string
    sql: ${TABLE}.exchanged_original_item_product_title ;;
  }

  dimension: exchanged_original_item_shipping_cost_estimated {
    type: number
    sql: ${TABLE}.exchanged_original_item_shipping_cost_estimated ;;
  }

  dimension: exchanged_original_item_sku {
    type: string
    sql: ${TABLE}.exchanged_original_item_sku ;;
  }

  dimension: exchanged_original_item_total_price {
    type: number
    sql: ${TABLE}.exchanged_original_item_total_price ;;
  }

  dimension_group: first_refund_ts {
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
    sql: ${TABLE}.first_refund_ts ;;
  }

  dimension_group: first_reship_form_ts {
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
    sql: ${TABLE}.first_reship_form_ts ;;
  }

  dimension_group: first_return_form_ts {
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
    sql: ${TABLE}.first_return_form_ts ;;
  }

  dimension_group: first_transit_last_purchase_ts {
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
    sql: ${TABLE}.first_transit_last_purchase_ts ;;
  }

  dimension: fob {
    type: number
    sql: ${TABLE}.fob ;;
  }

  dimension: forms_created {
    type: number
    sql: ${TABLE}.forms_created ;;
  }

  dimension: fulfillment {
    type: number
    sql: ${TABLE}.fulfillment ;;
  }

  dimension: fulfillment_b_days {
    type: number
    sql: ${TABLE}.fulfillment_b_days ;;
  }

  dimension: fulfillment_days {
    type: number
    sql: ${TABLE}.fulfillment_days ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: inbound_freight {
    type: number
    sql: ${TABLE}.inbound_freight ;;
  }

  dimension: inventory_key {
    type: string
    sql: ${TABLE}.inventory_key ;;
  }

  dimension: is_actual_item_non_mattress {
    type: yesno
    sql: ${TABLE}.is_actual_item_non_mattress ;;
  }

  dimension: is_insurance {
    type: yesno
    sql: ${TABLE}.is_insurance ;;
  }

  dimension: is_mattress {
    type: yesno
    sql: ${TABLE}.is_mattress ;;
  }

  dimension: is_physical_item {
    type: yesno
    sql: ${TABLE}.is_physical_item ;;
  }

  dimension: is_price_0 {
    type: yesno
    sql: ${TABLE}.is_price_0 ;;
  }

  dimension: is_price_0_items {
    type: yesno
    sql: ${TABLE}.is_price_0_items ;;
  }

  dimension: is_service {
    type: yesno
    sql: ${TABLE}.is_service ;;
  }

  dimension: is_store_pick_up {
    type: yesno
    sql: ${TABLE}.is_store_pick_up ;;
  }

  dimension: is_tax_on_shipping {
    type: yesno
    sql: ${TABLE}.is_tax_on_Shipping ;;
  }

  dimension: is_tesk_assigned {
    type: yesno
    sql: ${TABLE}.is_tesk_assigned ;;
  }

  dimension: is_upgraded {
    type: yesno
    sql: ${TABLE}.is_upgraded ;;
  }

  dimension: is_valid_order {
    type: yesno
    sql: ${TABLE}.is_valid_order ;;
  }

  dimension: item_attributed_discount {
    type: number
    sql: ${TABLE}.item_attributed_discount ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: item_quantity {
    type: number
    sql: ${TABLE}.item_quantity ;;
  }

  dimension: item_tax {
    type: number
    sql: ${TABLE}.item_tax ;;
  }

  dimension_group: labels_created_last_purchase_ts {
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
    sql: ${TABLE}.labels_created_last_purchase_ts ;;
  }

  dimension_group: last_activity {
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
    sql: ${TABLE}.last_activity_at ;;
  }

  dimension: last_reship_status {
    type: string
    sql: ${TABLE}.last_reship_status ;;
  }

  dimension: last_reship_status_fulfill2 {
    type: string
    sql: ${TABLE}.last_reship_status_fulfill2 ;;
  }

  dimension_group: last_returned_to_whs_actual_ts {
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
    sql: ${TABLE}.last_returned_to_whs_actual_ts ;;
  }

  dimension: last_returned_to_whs_intent {
    type: yesno
    sql: ${TABLE}.last_returned_to_whs_intent ;;
  }

  dimension_group: last_revoke_update {
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
    sql: ${TABLE}.last_revoke_update ;;
  }

  dimension: mdf {
    type: number
    sql: ${TABLE}.mdf ;;
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

####

# date granularity - order created #

  parameter: Date_Granularity_order_created {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }

  dimension: order_created_gr {
    label_from_parameter: Date_Granularity_order_created
    sql:
            CASE
             WHEN {% parameter Date_Granularity_order_created %} = 'Day' THEN cast(${order_created_date} as string)
             WHEN {% parameter Date_Granularity_order_created %} = 'Week' THEN cast( ${order_created_time} as string)
             WHEN {% parameter Date_Granularity_order_created %} = 'Month' THEN cast(${order_created_month} as string)
             WHEN {% parameter Date_Granularity_order_created %} = 'Quarter' THEN cast(${order_created_quarter} as string)
             WHEN {% parameter Date_Granularity_order_created %} = 'Year' THEN cast(${order_created_year} as string)
            ELSE null
            END ;;
  }


####


  dimension: order_discount {
    type: number
    sql: ${TABLE}.order_discount ;;
  }

  dimension: order_exchange_discount {
    type: number
    sql: ${TABLE}.order_exchange_discount ;;
  }

  dimension: order_price {
    type: number
    sql: ${TABLE}.order_price ;;
  }

  dimension: order_source {
    type: string
    sql: ${TABLE}.order_source ;;
  }

  dimension: order_tax {
    type: number
    sql: ${TABLE}.order_tax ;;
  }

  dimension: order_tax_rate {
    type: number
    sql: ${TABLE}.order_tax_rate ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }

  dimension_group: order_updated {
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
    sql: ${TABLE}.order_updated ;;
  }

####

# date granularity - order updated #

  parameter: Date_Granularity_order_updated {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }

  dimension: order_updated_gr {
    label_from_parameter: Date_Granularity_order_updated
    sql:
            CASE
             WHEN {% parameter Date_Granularity_order_created %} = 'Day' THEN cast(${order_updated_date} as string)
             WHEN {% parameter Date_Granularity_order_created %} = 'Week' THEN cast( ${order_updated_time} as string)
             WHEN {% parameter Date_Granularity_order_created %} = 'Month' THEN cast(${order_updated_month} as string)
             WHEN {% parameter Date_Granularity_order_created %} = 'Quarter' THEN cast(${order_updated_quarter} as string)
             WHEN {% parameter Date_Granularity_order_created %} = 'Year' THEN cast(${order_updated_year} as string)
            ELSE null
            END ;;
  }


####




  dimension: original_appeasement_item_id {
    type: string
    sql: ${TABLE}.original_appeasement_item_id ;;
  }

  dimension: original_appeasement_order_id {
    type: string
    sql: ${TABLE}.original_appeasement_order_id ;;
  }

  dimension: original_product_name {
    type: string
    sql: ${TABLE}.original_product_name ;;
  }

  dimension: original_product_size {
    type: string
    sql: ${TABLE}.original_product_size ;;
  }

  dimension: original_sku {
    type: string
    sql: ${TABLE}.original_sku ;;
  }

  dimension: parent_category {
    type: string
    sql: ${TABLE}.parent_category ;;
  }

  dimension: parent_order_id {
    type: string
    sql: ${TABLE}.parent_order_id ;;
  }

  dimension: post_delivery_full_refund_amount {
    type: number
    sql: ${TABLE}.post_delivery_full_refund_amount ;;
  }

  dimension: post_delivery_partial_refund_amount {
    type: number
    sql: ${TABLE}.post_delivery_partial_refund_amount ;;
  }

  dimension: pre_delivery_full_refund_amount {
    type: number
    sql: ${TABLE}.pre_delivery_full_refund_amount ;;
  }

  dimension: pre_delivery_partial_refund_amount {
    type: number
    sql: ${TABLE}.pre_delivery_partial_refund_amount ;;
  }

  dimension: product_cost {
    type: number
    sql: ${TABLE}.product_cost ;;
  }

  dimension: product_cost_actual {
    type: number
    sql: ${TABLE}.product_cost_actual ;;
  }

  dimension: product_cost_estimated {
    type: number
    sql: ${TABLE}.product_cost_estimated ;;
  }

  dimension: product_cost_manual {
    type: number
    sql: ${TABLE}.product_cost_manual ;;
  }

  dimension: product_cost_single {
    type: number
    sql: ${TABLE}.product_cost_single ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_size {
    type: string
    sql: ${TABLE}.product_size ;;
  }

  dimension: product_title {
    type: string
    sql: ${TABLE}.product_title ;;
  }

  dimension: product_weight {
    type: number
    sql: ${TABLE}.product_weight ;;
  }

  dimension: profile_discount {
    type: number
    sql: ${TABLE}.profile_discount ;;
  }

  dimension: purchases {
    type: number
    sql: ${TABLE}.purchases ;;
  }

  dimension: refund_amount {
    type: number
    sql: ${TABLE}.refund_amount ;;
  }

  dimension: refund_transactions {
    type: number
    sql: ${TABLE}.refund_transactions ;;
  }

  dimension: refund_type {
    type: string
    sql: ${TABLE}.refund_type ;;
  }

  dimension: reship_forms {
    type: number
    sql: ${TABLE}.reship_forms ;;
  }

  dimension: reships {
    type: number
    sql: ${TABLE}.reships ;;
  }

  dimension: resolve_reason {
    type: string
    sql: ${TABLE}.resolveReason ;;
  }

  dimension: return_forms {
    type: number
    sql: ${TABLE}.return_forms ;;
  }

  dimension: returns {
    type: number
    sql: ${TABLE}.returns ;;
  }

  dimension: route_efficiency_last_purchase {
    type: string
    sql: ${TABLE}.route_efficiency_last_purchase ;;
  }

  dimension: shipment_id_last_purchase {
    type: string
    sql: ${TABLE}.shipment_id_last_purchase ;;
  }

  dimension: shipment_sku {
    type: string
    sql: ${TABLE}.shipment_sku ;;
  }

  dimension: shipment_status_fulfill2_last_purchase {
    type: string
    sql: ${TABLE}.shipment_status_fulfill2_last_purchase ;;
  }

  dimension: shipping_address {
    type: string
    sql: ${TABLE}.shipping_address ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}.shipping_city ;;
  }

  dimension: shipping_cost {
    type: number
    sql: ${TABLE}.shipping_cost ;;
  }

  dimension: shipping_cost_actual {
    type: number
    sql: ${TABLE}.shipping_cost_actual ;;
  }

  dimension: shipping_cost_estimated {
    type: number
    sql: ${TABLE}.shipping_cost_estimated ;;
  }

  dimension: shipping_cost_manual {
    type: number
    sql: ${TABLE}.shipping_cost_manual ;;
  }

  dimension: shipping_cost_single {
    type: number
    sql: ${TABLE}.shipping_cost_single ;;
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
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: short_id_admin {
    type: string
    sql: ${TABLE}.short_id_admin ;;
  }

  dimension: short_id_num {
    type: string
    sql: ${TABLE}.short_id_num ;;
  }

  dimension: single_price {
    type: number
    sql: ${TABLE}.single_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: source_app_id {
    type: string
    sql: ${TABLE}.source_app_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tariff {
    type: number
    sql: ${TABLE}.tariff ;;
  }

  dimension: task_details_assigneed_by_display_name {
    type: string
    sql: ${TABLE}.task_details_assigneed_by_display_name ;;
  }

  dimension: task_details_assigneed_by_first_name {
    type: string
    sql: ${TABLE}.task_details_assigneed_by_first_name ;;
  }

  dimension: task_details_assigneed_by_id {
    type: string
    sql: ${TABLE}.task_details_assigneed_by_id ;;
  }

  dimension: task_details_assigneed_by_last_name {
    type: string
    sql: ${TABLE}.task_details_assigneed_by_last_name ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}.tax_rate ;;
  }

  dimension: taxable {
    type: yesno
    sql: ${TABLE}.Taxable ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }

  dimension: tracking_number_last_purchase {
    type: string
    sql: ${TABLE}.tracking_number_last_purchase ;;
  }

  dimension: upgrade_short_id {
    type: string
    sql: ${TABLE}.upgrade_short_id ;;
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

  dimension: website_shipping_time_from {
    type: number
    sql: ${TABLE}.website_shipping_time_from ;;
  }

  dimension: website_shipping_time_to {
    type: number
    sql: ${TABLE}.website_shipping_time_to ;;
  }

  dimension: wgs_full_price {
    type: number
    sql: ${TABLE}.wgs_full_price ;;
  }

  dimension: whs_name_last_purchase {
    type: string
    sql: ${TABLE}.whs_name_last_purchase ;;
  }

  dimension: whs_name_last_purchase_rts {
    type: string
    sql: ${TABLE}.whs_name_last_purchase_rts ;;
  }

  dimension: whs_title_last_purchase {
    type: string
    sql: ${TABLE}.whs_title_last_purchase ;;
  }

  dimension: whs_title_last_purchase_rts {
    type: string
    sql: ${TABLE}.whs_title_last_purchase_rts ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      agent_name,
      coupon_name,
      exchanged_agent_first_name,
      task_details_assigneed_by_display_name,
      task_details_assigneed_by_first_name,
      customer_name,
      original_product_name,
      exchanged_agent_last_name,
      product_name,
      task_details_assigneed_by_last_name
    ]
  }

  measure: total_alerts_created{
    type: count_distinct
    sql: ${short_id} ;;
  }

  measure: total_assigned_alerts{
    type: count_distinct
    sql: case when ${is_tesk_assigned} = true then ${short_id} else null end  ;;
  }

  measure: total_upsell_orders{
    type: count_distinct
    sql: case when ${exchanged_original_item_sku} is not null then ${short_id}  else null end ;;
  }





}
