# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

view: cart_mix_for_looker_tbl {
  sql_table_name: `omega-post-184817.Keshet.cart_mix_for_looker_tbl`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: brand_latters {
    type: string
    sql: ${TABLE}.brand_latters ;;
  }

  dimension: campaign_name {
    hidden: yes
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: cart_catagory {
    type: string
    sql: ${TABLE}.cart_catagory ;;
  }

  dimension: cart_items {
    type: string
    sql: ${TABLE}.cart_items ;;
  }

  dimension: cart_sku {
    type: string
    sql: ${TABLE}.cart_sku ;;
  }

  dimension: customer_type {
    hidden: yes
    sql: ${TABLE}.customer_type ;;
  }

  dimension: email_num {
    hidden: yes
    sql: ${TABLE}.email_num ;;
  }

  dimension: flow {
    hidden: yes
    sql: ${TABLE}.flow ;;
  }

  dimension: gross_profit {
    type: number
    sql: ${TABLE}.gross_profit ;;
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

  dimension: offer {
    hidden: yes
    sql: ${TABLE}.offer ;;
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

  dimension: promo {
    type: string
    sql: ${TABLE}.promo ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }

  dimension: sub_flow {
    hidden: yes
    sql: ${TABLE}.sub_flow ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}

view: cart_mix_for_looker_tbl__flow {
  dimension: cart_mix_for_looker_tbl__flow {
    type: string
    sql: cart_mix_for_looker_tbl__flow ;;
  }
}

view: cart_mix_for_looker_tbl__offer {
  dimension: cart_mix_for_looker_tbl__offer {
    type: string
    sql: cart_mix_for_looker_tbl__offer ;;
  }
}

view: cart_mix_for_looker_tbl__sub_flow {
  dimension: cart_mix_for_looker_tbl__sub_flow {
    type: string
    sql: cart_mix_for_looker_tbl__sub_flow ;;
  }
}

view: cart_mix_for_looker_tbl__email_num {
  dimension: cart_mix_for_looker_tbl__email_num {
    type: string
    sql: cart_mix_for_looker_tbl__email_num ;;
  }
}

view: cart_mix_for_looker_tbl__customer_type {
  dimension: cart_mix_for_looker_tbl__customer_type {
    type: string
    sql: cart_mix_for_looker_tbl__customer_type ;;
  }
}

view: cart_mix_for_looker_tbl__campaign_name {
  dimension: cart_mix_for_looker_tbl__campaign_name {
    type: string
    sql: cart_mix_for_looker_tbl__campaign_name ;;
  }
}
