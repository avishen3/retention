view: pillow_refund_data_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.pillow_refund_data_tbl` ;;

  dimension: agent_email_mattress {
    type: string
    sql: ${TABLE}.agent_email_mattress ;;
  }
  dimension: agent_email_pillow {
    type: string
    sql: ${TABLE}.agent_email_pillow ;;
  }
  dimension: agent_id_mattress {
    type: string
    sql: ${TABLE}.agent_id_mattress ;;
  }
  dimension: agent_name_mattress {
    type: string
    sql: ${TABLE}.agent_name_mattress ;;
  }
  dimension: agent_name_pillow {
    type: string
    sql: ${TABLE}.agent_name_pillow ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: days_from_original_order_to_pillow {
    type: number
    sql: ${TABLE}.days_from_original_order_to_pillow ;;
  }
  dimension: days_from_original_order_to_refound {
    type: number
    sql: ${TABLE}.days_from_original_order_to_refound ;;
  }
  dimension: days_from_pillow_order_to_refound {
    type: number
    sql: ${TABLE}.days_from_pillow_order_to_refound ;;
  }


####

  dimension: days_from_topper_order_to_refound_cohort {
    type: string
    sql: case
              when ${days_from_pillow_order_to_refound} <=0  then "0: less then 0"
              when ${days_from_pillow_order_to_refound} =1  then "1: 1"
              when ${days_from_pillow_order_to_refound} between 2 and 5 then "2: 2-5"
              when ${days_from_pillow_order_to_refound} between 6 and 10 then "3: 6-10"
              when ${days_from_pillow_order_to_refound} between 11 and 20 then "4: 11-20"
              when ${days_from_pillow_order_to_refound} between 21 and 35 then "5: 21-35"
              when ${days_from_pillow_order_to_refound} between 36 and 50 then "6: 36-50"
              when ${days_from_pillow_order_to_refound} between 51 and 100 then "7: 51-100"
              when ${days_from_pillow_order_to_refound} between 101 and 200 then "8: 101-200"
              when ${days_from_pillow_order_to_refound} > 201 then "9: more then 200"
      else null end
      ;;
  }


  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension_group: first_refund_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.first_refund_ts ;;
  }
  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }
  dimension_group: order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created ;;
  }
  dimension_group: order_created_pillow {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created_pillow ;;
  }
  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }
  dimension: order_id_pillow {
    type: string
    sql: ${TABLE}.order_id_pillow ;;
  }
  dimension_group: order_updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
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
  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: product_name_pillow {
    type: string
    sql: ${TABLE}.product_name_pillow ;;
  }
  dimension: product_size {
    type: string
    sql: ${TABLE}.product_size ;;
  }
  dimension: product_title {
    type: string
    sql: ${TABLE}.product_title ;;
  }
  dimension: product_title_pillow {
    type: string
    sql: ${TABLE}.product_title_pillow ;;
  }
  dimension: refund_type {
    type: string
    sql: ${TABLE}.refund_type ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }
  dimension: short_id_pillow {
    type: string
    sql: ${TABLE}.short_id_pillow ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
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
  dimension: whs_name_last_purchase {
    type: string
    sql: ${TABLE}.whs_name_last_purchase ;;
  }
  dimension: whs_title_last_purchase {
    type: string
    sql: ${TABLE}.whs_title_last_purchase ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]
  }


  measure: total_mattress_orders_that_were_sent_pillow{
    type: count_distinct
    sql:short_id ;;
    value_format: "#,##0"
    group_label: "Mattress Measures"
  }

  measure: total_refund_mattress_order_with_pillow {
    type: count_distinct
    sql: case when ${refund_type} = 'full refund' then ${short_id} else null end ;;
    value_format: "#,##0"
    group_label: "Mattress Measures"
  }



  measure: total_pillow_refund_mattress_rate {
    type: number
    sql:  ${total_refund_mattress_order_with_pillow}/${total_mattress_orders_that_were_sent_pillow}  ;;
    value_format: "####.##%"
    group_label: "Mattress Measures"
  }


  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  dimension: subreason {
    type: string
    sql: ${TABLE}.subreason ;;
  }




}
