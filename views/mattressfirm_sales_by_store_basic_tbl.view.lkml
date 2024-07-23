view: mattressfirm_sales_by_store_basic_tbl {
  sql_table_name: `omega-post-184817.retail.mattressfirm_sales_by_store_basic_tbl` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: dma_code {
    type: string
    sql: ${TABLE}.DMA_Code ;;
  }
  dimension: fiscal_period {
    type: number
    sql: ${TABLE}.fiscal_period ;;
  }
  dimension: fiscal_quarter {
    type: number
    sql: ${TABLE}.fiscal_quarter ;;
  }
  dimension: fiscal_week {
    type: number
    sql: ${TABLE}.fiscal_week ;;
  }
  dimension: fiscal_year {
    type: number
    sql: ${TABLE}.fiscal_year ;;
  }
  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }
  dimension: market {
    type: string
    sql: ${TABLE}.market ;;
  }
  dimension: market_type {
    type: string
    sql: ${TABLE}.market_type ;;
  }
  dimension: mix {
    type: string
    sql: ${TABLE}.mix ;;
  }
  dimension: model_name {
    type: string
    sql: ${TABLE}.model_name ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }
  dimension: quarter {
    type: number
    sql: ${TABLE}.quarter ;;
  }
  dimension: return_rate {
    type: string
    sql: ${TABLE}.return_rate ;;
  }
  dimension: snapshot_units {
    type: number
    sql: ${TABLE}.snapshot_units ;;
  }
  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }
  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }
  dimension: total_units {
    type: number
    sql: ${TABLE}.total_units ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }
  dimension: week {
    type: number
    sql: ${TABLE}.week ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
    drill_fields: [model_name, store_name]
  }





}
