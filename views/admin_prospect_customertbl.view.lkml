view: admin_prospect_customertbl {
  sql_table_name: `omega-post-184817.CS_NEW.admin_prospect_customertbl`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: billing_phone {
    type: string
    sql: ${TABLE}.billing_phone ;;
  }

  dimension: customer_prospect {
    type: string
    sql: ${TABLE}.Customer_Prospect ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: main_email {
    type: string
    sql: ${TABLE}.mainEmail ;;
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

  dimension: recovery_phone_number {
    type: string
    sql: ${TABLE}.recoveryPhoneNumber ;;
  }

  dimension_group: registered {
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
    sql: ${TABLE}.registeredAt ;;
  }

  dimension: shipping_phone {
    type: string
    sql: ${TABLE}.shipping_phone ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: sleep_profile_sleeper_type {
    type: string
    sql: ${TABLE}.sleepProfile_sleeperType ;;
  }

  dimension: sleep_profile_temperature {
    type: string
    sql: ${TABLE}.sleepProfile_temperature ;;
  }

  measure: count {
    type: count
    drill_fields: [id, last_name, first_name]
  }

  measure: count_ids {
    type: count_distinct
   sql: ${id}  ;;
  }



}
