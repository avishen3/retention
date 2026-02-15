view: fc_kate_file_google_sheet_2025_a {
  sql_table_name: `omega-post-184817.Keshet.FC_kate_file_google_sheet_2025_A` ;;

  dimension_group: date{
    type: time
    description: "%m/%d/%E4Y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._ ;;
  }
  dimension: __to_fc {
    type: number
    sql: ${TABLE}.__to_FC ;;
  }
  dimension: actual {
    type: number
    sql: ${TABLE}.Actual ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }
  dimension: is_this_week_ {
    type: yesno
    sql: ${TABLE}.Is_This_Week_ ;;
  }
  dimension: line_of_business {
    type: string
    sql: ${TABLE}.Line_of_Business ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }
  dimension: predicted {
    type: number
    sql: ${TABLE}.Predicted ;;
  }
  dimension: week {
    type: number
    sql: ${TABLE}.Week ;;
  }
  measure: count {
    type: count
  }
}
