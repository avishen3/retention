view: admin_line_item_cogs_with_source_data_tbl {
  sql_table_name: `omega-post-184817.crm.admin_line_item_cogs_with_source_data_tbl`
    ;;

  dimension: actual_price {
    type: number
    sql: ${TABLE}.actual_price ;;
    value_format: "$#,##0"

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
    sql: timestamp(${TABLE}.exchange_date) ;;
  }






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

  dimension: marketing_campaign {
    type: string
    sql: ${TABLE}.marketing_campaign ;;
  }

  dimension: marketing_medium {
    type: string
    sql: ${TABLE}.marketing_medium ;;
  }

  dimension: marketing_platform {
    type: string
    sql: ${TABLE}.marketing_platform ;;
  }

  dimension: marketing_source {
    type: string
    sql: ${TABLE}.marketing_source ;;
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
    sql: CAST(${TABLE}.order_created AS TIMESTAMP) ;;
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

  ## ILAN - ADMIN_ORDER_COGES (ECOMMERCE)
  dimension: mattress_model {
    type: string
    sql: Case when regexp_contains(lower(${sku}),"ncclasmattress") then "nectar 3.0"
              when regexp_contains(lower(${sku}),"ncchilmattress") then "nectar premier"
              when regexp_contains(lower(${sku}),"ncregmattress") then "nectar copper"
              when regexp_contains(lower(${sku}),"dcttmattress") then "dc mattress"
              when regexp_contains(lower(${sku}),"dcpremier") then "dc premier"
              when regexp_contains(lower(${sku}),'dcpremrest') then 'dc premier rest'
          Else "other" End ;;
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
    value_format: "$#,##0"
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

    ## ILAN - ADMIN_ORDER_COGES (ECOMMERCE)

  dimension:  order_by_for_product_titel {
    label: "category_mapping_order"
    type:  number
    sql: case
          when lower(${product_title}) = "the nectar mattress" then 1
          when lower(${product_title}) = "nectar premier mattress" then 2
          when lower(${product_title}) = "nectar premier copper mattress" then 3
          when lower(${product_title}) = "the nectar lush mattress" then 4
          when lower(${product_title}) = "the dreamcloud mattress" then 5
          when lower(${product_title}) = "the dreamcloud premier" then 6
          when lower(${product_title}) = 'the dreamcloud premier rest' then 7
          else 999
        end ;;
    hidden: yes
  }


  dimension: product_title_mapping {
    type: string
    sql: Case when lower(${brand}) in ('nectar','dreamcloud') AND lower(${category}) in ('mattress') and regexp_contains(lower(${sku}),"ncmattress") then "nectar 2.0"
              when lower(${brand}) in ('nectar','dreamcloud') AND lower(${category}) in ('mattress') and regexp_contains(lower(${sku}),"ncclasmattress") then "nectar 3.0"
              when lower(${brand}) in ('nectar','dreamcloud') AND lower(${category}) in ('mattress') and regexp_contains(lower(${sku}),"ncchilmattress") then "nectar premier"
              when lower(${brand}) in ('nectar','dreamcloud') AND lower(${category}) in ('mattress') and regexp_contains(lower(${sku}),"ncregmattress") then "nectar copper"
              when lower(${brand}) in ('nectar','dreamcloud') AND lower(${category}) in ('mattress') and regexp_contains(lower(${sku}),"nlmattress") then "nectar lush"
              when lower(${brand}) in ('nectar','dreamcloud') AND lower(${category}) in ('mattress') and regexp_contains(lower(${sku}),"dcmattress|dcpremiermatt") then "dc premier"
              when lower(${brand}) in ('nectar','dreamcloud') AND lower(${category}) in ('mattress') and regexp_contains(lower(${sku}),"dcpremrestmatt") then "dc premier rest"
              when lower(${brand}) in ('nectar','dreamcloud') AND lower(${category}) in ('mattress') and regexp_contains(lower(${sku}),"dcttmattress") then "the dreamcloud mattress"
          Else 'other' End ;;
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

  dimension: single_price {
    type: number
    sql: ${TABLE}.single_price ;;
    value_format: "$#,##0"

  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: source_app_id {
    type: string
    sql: ${TABLE}.source_app_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tactic {
    type: string
    sql: ${TABLE}.tactic ;;
  }

  dimension: tariff {
    type: number
    sql: ${TABLE}.tariff ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}.tax_rate ;;
  }

  dimension: tax_rate_after_exchange_discount {
    type: number
    sql: ${TABLE}.tax_rate_after_exchange_discount ;;
  }

  dimension: taxable {
    type: yesno
    sql: ${TABLE}.Taxable ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
    value_format: "$#,##0"

  }

  dimension: tracking_number_last_purchase {
    type: string
    sql: ${TABLE}.tracking_number_last_purchase ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
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
      agent_name,
      coupon_name,
      exchanged_agent_first_name,
      original_product_name,
      exchanged_agent_last_name,
      product_name
    ]
  }



    ## ILAN - ADMIN_ORDER_COGES (ECOMMERCE)

  measure: sum_total_price {
    type: sum
    sql: ${total_price} ;;
    value_format: "$#,##0"
  }

  dimension: internal_external_insurance {
    type: string
    sql: Case when lower(${product_id}) = "added from ods_mulberry_details" then "External" ELse "Admin" End ;;
  }


  measure: sum_total_price_after_discount {
    type: sum
    sql: ${total_price}-${Item_Attributed_Discount} ;;
    value_format: "$#,##0"
    drill_fields: [short_id, brand, order_created_date, sku, category, product_name,raw_product_quantity, total_price, Item_Attributed_Discount, sum_total_price_after_discount,
      internal_external_insurance]
  }

  measure: sum_gross_profit {
    type: sum
    sql: ${total_price}-${Item_Attributed_Discount}-${raw_product_cost}-${raw_shipping_cost} ;;
    value_format: "$#,##0"
    drill_fields: [short_id, brand, order_created_date, sku, category, product_name,raw_product_quantity, total_price, Item_Attributed_Discount, sum_total_price_after_discount,
      internal_external_insurance]
  }

  measure: sum_total_fees {
    type: sum
    sql: Case when lower(${category}) = "service" then ${total_price}-${Item_Attributed_Discount} End ;;
    value_format: "$#,##0"
    drill_fields: [shipping_state, short_id, brand, order_created_date, sku, category, product_name,raw_product_quantity, total_price, Item_Attributed_Discount, sum_total_price_after_discount]
  }

  measure: sum_total_fees_refunded {
    type: sum
    sql: Case when lower(${category}) = "service" then ${pre_delivery_partial_refund_amount}+${pre_delivery_full_refund_amount} End ;;
    value_format: "$#,##0"
    drill_fields: [shipping_state, short_id, brand, order_created_date, sku, category, product_name,raw_product_quantity, total_price, Item_Attributed_Discount, sum_total_price_after_discount]
  }

  measure: total_mattress_quantity {
    type: sum
    sql: Case when lower(${category}) = "mattress" then ${raw_product_quantity} End ;;
    value_format: "#,##0"
    drill_fields: [shipping_state, short_id, brand, order_created_date, sku, category, product_name,raw_product_quantity, total_price, Item_Attributed_Discount, sum_total_price_after_discount
      , pre_delivery_partial_refund_amount, pre_delivery_full_refund_amount]
  }

  measure: total_mattress_quantity_refunded {
    type: sum
    sql: Case when lower(${category}) = "mattress" AND (${pre_delivery_full_refund_amount} is not null
      OR ${pre_delivery_partial_refund_amount} is not null) then ${raw_product_quantity} End ;;
    value_format: "#,##0"
    drill_fields: [shipping_state, short_id, brand, order_created_date, sku, category, product_name,raw_product_quantity, total_price, Item_Attributed_Discount, sum_total_price_after_discount
      , pre_delivery_partial_refund_amount, pre_delivery_full_refund_amount]
  }

  measure: total_foundation_quantity {
    type: sum
    sql: Case when lower(${category}) = "foundation" then ${raw_product_quantity} End ;;
    value_format: "#,##0"
    drill_fields: [shipping_state, short_id, brand, order_created_date, sku, category, product_name,raw_product_quantity, total_price, Item_Attributed_Discount, sum_total_price_after_discount
      , pre_delivery_partial_refund_amount, pre_delivery_full_refund_amount]
  }

  measure: total_foundation_quantity_refunded {
    type: sum
    sql: Case when lower(${category}) = "foundation" AND (${pre_delivery_full_refund_amount} is not null
      OR ${pre_delivery_partial_refund_amount} is not null) then ${raw_product_quantity} End ;;
    value_format: "#,##0"
    drill_fields: [shipping_state, short_id, brand, order_created_date, sku, category, product_name,raw_product_quantity, total_price, Item_Attributed_Discount, sum_total_price_after_discount
      , pre_delivery_partial_refund_amount, pre_delivery_full_refund_amount]
  }

  measure: total_adjustbales_quantity {
    type: sum
    sql: Case when lower(${category}) = "adjustable frame" then ${raw_product_quantity} End ;;
    value_format: "#,##0"
    drill_fields: [shipping_state, short_id, brand, order_created_date, sku, category, product_name,raw_product_quantity, total_price, Item_Attributed_Discount, sum_total_price_after_discount]
  }

  measure: total_adjustbales_quantity_refunded {
    type: sum
    sql: Case when lower(${category}) = "adjustable frame" AND (${pre_delivery_full_refund_amount} is not null
      OR ${pre_delivery_partial_refund_amount} is not null) then ${raw_product_quantity} End ;;
    value_format: "#,##0"
    drill_fields: [shipping_state, short_id, brand, order_created_date, sku, category, product_name,raw_product_quantity, total_price, Item_Attributed_Discount, sum_total_price_after_discount]
  }

  measure: total_headboards_quantity {
    type: sum
    sql: Case when lower(${category}) = "headboard" then ${raw_product_quantity} End ;;
    value_format: "#,##0"
    drill_fields: [shipping_state, short_id, brand, order_created_date, sku, category, product_name,raw_product_quantity, total_price, Item_Attributed_Discount, sum_total_price_after_discount]
  }

  measure: total_headboards_quantity_refunded {
    type: sum
    sql: Case when lower(${category}) = "headboard" AND (${pre_delivery_full_refund_amount} is not null
      OR ${pre_delivery_partial_refund_amount} is not null) then ${raw_product_quantity} End ;;
    value_format: "#,##0"
    drill_fields: [shipping_state, short_id, brand, order_created_date, sku, category, product_name,raw_product_quantity, total_price, Item_Attributed_Discount, sum_total_price_after_discount]
  }


  dimension: single_price_after_discount {
    type: number
    sql: (${total_price} - ${Item_Attributed_Discount})/${raw_product_quantity} ;;
    value_format: "$#,##0"
  }

  measure: avg_single_price_after_discount {
    type: average
    sql: ${single_price_after_discount} ;;
    value_format: "$#,##0"
  }



  dimension: single_product_cost {
    type: number
    sql: ${raw_product_cost}/${raw_product_quantity} ;;
    value_format: "$#,##0"
  }

  dimension: single_shipping_cost {
    type: number
    sql: ${raw_shipping_cost}/${raw_product_quantity} ;;
    value_format: "$#,##0"
  }

  dimension: raw_product_cost {
    type: number
    sql: ${TABLE}.product_cost ;;
  }

  dimension: single_gross_profit {
    type: number
    sql: (${total_price} - ${Item_Attributed_Discount} - ${raw_product_cost} - ${raw_shipping_cost})/${raw_product_quantity} ;;
    value_format: "$#,##0"
  }

  dimension: Item_Attributed_Discount {
    type: number
    sql: ${TABLE}.Item_Attributed_Discount ;;
  }

  dimension: Item_Attributed_Discount_tier {
    type: tier
    tiers: [0,5,50,100,200]
    style: relational
    sql: ifnull(${Item_Attributed_Discount},0) ;;
  }

  measure: sum_Item_Attributed_Discount {
    type: sum
    sql: ${Item_Attributed_Discount} ;;
    value_format: "$#,##0"
  }

  ##dimension: wgs_full_price {
  ##  type: number
  ##  sql: ${TABLE}.wgs_full_price ;;
  ## }

  dimension: item_level_gross_revenue {
    type: number
    sql: ${total_price} - ${Item_Attributed_Discount} ;;
  }

  measure: agg_item_level_gross_revenue {
    type: sum
    sql: ${item_level_gross_revenue} ;;
    value_format: "$#,##0"
  }

  parameter: aggregation_selector {
    type: unquoted
    allowed_value: {
      label: "gross_sales"
      value: "gross_sales"
    }
    allowed_value: {
      label: "units"
      value: "units"
    }
  }

  measure: aggregation_selector_dimension {
    type: number
    sql:
      {% if aggregation_selector._parameter_value == 'gross_sales' %}
        ${agg_item_level_gross_revenue}
      {% elsif aggregation_selector._parameter_value == 'units' %}
        ${product_quantity}
      {% else %}
        null
      {% endif %};;
    label_from_parameter: aggregation_selector
    value_format: "#,##0"
    drill_fields: [short_id, brand]
  }


  measure: agg_item_level_gross_revenue_mattress {
    type: sum
    sql: Case when lower(${category}) = "mattress" then ${item_level_gross_revenue} END;;
    value_format: "$#,##0.00"
  }

  measure: agg_item_level_gross_revenue_foundation {
    type: sum
    sql: Case when lower(${category}) = "foundation" then ${item_level_gross_revenue} END ;;
    value_format: "$#,##0.00"
  }



  measure: exchange_total_price {
    type: sum
    sql: ${exchanged_original_item_total_price} ;;
    value_format: "$#,##0"
  }

  measure: exchange_coupon_discount {
    type: sum
    sql: ${exchanged_original_item_coupon_discount} ;;
    value_format: "$#,##0"
  }

  measure: exchange_product_cost {
    type: sum
    sql: ${exchanged_original_item_product_cost_estimated} ;;
    value_format: "$#,##0"
  }

  measure: exchange_shipping_cost {
    type: sum
    sql: ${exchanged_original_item_shipping_cost_estimated} ;;
    value_format: "$#,##0"
  }



  dimension: sku_mapping_mattress {
    type: string
    sql: Case when regexp_contains(lower(${sku}),"ncmattress") then "nectar 2.0"
              when regexp_contains(lower(${sku}),"ncclasmattress") then "nectar 3.0"
              when regexp_contains(lower(${sku}),"ncchilmattress") then "premier"
              when regexp_contains(lower(${sku}),"ncregmattress") then "copper"
              when regexp_contains(lower(${sku}),"nlmattress") then "nectar lush"
              when regexp_contains(lower(${sku}),"dcmattress|dcpremiermatt") then "dc premier"
              when regexp_contains(lower(${sku}),"dcttmattress") then "dc tighttop"
              when regexp_contains(lower(${sku}),"dcpremrestmatt") then "dc premier rest"
          Else ${sku} End ;;
  }

  dimension: sku_mapping_original_item {
    type: string
    sql: Case when regexp_contains(lower(${exchanged_original_item_sku}),"ncmattress") then "nectar 2.0"
              when regexp_contains(lower(${exchanged_original_item_sku}),"ncclasmattress") then "nectar 3.0"
              when regexp_contains(lower(${exchanged_original_item_sku}),"ncchilmattress") then "premier"
              when regexp_contains(lower(${exchanged_original_item_sku}),"ncregmattress") then "copper"
              when regexp_contains(lower(${exchanged_original_item_sku}),"nlmattress") then "nectar lush"
              when regexp_contains(lower(${exchanged_original_item_sku}),"dcmattress|dcpremiermatt") then "dc premier"
              when regexp_contains(lower(${exchanged_original_item_sku}),"dcttmattress") then "dc tighttop"
              when regexp_contains(lower(${exchanged_original_item_sku}),"dcpremrestmatt") then "dc premier rest"
          Else ${exchanged_original_item_sku} End ;;
  }


  dimension: refund_rate_per_original_model {
    type: number
    sql: Case when ${sku_mapping_original_item} = 'nectar 3.0' then 0.125
              when ${sku_mapping_original_item} = 'premier' then 0.135
              when ${sku_mapping_original_item} = 'copper' then 0.145
              when ${sku_mapping_original_item} = 'dc tighttop' then 0.155
              when ${sku_mapping_original_item} = 'dc premier' then 0.165
              when ${sku_mapping_original_item} = 'dc premier rest' then 0.24
              Else 0.1
         End
    ;;
  }

  dimension: refund_rate_per_model {
    type: number
    sql: Case when ${sku_mapping_mattress} = 'nectar 3.0' then 0.125
              when ${sku_mapping_mattress} = 'premier' then 0.135
              when ${sku_mapping_mattress} = 'copper' then 0.145
              when ${sku_mapping_mattress} = 'dc tighttop' then 0.155
              when ${sku_mapping_mattress} = 'dc premier' then 0.165
              when ${sku_mapping_mattress} = 'dc premier rest' then 0.24
              Else 0.1
         End
    ;;
  }

  measure: original_item_refunds {
    type: sum
    sql: ${refund_rate_per_original_model}*(${exchanged_original_item_total_price}-${exchanged_original_item_coupon_discount}) ;;
    value_format: "$#,##0"
  }

  measure: item_refunds {
    type: sum
    sql: ${refund_rate_per_model}*(${total_price}-${Item_Attributed_Discount}) ;;
    value_format: "$#,##0"
  }



  measure: sum_purchases {
    type: sum
    sql: ${purchases} ;;
  }



  measure: sum_reships {
    type: sum
    sql: ${reships} ;;
  }

  dimension: raw_product_quantity {
    type: number
    sql: ${TABLE}.item_quantity ;;
  }

  measure: product_quantity {
    type: sum
    sql: ${raw_product_quantity} ;;
    drill_fields: [short_id,coupon_code, product_quantity]
  }

  measure: shipped_qty {
    type: sum
    value_format: "#,##0"
    sql: Case when ((${first_transit_last_purchase_ts_date} is not null and ${tracking_number_last_purchase} is not null)
                OR (regexp_contains(lower(${shipment_status_fulfill2_last_purchase}),"returned") and ${tracking_number_last_purchase} is not null)
                OR (lower(${shipment_status_fulfill2_last_purchase}) in ("lost","delivered") and ${tracking_number_last_purchase} is not null))
                AND lower(${shipment_status_fulfill2_last_purchase}) not in ("revoked","failed","failure")
                THEN ${raw_product_quantity} END ;;
  }

  measure: delivered_items {
    type: sum
    sql: Case when lower(${shipment_status_fulfill2_last_purchase}) = "delivered" then ${raw_product_quantity} End;;
    drill_fields: [short_id,coupon_code, product_quantity]
  }
  #add reship status that was delviered#

  measure: items_fully_refunded_with_no_shipment_created {
    type: sum
    sql: Case when ${shipment_id_last_purchase} is null AND lower(${refund_type}) = "full refund" then ${raw_product_quantity} End;;
    drill_fields: [short_id,coupon_code, product_quantity]
  }

  measure: items_not_refunded_with_no_shipment_created {
    type: sum
    sql: Case when ${shipment_id_last_purchase} is null AND lower(${refund_type}) in ("","no refund") then ${raw_product_quantity} End;;
    drill_fields: [short_id,coupon_code, product_quantity]
  }



  measure: Mattresses_sold {
    type: sum
    sql: ifnull(${raw_product_quantity},0) ;;
    filters: {
      field: Mattresses_sold_condition
      value: "Yes"
    }
  }
  dimension: Mattresses_sold_condition {
    hidden: yes
    type: yesno
    sql: lower(${category}) in ("mattress") ;;
  }



  dimension: raw_shipping_cost {
    type: number
    sql: ${TABLE}.shipping_cost ;;
  }



  measure: foundation_attached {
    type: count_distinct
    sql: Case when lower(${category}) = 'foundation'
      THEN ${short_id} END ;;
  }

  measure: adjustable_attached {
    type: count_distinct
    sql: Case when lower(${category}) = 'adjustable frame'
      THEN ${short_id} END ;;
  }

  measure: headboard_attached {
    type: count_distinct
    sql: Case when lower(${category}) = 'headboard'
      THEN ${short_id} END ;;
  }

  measure: metal_frame_attached {
    type: count_distinct
    sql: Case when lower(${category}) = 'metal frame'
      THEN ${short_id} END ;;
  }

  measure: sheets_attached {
    type: count_distinct
    sql: Case when lower(${category}) = 'sheets'
      THEN ${short_id} END ;;
  }

  measure: mattress_protector_attached {
    type: count_distinct
    sql: Case when lower(${category}) = 'mattress protector'
      THEN ${short_id} END ;;
  }

  measure: weighted_blanket_attached {
    type: count_distinct
    sql: Case when lower(${category}) = 'weighted blanket'
      THEN ${short_id} END ;;
  }

  measure: pillow_attached {
    type: count_distinct
    sql: Case when lower(${category}) = 'pillow'
      THEN ${short_id} END ;;
  }

  measure: mulberry_attached {
    type: count_distinct
    sql: Case when regexp_contains(lower(${product_name}),'accidental-mattress-coverage')
      THEN ${short_id} END ;;
  }


  measure: total_orders {
    type: count_distinct
    sql: Case when ${parent_order_id} is null and ${is_price_0} is FALSE
      THEN ${short_id} End ;;
  }

  measure: pending_payment_orders {
    type: count_distinct
    sql: Case when ${parent_order_id} is null and ${is_price_0} is FALSE AND lower(${status}) = "pendingpayment"
      THEN ${short_id} End ;;
  }

  measure: payment_failure_orders {
    type: count_distinct
    sql: Case when ${parent_order_id} is null and ${is_price_0} is FALSE AND lower(${status}) = "paymentfailure"
      THEN ${short_id} End ;;
  }

  measure: invalid_orders {
    type: count_distinct
    sql: Case when ${parent_order_id} is null and ${is_price_0} is FALSE AND lower(${status}) = "invalid"
      THEN ${short_id} End ;;
  }

  measure: under_review {
    type: count_distinct
    sql: Case when ${parent_order_id} is null and ${is_price_0} is FALSE AND lower(${status}) = "new"
      THEN ${short_id} End ;;
  }



}
