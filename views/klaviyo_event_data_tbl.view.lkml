view: klaviyo_event_data_tbl {
  sql_table_name: retention.klaviyo_event_data_tbl  ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_subject {
    type: string
    sql: ${TABLE}.email_subject ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: list {
    type: string
    sql: ${TABLE}.list ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: person_created {
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
    sql: ${TABLE}.person_created ;;
  }

  dimension_group: reporting {
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
    sql: ${TABLE}.reporting_date ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name, event_name]
  }

# Date dimensions and parameters

  dimension: not_today {
    type: yesno
    sql: ${reporting_date} < current_date() ;;
  }

  parameter: reporting_date_granularity {
    type: string
    allowed_value: {
      label: "Day"
      value: "Day"
    }
    allowed_value: {
      label: "Week"
      value: "Week"
    }
    allowed_value: {
      label: "Month"
      value: "Month"
    }
    allowed_value: {
      label: "Quarter"
      value: "Quarter"
    }
    allowed_value: {
      label: "Year"
      value: "Year"
    }

    allowed_value: {
      label: "None"
      value: "None"
    }

  }

  dimension: granular_reporting_date {
    label_from_parameter: reporting_date_granularity
    sql:
            CASE
             WHEN {% parameter reporting_date_granularity %} = 'Day' THEN cast(${reporting_date} as string)
             WHEN {% parameter reporting_date_granularity %} = 'Week' THEN cast(${reporting_week} as string)
             WHEN {% parameter reporting_date_granularity %} = 'Month' THEN cast(${reporting_month} as string)
             WHEN {% parameter reporting_date_granularity %} = 'Quarter' THEN cast(${reporting_quarter} as string)
             WHEN {% parameter reporting_date_granularity %} = 'Year' THEN cast(${reporting_year} as string)
            ELSE null
            END ;;
  }

  dimension:  reporting_dow_num {
    type:  string
    sql: EXTRACT(DAYOFWEEK FROM ${reporting_date}) ;;
    hidden: yes
  }

  dimension:  reporting_day_of_week {
    type:  string
    sql: case
          when ${reporting_dow_num} = 1 then 'Sunday'
          when ${reporting_dow_num} = 2 then 'Monday'
          when ${reporting_dow_num} = 3 then 'Tuesday'
          when ${reporting_dow_num} = 4 then 'Wednesday'
          when ${reporting_dow_num} = 5 then 'Thursday'
          when ${reporting_dow_num} = 6 then 'Friday'
          when ${reporting_dow_num} = 7 then 'Saturday'
        end ;;
    order_by_field: reporting_dow_num
  }

}
