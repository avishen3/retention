view: zingtree_raw_tl {
  sql_table_name: `omega-post-184817.CS_NEW.Zingtree_raw_tl` ;;

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }
  dimension: duration_seconds {
    type: number
    sql: ${TABLE}.duration_seconds ;;
  }
  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }
  dimension_group: last_click_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.last_click_time_pst ;;
  }
  dimension_group: last_click_time_utc {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.last_click_time_utc ;;
  }
  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }
  dimension: op {
    type: string
    sql: ${TABLE}.op ;;
  }
  dimension: os {
    type: string
    sql: ${TABLE}.os ;;
  }
  dimension: p__button_text {
    type: string
    sql: ${TABLE}.p.button_text ;;
    group_label: "P"
    group_item_label: "Button Text"
  }
  dimension: p__from_node_id {
    type: string
    sql: ${TABLE}.p.from_node_id ;;
    group_label: "P"
    group_item_label: "From Node ID"
  }
  dimension: p__page_title {
    type: string
    sql: ${TABLE}.p.page_title ;;
    group_label: "P"
    group_item_label: "Page Title"
  }
  dimension: p__question {
    type: string
    sql: ${TABLE}.p.question ;;
    group_label: "P"
    group_item_label: "Question"
  }
  dimension: p__seconds {
    type: string
    sql: ${TABLE}.p.seconds ;;
    group_label: "P"
    group_item_label: "Seconds"
  }
  dimension: p__seq {
    type: number
    sql: ${TABLE}.p.seq ;;
    group_label: "P"
    group_item_label: "Seq"
  }
  dimension: p__source {
    type: string
    sql: ${TABLE}.p.source ;;
    group_label: "P"
    group_item_label: "Source"
  }
  dimension: p__subtree {
    type: string
    sql: ${TABLE}.p.subtree ;;
    group_label: "P"
    group_item_label: "Subtree"
  }
  dimension: p__time {
    type: string
    sql: ${TABLE}.p.time ;;
    group_label: "P"
    group_item_label: "Time"
  }
  dimension: p__to_node_id {
    type: string
    sql: ${TABLE}.p.to_node_id ;;
    group_label: "P"
    group_item_label: "To Node ID"
  }
  dimension: result {
    type: string
    sql: ${TABLE}.result ;;
  }
  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension_group: start_time_pst {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.start_time_pst ;;
  }
  dimension_group: start_time_utc {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.start_time_utc ;;
  }
  dimension: time_spent {
    type: string
    sql: ${TABLE}.time_spent ;;
  }
  dimension: total_score {
    type: number
    sql: ${TABLE}.total_score ;;
  }
  dimension: tree_id {
    type: string
    sql: ${TABLE}.tree_id ;;
  }
  dimension: tree_name {
    type: string
    sql: ${TABLE}.tree_name ;;
  }
  measure: count {
    type: count
    drill_fields: [tree_name]
  }

  measure: total_seesions {
    type: count_distinct
    sql: ${session_id} ;;
  }


}
