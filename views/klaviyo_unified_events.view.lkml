view: klaviyo_unified_events {
  sql_table_name: `omega-post-184817.customer.klaviyo_unified_events` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: campaignvariant {
    type: string
    sql: ${TABLE}.campaignvariant ;;
  }
  dimension: cartid {
    type: string
    sql: ${TABLE}.cartid ;;
  }
  dimension: categories {
    type: string
    sql: ${TABLE}.categories ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: checkouturl {
    type: string
    sql: ${TABLE}.checkouturl ;;
  }
  dimension: client_os {
    type: string
    sql: ${TABLE}.client_os ;;
  }
  dimension: client_os_family {
    type: string
    sql: ${TABLE}.client_os_family ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: custom_message_interaction {
    type: string
    sql: ${TABLE}.custom_message_interaction ;;
  }
  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }
  dimension_group: datetime {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.datetime ;;
  }
  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }
  dimension: discount_code {
    type: string
    sql: ${TABLE}.discount_code ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: email_domain {
    type: string
    sql: ${TABLE}.email_domain ;;
  }
  dimension: email_subject {
    type: string
    sql: ${TABLE}.email_subject ;;
  }
  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }
  dimension: event_properties_custom_checkout_phone_number {
    type: string
    sql: ${TABLE}.event_properties_custom_checkout_phone_number ;;
  }
  dimension: event_properties_id {
    type: string
    sql: ${TABLE}.event_properties_id ;;
  }
  dimension_group: event_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.event_ts ;;
  }
  dimension: flow_id {
    type: string
    sql: ${TABLE}.flow_id ;;
  }
  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }
  dimension: hashed_email {
    type: string
    sql: ${TABLE}.hashed_email ;;
  }
  dimension: hashed_phone {
    type: string
    sql: ${TABLE}.hashed_phone ;;
  }
  dimension: imageurl {
    type: string
    sql: ${TABLE}.imageurl ;;
  }
  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }
  dimension_group: lead_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.lead_created ;;
  }
  dimension: lpurl {
    type: string
    sql: ${TABLE}.lpurl ;;
  }
  dimension: marketing_consent {
    type: string
    sql: ${TABLE}.marketing_consent ;;
  }
  dimension: message_id {
    type: string
    sql: ${TABLE}.message_id ;;
  }
  dimension: page {
    type: string
    sql: ${TABLE}.page ;;
  }
  dimension: person_custom_checkout_phone_number {
    type: string
    sql: ${TABLE}.person_custom_checkout_phone_number ;;
  }
  dimension: person_custom_phone_number {
    type: string
    sql: ${TABLE}.person_custom_phone_number ;;
  }
  dimension: person_in_welcome_flow {
    type: string
    sql: ${TABLE}.person_in_welcome_flow ;;
  }
  dimension: person_updated {
    type: string
    sql: ${TABLE}.person_updated ;;
  }
  dimension: personalizedimageurl {
    type: string
    sql: ${TABLE}.personalizedimageurl ;;
  }
  dimension: productcategories {
    type: string
    sql: ${TABLE}.productcategories ;;
  }
  dimension: productid {
    type: string
    sql: ${TABLE}.productid ;;
  }
  dimension: productname {
    type: string
    sql: ${TABLE}.productname ;;
  }
  dimension: profile_id {
    type: string
    sql: ${TABLE}.profile_id ;;
  }
  dimension: s2s_lead {
    type: yesno
    sql: ${TABLE}.s2s_lead ;;
  }
  dimension: shortid {
    type: string
    sql: ${TABLE}.shortid ;;
  }
  dimension: signupurl {
    type: string
    sql: ${TABLE}.signupurl ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: statistic_id {
    type: string
    sql: ${TABLE}.statistic_id ;;
  }
  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
  }
  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }
  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }
  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }
  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }
  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
  dimension: widget {
    type: string
    sql: ${TABLE}.widget ;;
  }
  measure: count {
    type: count
    drill_fields: [event_name, campaign_name, productname, source_name, customer_name]
  }
}
