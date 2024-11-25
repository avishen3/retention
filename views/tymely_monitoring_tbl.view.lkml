view: tymely_monitoring_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.Tymely_monitoring_tbl` ;;

  dimension: correspondencetype {
    type: string
    sql: ${TABLE}.correspondencetype ;;
  }
  dimension: disposition_name {
    type: string
    sql: ${TABLE}.disposition_name ;;
  }
  dimension: median_interaction_in_min {
    type: number
    sql: ${TABLE}.median_interaction_in_min ;;
  }
  dimension: mindee_segmentation {
    type: string
    sql: ${TABLE}.Mindee_segmentation ;;
  }
  dimension: total_interaction {
    type: number
    sql: ${TABLE}.total_interaction ;;
  }
  dimension: tymely_week {
    type: number
    sql: ${TABLE}.tymely_week ;;
  }
  dimension: valide_interaction {
    type: string
    sql: ${TABLE}.valide_interaction ;;
  }
  dimension: week_number_monday_start {
    type: number
    sql: ${TABLE}.week_number_monday_start ;;
  }
  measure: count {
    type: count
    drill_fields: [disposition_name]
  }

  measure: sum_total_interaction {
    type: sum
    sql: ${total_interaction} ;;
  }


  measure: count_disposition_name {
    type: count_distinct
    sql:${TABLE}.disposition_name;;
  }



  measure: sum_of_median_interaction_in_min {
    type: sum
    sql: ${median_interaction_in_min} ;;
    value_format: "#,##0.00"
  }


  measure: Average_of_Medians_interaction_in_min {
    type: number
    sql: ${sum_of_median_interaction_in_min}/${count_disposition_name} ;;
    value_format: "#,##0.00"
  }

}
