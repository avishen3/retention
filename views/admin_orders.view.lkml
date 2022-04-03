view: admin_orders {
  sql_table_name: `omega-post-184817.daily_perf_new_model.admin_orders`
    ;;

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

  dimension: amount_actual_item_non_mattress {
    type: number
    sql: ${TABLE}.amount_actual_item_non_mattress ;;
  }

  dimension: amount_insurance {
    type: number
    sql: ${TABLE}.amount_insurance ;;
  }

  dimension: amount_mattress {
    type: number
    sql: ${TABLE}.amount_mattress ;;
  }

  dimension: amount_price_0_item {
    type: number
    sql: ${TABLE}.amount_price_0_item ;;
  }

  dimension: amount_service {
    type: number
    sql: ${TABLE}.amount_service ;;
  }

  dimension: billing_address {
    type: string
    sql: ${TABLE}.billing_address ;;
  }

  dimension: billing_city {
    type: string
    sql: ${TABLE}.billing_city ;;
  }

  dimension: billing_first_name {
    type: string
    sql: ${TABLE}.billing_first_name ;;
  }

  dimension: billing_last_name {
    type: string
    sql: ${TABLE}.billing_last_name ;;
  }

  dimension: billing_phone {
    type: string
    sql: ${TABLE}.billing_phone ;;
  }

  dimension: billing_provider {
    type: string
    sql: ${TABLE}.billing_provider ;;
  }

  dimension: billing_state {
    type: string
    sql: ${TABLE}.billing_state ;;
  }

  dimension: billing_zip {
    type: string
    sql: ${TABLE}.billing_zip ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension_group: canceled {
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
    sql: ${TABLE}.canceled ;;
  }

  dimension: card_company {
    type: string
    sql: ${TABLE}.card_company ;;
  }

  dimension: cart_id {
    type: string
    sql: ${TABLE}.cart_id ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension_group: charge_created {
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
    sql: ${TABLE}.charge_created ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }

  dimension: coupon_id {
    type: string
    sql: ${TABLE}.coupon_id ;;
  }

  dimension: coupon_name {
    type: string
    sql: ${TABLE}.coupon_name ;;
  }

  dimension: cs_order_channel {
    type: string
    sql: ${TABLE}.cs_order_channel ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension_group: customer_first_purchase {
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
    sql: ${TABLE}.customer_first_purchase_date ;;
  }

  dimension: customer_source {
    type: string
    sql: ${TABLE}.customer_source ;;
  }

  dimension_group: delivered {
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
    sql: ${TABLE}.delivered ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: dispute_amount {
    type: number
    sql: ${TABLE}.Dispute_Amount ;;
  }

  dimension_group: dispute {
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
    sql: ${TABLE}.dispute_date ;;
  }

  dimension: dispute_lost_amount {
    type: number
    sql: ${TABLE}.Dispute_lost_amount ;;
  }

  dimension: dma {
    type: string
    sql: ${TABLE}.DMA ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.externalId ;;
  }

  dimension: external_po {
    type: string
    sql: ${TABLE}.externalPO ;;
  }

  dimension: financing_fees {
    type: number
    sql: ${TABLE}.financingFees ;;
  }

  dimension: financing_fees_refund {
    type: number
    sql: ${TABLE}.financingFees_refund ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: held_for_review_reason {
    type: string
    sql: ${TABLE}.held_for_review_reason ;;
  }

  dimension_group: held_for_review_ts {
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
    sql: ${TABLE}.held_for_review_ts ;;
  }

  dimension: is_dispute {
    type: yesno
    sql: ${TABLE}.is_dispute ;;
  }

  dimension: is_full_refund {
    type: yesno
    sql: ${TABLE}.is_full_refund ;;
  }

  dimension: is_price_0 {
    type: yesno
    sql: ${TABLE}.is_price_0 ;;
  }

  dimension: is_price_charged {
    type: yesno
    sql: ${TABLE}.is_price_charged ;;
  }

  dimension: is_tysons_corner {
    type: yesno
    sql: ${TABLE}.is_tysons_corner ;;
  }

  dimension: is_upgraded {
    type: yesno
    sql: ${TABLE}.is_upgraded ;;
  }

  dimension: is_valid_order {
    type: yesno
    sql: ${TABLE}.is_valid_order ;;
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

  dimension: mattress_coverage {
    type: number
    sql: ${TABLE}.mattress_coverage ;;
  }

  dimension: num_disputes {
    type: number
    sql: ${TABLE}.num_disputes ;;
  }

  dimension: one_click_order {
    type: yesno
    sql: ${TABLE}.one_click_order ;;
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

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_product_cogs {
    type: number
    sql: ${TABLE}.order_product_cogs ;;
  }

  dimension: order_shipping_cogs {
    type: number
    sql: ${TABLE}.order_shipping_cogs ;;
  }

  dimension: order_source {
    type: string
    sql: ${TABLE}.order_source ;;
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

  dimension: parent_order_id {
    type: string
    sql: ${TABLE}.parent_order_id ;;
  }

  dimension: payed_amount {
    type: number
    sql: ${TABLE}.payed_amount ;;
  }

  dimension: payment_declined_reason {
    type: string
    sql: ${TABLE}.payment_Declined_reason ;;
  }

  dimension: payment_fees {
    type: number
    sql: ${TABLE}.paymentFees ;;
  }

  dimension: payment_fees_refund {
    type: number
    sql: ${TABLE}.paymentFees_refund ;;
  }

  dimension: post_delivery_refund_exc_tax {
    type: number
    sql: ${TABLE}.post_delivery_refund_exc_tax ;;
  }

  dimension: pre_delivery_refund_exc_tax {
    type: number
    sql: ${TABLE}.pre_delivery_refund_exc_tax ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension_group: refund {
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
    sql: ${TABLE}.refund ;;
  }

  dimension: refund_amount {
    type: number
    sql: ${TABLE}.refund_amount ;;
  }

  dimension: refund_amount_exc_tax {
    type: number
    sql: ${TABLE}.refund_amount_exc_tax ;;
  }

  dimension: review_reason {
    type: string
    sql: ${TABLE}.review_reason ;;
  }

  dimension: risk_score {
    type: number
    sql: ${TABLE}.risk_score ;;
  }

  dimension: service_surcharge {
    type: number
    sql: ${TABLE}.service_surcharge ;;
  }

  dimension: shipping_address {
    type: string
    sql: ${TABLE}.shipping_address ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}.shipping_city ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}.shipping_country ;;
  }

  dimension: shipping_first_name {
    type: string
    sql: ${TABLE}.shipping_first_name ;;
  }

  dimension: shipping_last_name {
    type: string
    sql: ${TABLE}.shipping_last_name ;;
  }

  dimension: shipping_phone {
    type: string
    sql: ${TABLE}.shipping_phone ;;
  }

  dimension: shipping_state {
    type: string
    sql: ${TABLE}.shipping_state ;;
  }

  dimension: shipping_surcharge {
    type: number
    sql: ${TABLE}.shipping_surcharge ;;
  }

  dimension: shipping_zip {
    type: string
    sql: ${TABLE}.shipping_zip ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: stripe_review_reason {
    type: string
    sql: ${TABLE}.stripe_review_reason ;;
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
    datatype: datetime
    sql: ${TABLE}.survicate_review_created ;;
  }

  dimension: survicate_score {
    type: number
    sql: ${TABLE}.survicate_score ;;
  }

  dimension: survicate_survey {
    type: string
    sql: ${TABLE}.survicate_survey ;;
  }

  dimension: tactic {
    type: string
    sql: ${TABLE}.tactic ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }

  dimension: tax_ratio {
    type: number
    sql: ${TABLE}.tax_ratio ;;
  }

  dimension: taxable_price {
    type: number
    sql: ${TABLE}.taxable_price ;;
  }

  dimension: total_bases {
    type: number
    sql: ${TABLE}.total_bases ;;
  }

  dimension: total_matresses {
    type: number
    sql: ${TABLE}.total_matresses ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
  }

  dimension: trans_provider {
    type: string
    sql: ${TABLE}.trans_provider ;;
  }

  dimension_group: typeform_review_created {
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
    sql: ${TABLE}.typeform_review_created ;;
  }

  dimension: typeform_score {
    type: number
    sql: ${TABLE}.typeform_score ;;
  }

  dimension_group: uk_chosen_delivery {
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
    sql: ${TABLE}.UK_chosen_delivery_date ;;
  }

  dimension: upgrade_short_id {
    type: string
    sql: ${TABLE}.upgrade_short_id ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: wallet {
    type: string
    sql: ${TABLE}.wallet ;;
  }

  dimension: was_canceled {
    type: yesno
    sql: ${TABLE}.was_canceled ;;
  }

  dimension: was_chat {
    type: yesno
    sql: ${TABLE}.was_chat ;;
  }

  dimension: was_delivered {
    type: yesno
    sql: ${TABLE}.was_delivered ;;
  }

  dimension: was_refunded {
    type: yesno
    sql: ${TABLE}.was_refunded ;;
  }

  dimension: was_reordered {
    type: yesno
    sql: ${TABLE}.was_reordered ;;
  }

  dimension: was_returned {
    type: yesno
    sql: ${TABLE}.was_returned ;;
  }

  dimension: wgs_price {
    type: number
    sql: ${TABLE}.wgs_price ;;
  }

  dimension_group: yotpo_review_created {
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
    sql: ${TABLE}.yotpo_review_created ;;
  }

  dimension: yotpo_score {
    type: number
    sql: ${TABLE}.yotpo_score ;;
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
      billing_first_name,
      billing_last_name,
      shipping_first_name,
      shipping_last_name
    ]
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

measure: total_price {
  type: sum
  sql: ${price} ;;

}

  measure: total_tax{
    type: sum
    sql: ${tax} ;;
  }

  measure: total_revenue {
    type: sum
    sql: ${price}-${tax} ;;

  }

  measure: total_refound_amount {
    type: sum
    sql: ${refund_amount} ;;

  }

  measure: total_refund_amount_exc_tax {
    type: sum
    sql: ${refund_amount_exc_tax} ;;
  }

  measure: total_commision_amount{
    type: sum
    sql: ${price}-${tax}-${refund_amount}  ;;
  }





}
