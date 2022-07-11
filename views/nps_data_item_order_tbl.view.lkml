view: nps_data_item_order_tbl {
  sql_table_name: `omega-post-184817.Keshet.NPS_DATA_item_order_tbl`
    ;;

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

  dimension: agent_email_order_level {
    type: string
    sql: ${TABLE}.agent_email_order_level ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.agent_id ;;
  }

  dimension: agent_id_order_level {
    type: string
    sql: ${TABLE}.agent_id_order_level ;;
  }

  dimension: agent_name {
    type: string
    sql: ${TABLE}.agent_name ;;
  }

  dimension: agent_name_order_level {
    type: string
    sql: ${TABLE}.agent_name_order_level ;;
  }

  dimension: amount_actual_item_non_mattress_order_level {
    type: number
    sql: ${TABLE}.amount_actual_item_non_mattress_order_level ;;
  }

  dimension: amount_insurance_order_level {
    type: number
    sql: ${TABLE}.amount_insurance_order_level ;;
  }

  dimension: amount_mattress_order_level {
    type: number
    sql: ${TABLE}.amount_mattress_order_level ;;
  }

  dimension: amount_price_0_item_order_level {
    type: number
    sql: ${TABLE}.amount_price_0_item_order_level ;;
  }

  dimension: amount_service_order_level {
    type: number
    sql: ${TABLE}.amount_service_order_level ;;
  }

  dimension: billing_address_order_level {
    type: string
    sql: ${TABLE}.billing_address_order_level ;;
  }

  dimension: billing_city_order_level {
    type: string
    sql: ${TABLE}.billing_city_order_level ;;
  }

  dimension: billing_first_name_order_level {
    type: string
    sql: ${TABLE}.billing_first_name_order_level ;;
  }

  dimension: billing_last_name_order_level {
    type: string
    sql: ${TABLE}.billing_last_name_order_level ;;
  }

  dimension: billing_phone_order_level {
    type: string
    sql: ${TABLE}.billing_phone_order_level ;;
  }

  dimension: billing_provider {
    type: string
    sql: ${TABLE}.billing_provider ;;
  }

  dimension: billing_provider_order_level {
    type: string
    sql: ${TABLE}.billing_provider_order_level ;;
  }

  dimension: billing_state {
    type: string
    sql: ${TABLE}.billing_state ;;
  }

  dimension: billing_state_order_level {
    type: string
    sql: ${TABLE}.billing_state_order_level ;;
  }

  dimension: billing_zip_order_level {
    type: string
    sql: ${TABLE}.billing_zip_order_level ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: brand_order_level {
    type: string
    sql: ${TABLE}.brand_order_level ;;
  }

  dimension_group: canceled_order_level {
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
    sql: ${TABLE}.canceled_order_level ;;
  }

  dimension: card_company_order_level {
    type: string
    sql: ${TABLE}.card_company_order_level ;;
  }

  dimension: cart_id {
    type: string
    sql: ${TABLE}.cart_id ;;
  }

  dimension: cart_id_order_level {
    type: string
    sql: ${TABLE}.cart_id_order_level ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: channel_order_level {
    type: string
    sql: ${TABLE}.channel_order_level ;;
  }

  dimension_group: charge_created_order_level {
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
    sql: ${TABLE}.charge_created_order_level ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: company_order_level {
    type: string
    sql: ${TABLE}.company_order_level ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }

  dimension: coupon_code_order_level {
    type: string
    sql: ${TABLE}.coupon_code_order_level ;;
  }

  dimension: coupon_discount {
    type: number
    sql: ${TABLE}.coupon_discount ;;
  }

  dimension: coupon_id_order_level {
    type: string
    sql: ${TABLE}.coupon_id_order_level ;;
  }

  dimension: coupon_name {
    type: string
    sql: ${TABLE}.coupon_name ;;
  }

  dimension: coupon_name_order_level {
    type: string
    sql: ${TABLE}.coupon_name_order_level ;;
  }

  dimension: cs_order_channel_order_level {
    type: string
    sql: ${TABLE}.cs_order_channel_order_level ;;
  }

  dimension: currency_order_level {
    type: string
    sql: ${TABLE}.currency_order_level ;;
  }

  dimension_group: customer_first_purchase_date_order_level {
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
    sql: ${TABLE}.customer_first_purchase_date_order_level ;;
  }

  dimension: customer_source_order_level {
    type: string
    sql: ${TABLE}.customer_source_order_level ;;
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

  dimension_group: delivered_order_level {
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
    sql: ${TABLE}.delivered_order_level ;;
  }

  dimension: discount_order_level {
    type: number
    sql: ${TABLE}.discount_order_level ;;
  }

  dimension: dispute_amount_order_level {
    type: number
    sql: ${TABLE}.Dispute_Amount_order_level ;;
  }

  dimension_group: dispute_date_order_level {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dispute_date_order_level ;;
  }

  dimension: dispute_lost_amount_order_level {
    type: number
    sql: ${TABLE}.Dispute_lost_amount_order_level ;;
  }

  dimension: dma {
    type: string
    sql: ${TABLE}.DMA ;;
  }

  dimension: dma_order_level {
    type: string
    sql: ${TABLE}.DMA_order_level ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_order_level {
    type: string
    sql: ${TABLE}.email_order_level ;;
  }

  dimension: est_ship_time_updates {
    type: number
    sql: ${TABLE}.est_ship_time_updates ;;
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

  dimension_group: exchange_date_order_level {
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
    sql: ${TABLE}.exchange_date_order_level ;;
  }

  dimension: exchange_discount {
    type: number
    sql: ${TABLE}.exchange_discount ;;
  }

  dimension: exchanged_agent_email {
    type: string
    sql: ${TABLE}.exchanged_agent_email ;;
  }

  dimension: exchanged_agent_email_order_level {
    type: string
    sql: ${TABLE}.exchanged_agent_email_order_level ;;
  }

  dimension: exchanged_agent_first_name {
    type: string
    sql: ${TABLE}.exchanged_agent_first_name ;;
  }

  dimension: exchanged_agent_first_name_order_level {
    type: string
    sql: ${TABLE}.exchanged_agent_first_name_order_level ;;
  }

  dimension: exchanged_agent_id {
    type: string
    sql: ${TABLE}.exchanged_agent_id ;;
  }

  dimension: exchanged_agent_id_order_level {
    type: string
    sql: ${TABLE}.exchanged_agent_id_order_level ;;
  }

  dimension: exchanged_agent_last_name {
    type: string
    sql: ${TABLE}.exchanged_agent_last_name ;;
  }

  dimension: exchanged_agent_last_name_order_level {
    type: string
    sql: ${TABLE}.exchanged_agent_last_name_order_level ;;
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

  dimension: external_id_order_level {
    type: string
    sql: ${TABLE}.externalId_order_level ;;
  }

  dimension: external_po_order_level {
    type: string
    sql: ${TABLE}.externalPO_order_level ;;
  }

  dimension: f0_ {
    type: string
    sql: ${TABLE}.f0_ ;;
  }

  dimension: financing_fees_order_level {
    type: number
    sql: ${TABLE}.financingFees_order_level ;;
  }

  dimension: financing_fees_refund_order_level {
    type: number
    sql: ${TABLE}.financingFees_refund_order_level ;;
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

  dimension: forms_created {
    type: number
    sql: ${TABLE}.forms_created ;;
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

  dimension: geo_order_level {
    type: string
    sql: ${TABLE}.geo_order_level ;;
  }

  dimension: held_for_review_reason_order_level {
    type: string
    sql: ${TABLE}.held_for_review_reason_order_level ;;
  }

  dimension_group: held_for_review_ts_order_level {
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
    sql: ${TABLE}.held_for_review_ts_order_level ;;
  }

  dimension: inventory_key {
    type: string
    sql: ${TABLE}.inventory_key ;;
  }

  dimension: is_actual_item_non_mattress {
    type: yesno
    sql: ${TABLE}.is_actual_item_non_mattress ;;
  }

  dimension: is_dispute_order_level {
    type: yesno
    sql: ${TABLE}.is_dispute_order_level ;;
  }

  dimension: is_full_refund_order_level {
    type: yesno
    sql: ${TABLE}.is_full_refund_order_level ;;
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

  dimension: is_price_0_order_level {
    type: yesno
    sql: ${TABLE}.is_price_0_order_level ;;
  }

  dimension: is_price_charged_order_level {
    type: yesno
    sql: ${TABLE}.is_price_charged_order_level ;;
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

  dimension: is_tysons_corner_order_level {
    type: yesno
    sql: ${TABLE}.is_tysons_corner_order_level ;;
  }

  dimension: is_upgraded {
    type: yesno
    sql: ${TABLE}.is_upgraded ;;
  }

  dimension: is_upgraded_order_level {
    type: yesno
    sql: ${TABLE}.is_upgraded_order_level ;;
  }

  dimension: is_valid_order {
    type: yesno
    sql: ${TABLE}.is_valid_order ;;
  }

  dimension: is_valid_order_order_level {
    type: yesno
    sql: ${TABLE}.is_valid_order_order_level ;;
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

  dimension: marketing_campaign_order_level {
    type: string
    sql: ${TABLE}.marketing_campaign_order_level ;;
  }

  dimension: marketing_medium_order_level {
    type: string
    sql: ${TABLE}.marketing_medium_order_level ;;
  }

  dimension: marketing_platform_order_level {
    type: string
    sql: ${TABLE}.marketing_platform_order_level ;;
  }

  dimension: marketing_source_order_level {
    type: string
    sql: ${TABLE}.marketing_source_order_level ;;
  }

  dimension: mattress_coverage_order_level {
    type: number
    sql: ${TABLE}.mattress_coverage_order_level ;;
  }

  dimension: num_disputes_order_level {
    type: number
    sql: ${TABLE}.num_disputes_order_level ;;
  }

  dimension: one_click_order_order_level {
    type: yesno
    sql: ${TABLE}.one_click_order_order_level ;;
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

  dimension_group: order_created_order_level {
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
    sql: ${TABLE}.order_created_order_level ;;
  }

  dimension: order_discount {
    type: number
    sql: ${TABLE}.order_discount ;;
  }

  dimension: order_exchange_discount {
    type: number
    sql: ${TABLE}.order_exchange_discount ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_id_order_level {
    type: string
    sql: ${TABLE}.order_id_order_level ;;
  }

  dimension: order_price {
    type: number
    sql: ${TABLE}.order_price ;;
  }

  dimension: order_product_cogs_order_level {
    type: number
    sql: ${TABLE}.order_product_cogs_order_level ;;
  }

  dimension: order_shipping_cogs_order_level {
    type: number
    sql: ${TABLE}.order_shipping_cogs_order_level ;;
  }

  dimension: order_source {
    type: string
    sql: ${TABLE}.order_source ;;
  }

  dimension: order_source_order_level {
    type: string
    sql: ${TABLE}.order_source_order_level ;;
  }

  dimension: order_tax {
    type: number
    sql: ${TABLE}.order_tax ;;
  }

  dimension: order_tax_rate {
    type: number
    sql: ${TABLE}.order_tax_rate ;;
  }

  dimension: order_tax_rate_order_level {
    type: number
    sql: ${TABLE}.order_tax_rate_order_level ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }

  dimension: order_type_order_level {
    type: string
    sql: ${TABLE}.order_type_order_level ;;
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

  dimension_group: order_updated_order_level {
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
    sql: ${TABLE}.order_updated_order_level ;;
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

  dimension: parent_order_id {
    type: string
    sql: ${TABLE}.parent_order_id ;;
  }

  dimension: parent_order_id_order_level {
    type: string
    sql: ${TABLE}.parent_order_id_order_level ;;
  }

  dimension: payed_amount_order_level {
    type: number
    sql: ${TABLE}.payed_amount_order_level ;;
  }

  dimension: payment_declined_reason_order_level {
    type: string
    sql: ${TABLE}.payment_Declined_reason_order_level ;;
  }

  dimension: payment_fees_order_level {
    type: number
    sql: ${TABLE}.paymentFees_order_level ;;
  }

  dimension: payment_fees_refund_order_level {
    type: number
    sql: ${TABLE}.paymentFees_refund_order_level ;;
  }

  dimension: post_delivery_full_refund_amount {
    type: number
    sql: ${TABLE}.post_delivery_full_refund_amount ;;
  }

  dimension: post_delivery_partial_refund_amount {
    type: number
    sql: ${TABLE}.post_delivery_partial_refund_amount ;;
  }

  dimension: post_delivery_refund_exc_tax_order_level {
    type: number
    sql: ${TABLE}.post_delivery_refund_exc_tax_order_level ;;
  }

  dimension: pre_delivery_full_refund_amount {
    type: number
    sql: ${TABLE}.pre_delivery_full_refund_amount ;;
  }

  dimension: pre_delivery_partial_refund_amount {
    type: number
    sql: ${TABLE}.pre_delivery_partial_refund_amount ;;
  }

  dimension: pre_delivery_refund_exc_tax_order_level {
    type: number
    sql: ${TABLE}.pre_delivery_refund_exc_tax_order_level ;;
  }

  dimension: price_order_level {
    type: number
    sql: ${TABLE}.price_order_level ;;
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

  dimension: refund_amount_exc_tax_order_level {
    type: number
    sql: ${TABLE}.refund_amount_exc_tax_order_level ;;
  }

  dimension: refund_amount_order_level {
    type: number
    sql: ${TABLE}.refund_amount_order_level ;;
  }

  dimension_group: refund_order_level {
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
    sql: ${TABLE}.refund_order_level ;;
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

  dimension: return_forms {
    type: number
    sql: ${TABLE}.return_forms ;;
  }

  dimension: returns {
    type: number
    sql: ${TABLE}.returns ;;
  }

  dimension: review_reason_order_level {
    type: string
    sql: ${TABLE}.review_reason_order_level ;;
  }

  dimension: risk_score_order_level {
    type: number
    sql: ${TABLE}.risk_score_order_level ;;
  }

  dimension: route_efficiency_last_purchase {
    type: string
    sql: ${TABLE}.route_efficiency_last_purchase ;;
  }

  dimension: service_surcharge_order_level {
    type: number
    sql: ${TABLE}.service_surcharge_order_level ;;
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

  dimension: shipping_address_order_level {
    type: string
    sql: ${TABLE}.shipping_address_order_level ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}.shipping_city ;;
  }

  dimension: shipping_city_order_level {
    type: string
    sql: ${TABLE}.shipping_city_order_level ;;
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

  dimension: shipping_country_order_level {
    type: string
    sql: ${TABLE}.shipping_country_order_level ;;
  }

  dimension: shipping_first_name_order_level {
    type: string
    sql: ${TABLE}.shipping_first_name_order_level ;;
  }

  dimension: shipping_last_name_order_level {
    type: string
    sql: ${TABLE}.shipping_last_name_order_level ;;
  }

  dimension: shipping_phone_order_level {
    type: string
    sql: ${TABLE}.shipping_phone_order_level ;;
  }

  dimension: shipping_state {
    type: string
    sql: ${TABLE}.shipping_state ;;
  }

  dimension: shipping_state_order_level {
    type: string
    sql: ${TABLE}.shipping_state_order_level ;;
  }

  dimension: shipping_surcharge_order_level {
    type: number
    sql: ${TABLE}.shipping_surcharge_order_level ;;
  }

  dimension: shipping_zip {
    type: string
    sql: ${TABLE}.shipping_zip ;;
  }

  dimension: shipping_zip_order_level {
    type: string
    sql: ${TABLE}.shipping_zip_order_level ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: short_id_order_level {
    type: string
    sql: ${TABLE}.short_id_order_level ;;
  }

  dimension: single_price {
    type: number
    sql: ${TABLE}.single_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_order_level {
    type: string
    sql: ${TABLE}.status_order_level ;;
  }

  dimension: stripe_review_reason_order_level {
    type: string
    sql: ${TABLE}.stripe_review_reason_order_level ;;
  }

  dimension_group: survicate_review_created_order_level {
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
    sql: ${TABLE}.survicate_review_created_order_level ;;
  }

  dimension: survicate_score_order_level {
    type: number
    sql: ${TABLE}.survicate_score_order_level ;;
  }

  dimension: survicate_survey_order_level {
    type: string
    sql: ${TABLE}.survicate_survey_order_level ;;
  }

  dimension: tactic_order_level {
    type: string
    sql: ${TABLE}.tactic_order_level ;;
  }

  dimension: tax_order_level {
    type: number
    sql: ${TABLE}.tax_order_level ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}.tax_rate ;;
  }

  dimension: tax_ratio_order_level {
    type: number
    sql: ${TABLE}.tax_ratio_order_level ;;
  }

  dimension: taxable {
    type: yesno
    sql: ${TABLE}.Taxable ;;
  }

  dimension: taxable_price_order_level {
    type: number
    sql: ${TABLE}.taxable_price_order_level ;;
  }

  dimension: total_bases_order_level {
    type: number
    sql: ${TABLE}.total_bases_order_level ;;
  }

  dimension: total_matresses_order_level {
    type: number
    sql: ${TABLE}.total_matresses_order_level ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }

  dimension: tracking_number_last_purchase {
    type: string
    sql: ${TABLE}.tracking_number_last_purchase ;;
  }

  dimension: traffic_source_order_level {
    type: string
    sql: ${TABLE}.traffic_source_order_level ;;
  }

  dimension: trans_provider_order_level {
    type: string
    sql: ${TABLE}.trans_provider_order_level ;;
  }

  dimension_group: typeform_review_created_order_level {
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
    sql: ${TABLE}.typeform_review_created_order_level ;;
  }

  dimension: typeform_score_order_level {
    type: number
    sql: ${TABLE}.typeform_score_order_level ;;
  }

  dimension_group: uk_chosen_delivery_date_order_level {
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
    sql: ${TABLE}.UK_chosen_delivery_date_order_level ;;
  }

  dimension: upgrade_short_id {
    type: string
    sql: ${TABLE}.upgrade_short_id ;;
  }

  dimension: upgrade_short_id_order_level {
    type: string
    sql: ${TABLE}.upgrade_short_id_order_level ;;
  }

  dimension: usage_period {
    type: number
    sql: ${TABLE}.usage_period ;;
  }

  dimension: user_id_order_level {
    type: string
    sql: ${TABLE}.user_id_order_level ;;
  }

  dimension: wallet_order_level {
    type: string
    sql: ${TABLE}.wallet_order_level ;;
  }

  dimension: was_canceled {
    type: yesno
    sql: ${TABLE}.was_canceled ;;
  }

  dimension: was_canceled_order_level {
    type: yesno
    sql: ${TABLE}.was_canceled_order_level ;;
  }

  dimension: was_chat_order_level {
    type: yesno
    sql: ${TABLE}.was_chat_order_level ;;
  }

  dimension: was_delivered_order_level {
    type: yesno
    sql: ${TABLE}.was_delivered_order_level ;;
  }

  dimension: was_refunded {
    type: yesno
    sql: ${TABLE}.was_refunded ;;
  }

  dimension: was_refunded_order_level {
    type: yesno
    sql: ${TABLE}.was_refunded_order_level ;;
  }

  dimension: was_reordered_order_level {
    type: yesno
    sql: ${TABLE}.was_reordered_order_level ;;
  }

  dimension: was_returned {
    type: yesno
    sql: ${TABLE}.was_returned ;;
  }

  dimension: was_returned_order_level {
    type: yesno
    sql: ${TABLE}.was_returned_order_level ;;
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

  dimension: wgs_price_order_level {
    type: number
    sql: ${TABLE}.wgs_price_order_level ;;
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

  dimension_group: yotpo_review_created_order_level {
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
    sql: ${TABLE}.yotpo_review_created_order_level ;;
  }

  dimension: yotpo_score_order_level {
    type: number
    sql: ${TABLE}.yotpo_score_order_level ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      agent_name,
      coupon_name,
      original_product_name,
      exchanged_agent_last_name,
      exchanged_agent_first_name,
      product_name
    ]
  }



  ### dimention -date diff from order to delivey

  dimension: days_from_order_to_delivery {
    type: number
    sql: date_diff(${delivered_last_purchase_ts_date},${order_created_date},day);;
  }


  ####

  measure: total_orders {
    type: count_distinct
    sql: ${short_id_order_level} ;;
  }



  ####

  # Survicate #

  dimension: survicate_survey {
    type: string
    sql: ${TABLE}.survicate_survey_order_level ;;
  }

  dimension: survicate_survey_order {
    type: number
    hidden: yes
    sql: Case when lower(${survicate_survey_order_level}) = 'order confirmation nps' then 1
              when lower(${survicate_survey_order_level}) = 'in transit nps' then 2
              when lower(${survicate_survey_order_level}) = 'full order delivery nps' then 3
              when lower(${survicate_survey_order_level}) = 'one week check in nps' then 4
              when lower(${survicate_survey_order_level}) = '30 days check in nps' then 5
              when lower(${survicate_survey_order_level}) = '90 days check in nps' then 6
              when ${survicate_survey_order_level} is null then 99
              Else 100 End;;
  }

  dimension: survicate_score {
    type: number
    sql: ${TABLE}.survicate_score_order_level  ;;
  }

  dimension_group: survicate_review_created {
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
    sql: CAST(${TABLE}.survicate_review_created_order_level AS TIMESTAMP) ;;
  }

  # Survey Type Filter#

  filter: survey_type_filter {
    view_label: "Advanced"
    type: string
    suggest_dimension: survicate_survey_order_level
  }

  dimension: survey_type_satisfies_filter {
    view_label: "Advanced"
    type: yesno
    hidden: yes
    sql: {% condition survey_type_filter %} ${survicate_survey_order_level} {% endcondition %} ;;
  }

  # Survey NPS Score Calculation #

  measure: survicate_surveys_filled {
    type: count_distinct
    sql: Case when ${survicate_survey_order_level} is not null then ${short_id} End ;;
    filters: {
      field: survey_type_satisfies_filter
      value: "yes"
    }
  }

  measure: survicate_surveys_filled_percentage {
    type: number
    sql: ${survicate_surveys_filled}/nullif(${total_orders},0) ;;
    value_format: "0.0%"
  }

  # Survey NPS Score Calculation #
  #order confirmation nps#

  measure: detractors {
    type: count_distinct
    sql: Case when ${survicate_score}>=0 AND ${survicate_score}<=6 then ${short_id} End ;;
    value_format: "0.00"
    filters: {
      field: survey_type_satisfies_filter
      value: "yes"
    }
  }

  measure: passives {
    type: count_distinct
    sql: Case when ${survicate_score}>=7 AND ${survicate_score}<=8 then ${short_id} End ;;
    value_format: "0.00"
    filters: {
      field: survey_type_satisfies_filter
      value: "yes"
    }
  }

  measure: promoters {
    type: count_distinct
    sql: Case when ${survicate_score}>=9 AND ${survicate_score}<=10 then ${short_id} End ;;
    value_format: "0.00"
    filters: {
      field: survey_type_satisfies_filter
      value: "yes"
    }
  }

  measure: nps_score {
    type: number
    sql: (${promoters} - ${detractors})/nullif(${survicate_surveys_filled},0)*100 ;;
    value_format: "0.0"
  }


# date granularity - Order Date #

  parameter: Date_Granularity_order_date {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }

  dimension: Order_Date {
    label_from_parameter: Date_Granularity_order_date
    sql:
            CASE
             WHEN {% parameter Date_Granularity_order_date %} = 'Day' THEN cast(${order_created_date} as string)
             WHEN {% parameter Date_Granularity_order_date %} = 'Week' THEN cast(${order_created_week} as string)
             WHEN {% parameter Date_Granularity_order_date %} = 'Month' THEN cast(${order_created_month} as string)
             WHEN {% parameter Date_Granularity_order_date %} = 'Quarter' THEN cast(${order_created_quarter} as string)
             WHEN {% parameter Date_Granularity_order_date %} = 'Year' THEN cast(${order_created_year} as string)
            ELSE null
            END ;;
  }




}
