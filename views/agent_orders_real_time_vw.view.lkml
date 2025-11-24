view: agent_orders_real_time_vw {
  sql_table_name: `omega-post-184817.CS_NEW.agent_orders_real_time_vw` ;;

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
  dimension: cart_id {
    type: string
    sql: ${TABLE}.cart_id ;;
  }
  dimension: cart_remote_token {
    type: string
    sql: ${TABLE}.cart_remote_token ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }
  dimension: is_price_0 {
    type: yesno
    sql: ${TABLE}.is_price_0 ;;
  }
  dimension: is_valid_order {
    type: yesno
    sql: ${TABLE}.is_valid_order ;;
  }

  dimension_group: order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, hour , hour_of_day]
    datatype: datetime
    sql: ${TABLE}.order_created ;;
  }


  ### 19112025


  dimension_group: order_created_timestamp {
    type: time
    timeframes: [raw,
      time,
      minute30,
      hour,
      date,
      week,
      month,
      quarter,
      year,
      hour2, hour_of_day]
    datatype: timestamp  # <--- Use 'timestamp' if the column is BigQuery TIMESTAMP
    sql: TIMESTAMP(${TABLE}.order_created) ;;
  }

  ####


  dimension: order_source {
    type: string
    sql: ${TABLE}.order_source ;;
  }
  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }
  dimension: total_bases {
    type: number
    sql: ${TABLE}.total_bases ;;
  }
  dimension: total_matresses {
    type: number
    sql: ${TABLE}.total_matresses ;;
  }
  measure: count {
    type: count
    drill_fields: [agent_name]
  }

  dimension: valid_non_zero_order{
    type: yesno
    sql: ${is_valid_order} is true and ${is_price_0} is false ;;
  }


  dimension: is_agent_order{
    type: yesno
    sql: ${agent_email} is not null  ;;
  }

  measure: total_revenve_valid_orders {
    type: sum
    sql: case when ${is_valid_order} is true  then  ${price}-${tax} else null end ;;
    value_format: "$#,##0.0"
    }

  measure: total_revenve_valid_no_zero_orders {
    type: sum
    sql: case when ${valid_non_zero_order} is true  then  ${price}-${tax} else null end ;;
    value_format: "$#,##0.0"
    label: "Revenve"

  }

  measure: total_orders_valid {
    type: count_distinct
    sql: case when ${is_valid_order} is true  then  ${short_id} else null end ;;
  }

  measure: total_orders_valid_no_zero {
    type: count_distinct
    sql: case when ${valid_non_zero_order} is true  then  ${short_id} else null end ;;
  }

  measure: AOV_valid_order{
    type: number
    sql: ${total_revenve_valid_orders}/NULLIF(${total_orders_valid}, 0) ;;
    value_format: "$#,##0.0"
  }

  measure: AOV_valid_order_no_zero{
    type: number
    sql: ${total_revenve_valid_no_zero_orders}/ NULLIF(${total_orders_valid_no_zero}, 0)  ;;
    value_format: "$#,##0.0"
    label: "AOV Company"

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

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

### agent orders metric


  measure: total_revenve_valid_orders_agent {
    type: sum
    sql: case when (${is_valid_order} is true and ${is_agent_order} is true)  then  ${price}-${tax} else null end ;;
    value_format: "$#,##0.0"
    group_label: "Agent Order Matrics"
  }

  measure: total_revenve_valid_no_zero_orders_agent {
    type: sum
    sql: case when (${valid_non_zero_order} is true  and ${is_agent_order} is true)  then  ${price}-${tax} else null end ;;
    value_format: "$#,##0.0"
    group_label: "Agent Order Matrics"

  }

  measure: total_orders_valid_agent {
    type: count_distinct
    sql: case when ( ${is_valid_order} is true and ${is_agent_order} is true) then  ${short_id} else null end ;;
    group_label: "Agent Order Matrics"

  }

  measure: total_orders_valid_no_zero_agent {
    type: count_distinct
    sql: case when ( ${valid_non_zero_order} is true and ${is_agent_order} is true) then  ${short_id} else null end ;;
    group_label: "Agent Order Matrics"

  }


  measure: AOV_valid_order_agent{
    type: number
    sql: ${total_revenve_valid_orders_agent}/NULLIF(${total_orders_valid_agent}, 0) ;;
    value_format: "$#,##0.0"
    group_label: "Agent Order Matrics"
  }

  measure: AOV_valid_order_no_zero_agent{
    type: number
    sql: ${total_revenve_valid_no_zero_orders_agent}/ NULLIF(${total_orders_valid_no_zero_agent}, 0)  ;;
    value_format: "$#,##0.0"
    group_label: "Agent Order Matrics"
    label: "AOV CS orders"

  }

### 20112025 - sales agents measure


  measure: total_revenve_valid_orders_SALE_agent {
    type: sum
    sql: case when (${is_valid_order} is true and ${is_cs_sales_agent} is true)  then  ${price}-${tax} else null end ;;
    value_format: "$#,##0.0"
    group_label: "Sale Agent Order Matrics"
  }

  measure: total_revenve_valid_no_zero_orders_SALE_agent {
    type: sum
    sql: case when (${valid_non_zero_order} is true  and ${is_cs_sales_agent} is true)  then  ${price}-${tax} else null end ;;
    value_format: "$#,##0.0"
    group_label: "Sale Agent Order Matrics"

  }

  measure: total_orders_valid_SALE_agent {
    type: count_distinct
    sql: case when ( ${is_valid_order} is true and ${is_cs_sales_agent} is true) then  ${short_id} else null end ;;
    group_label: "Sale Agent Order Matrics"

  }

  measure: total_orders_valid_no_zero_SALE_agent {
    type: count_distinct
    sql: case when ( ${valid_non_zero_order} is true and ${is_cs_sales_agent} is true) then  ${short_id} else null end ;;
    group_label: "Sale Agent Order Matrics"

  }


  measure: AOV_valid_order_SALE_agent{
    type: number
    sql: ${total_revenve_valid_orders_SALE_agent}/NULLIF(${total_orders_valid_SALE_agent}, 0) ;;
    value_format: "$#,##0.0"
    group_label: "Sale Agent Order Matrics"
    }

  measure: AOV_valid_order_no_zero_SALE_agent{
    type: number
    sql: ${total_revenve_valid_no_zero_orders_SALE_agent}/ NULLIF(${total_orders_valid_no_zero_SALE_agent}, 0)  ;;
    value_format: "$#,##0.0"
    group_label: "Sale Agent Order Matrics"
    label: "AOV CS Sales orders"

    }


### 20112025 - Non CS data


### agent orders metric


  measure: total_revenve_valid_orders_NON_agent {
    type: sum
    sql: case when (${is_valid_order} is true and ${is_agent_order} is false)  then  ${price}-${tax} else null end ;;
    value_format: "$#,##0.0"
    group_label: "NON Agent Order Matrics"
  }

  measure: total_revenve_valid_no_zero_orders_NON_agent {
    type: sum
    sql: case when (${valid_non_zero_order} is true  and ${is_agent_order} is false)  then  ${price}-${tax} else null end ;;
    value_format: "$#,##0.0"
    group_label: "NON Agent Order Matrics"

  }

  measure: total_orders_valid_NON_agent {
    type: count_distinct
    sql: case when ( ${is_valid_order} is true and ${is_agent_order} is false) then  ${short_id} else null end ;;
    group_label: "NON Agent Order Matrics"

  }

  measure: total_orders_valid_no_zero_NON_agent {
    type: count_distinct
    sql: case when ( ${valid_non_zero_order} is true and ${is_agent_order} is false) then  ${short_id} else null end ;;
    group_label: "NON Agent Order Matrics"

  }


  measure: AOV_valid_order_NON_agent{
    type: number
    sql: ${total_revenve_valid_orders_NON_agent}/NULLIF(${total_orders_valid_NON_agent}, 0) ;;
    value_format: "$#,##0.0"
    group_label: "NON Agent Order Matrics"
  }

  measure: AOV_valid_order_no_zero_NON_agent{
    type: number
    sql: ${total_revenve_valid_no_zero_orders_NON_agent}/ NULLIF(${total_orders_valid_no_zero_NON_agent}, 0)  ;;
    value_format: "$#,##0.0"
    group_label: "NON Agent Order Matrics"
    label: "AOV without CS orders"
  }



####


  measure: CS_valid_orders_rate {
    type: number
    sql: ${total_orders_valid_agent}/${total_orders_valid} ;;
    group_label: "Agent Order Rate"
    value_format: "00.0%"
  }

  measure: CS_valid_no_zero_orders_rate {
    type: number
    sql: ${total_orders_valid_no_zero_agent}/${total_orders_valid_no_zero} ;;
    group_label: "Agent Order Rate"
    value_format: "00.0%"
  }

  measure: CS_valid_no_zero_revenue_rate {
    type: number
    sql: ${total_revenve_valid_no_zero_orders_agent}/${total_revenve_valid_no_zero_orders} ;;
    group_label: "Agent Order Rate"
    value_format: "00.0%"
  }



  ### 191120205 - Comparison from web events real time




##### Comparison

  filter: current_date_range {
    view_label: "Timeline Comparison Fields"
    label: "Date Range"
    description: "Select the date range you are interested in using this filter, can be used by itself. Make sure any filter on Event Date covers this period, or is removed."
    type: date
  }
  filter: previous_date_range {
    view_label: "Timeline Comparison Fields"
    label: "2b. Compare To (Custom):"
    group_label: "Compare to:"

    description: "Use this if you want to specify a custom date range to compare to (limited to 2 comparison periods). Always use with '1. Date Range' filter (or it will error). Make sure any filter on Event Date covers this period, or is removed."
    type: date
  }

  dimension_group: in_period {
    type: duration
    intervals: [day]
    description: "Gives the number of days in the current period date range"
    sql_start: {% date_start current_date_range %} ;;
    sql_end: {% date_end current_date_range %} ;;
    hidden:  yes
  }

  dimension: period_2_start {
    view_label: "Timeline Comparison Fields"
    description: "Calculates the start of the previous period"
    type: date_raw
    sql:
    {% if compare_to._in_query %}
      {% if compare_to._parameter_value == "Period" %}
        TIMESTAMP_SUB({% date_start current_date_range %} , INTERVAL ${days_in_period} DAY)
      {% else %}
        TIMESTAMP(DATETIME_SUB(DATETIME({% date_start current_date_range %}) , INTERVAL 1 {% parameter compare_to %}))
      {% endif %}
    {% else %}
      {% date_start previous_date_range %}
    {% endif %};;
    hidden:  yes
  }

  dimension: period_2_end {
    view_label: "Timeline Comparison Fields"
    description: "Calculates the end of the previous period"
    type: date_raw
    sql:
    {% if compare_to._in_query %}
      {% if compare_to._parameter_value == "Period" %}
        /*TIMESTAMP_SUB({% date_start current_date_range %}, INTERVAL 1 DAY)*/
        {% date_start current_date_range %}
      {% else %}
        /*TIMESTAMP(DATETIME_SUB(DATETIME_SUB(
        DATETIME({% date_end current_date_range %}), INTERVAL 1 DAY), INTERVAL 1 {% parameter compare_to %}))*/
         TIMESTAMP(DATETIME_SUB(
        DATETIME({% date_end current_date_range %}), INTERVAL 1 {% parameter compare_to %}))
      {% endif %}
    {% else %}
      {% date_end previous_date_range %}
    {% endif %};;
    hidden:  yes
  }

  parameter: compare_to {
    description: "Choose the period you would like to compare to. Must be used with Current Date Range filter"
    label: "2a. Compare To (Templated):"
    type: unquoted
    allowed_value: {
      label: "Previous Period"
      value: "Period"
    }
    allowed_value: {
      label: "Previous Week"
      value: "Week"
    }
    allowed_value: {
      label: "Previous Month"
      value: "Month"
    }
    allowed_value: {
      label: "Previous Quarter"
      value: "Quarter"
    }
    allowed_value: {
      label: "Previous Year"
      value: "Year"
    }
    default_value: "Period"
    view_label: "Timeline Comparison Fields"
  }

  dimension: period {
    view_label: "Timeline Comparison Fields"
    label: "Period"
    description: "Pivot me! Returns the period the metric covers, i.e. either the 'This Period', 'Previous Period' or '3 Periods Ago'"
    type: string
    order_by_field: order_for_period
    sql:
       {% if current_date_range._is_filtered %}
         CASE
           WHEN {% condition current_date_range %}  ${order_created_timestamp_raw} {% endcondition %}
           THEN "This {% parameter compare_to %}"
           WHEN ${order_created_timestamp_raw} between ${period_2_start} and ${period_2_end}
           THEN "Last {% parameter compare_to %}"
         END
       {% else %}
         NULL
       {% endif %}
       ;;
  }

  dimension: order_for_period {
    hidden: yes
    view_label: "Timeline Comparison Fields"
    label: "Period"
    description: "Pivot me! Returns the period the metric covers, i.e. either the 'This Period', 'Previous Period' or '3 Periods Ago'"
    type: string
    sql:
       {% if current_date_range._is_filtered %}
         CASE
           WHEN {% condition current_date_range %} ${order_created_timestamp_raw} /*findme6*/{% endcondition %}
           THEN 1
           WHEN ${order_created_timestamp_raw} between ${period_2_start} and ${period_2_end}
           THEN 2
         END
       {% else %}
         NULL
       {% endif %}
       ;;
  }

  dimension_group: date_in_period {
    description: "Use this as your date dimension when comparing periods. Aligns the all previous periods onto the current period"
    label: "Current Period"
    type: time
    sql: TIMESTAMP_ADD({% date_start current_date_range %},INTERVAL (${minute_in_period}-1) minute) ;;
    view_label: "Timeline Comparison Fields"
    timeframes: [date, week, month, quarter, year,time,hour,hour2]
  }

  dimension: minute_in_period {
    view_label: "Timeline Comparison Fields"
    description: "Gives the number of days since the start of each periods. Use this to align the event dates onto the same axis, the axes will read 1,2,3, etc."
    type: number
    sql:
    {% if current_date_range._is_filtered %}
      CASE
        WHEN {% condition current_date_range %} ${order_created_timestamp_raw} {% endcondition %}
        THEN TIMESTAMP_DIFF(${order_created_timestamp_raw},{% date_start current_date_range %},minute)+1

      WHEN ${order_created_timestamp_raw} between ${period_2_start} and ${period_2_end}
      THEN TIMESTAMP_DIFF(${order_created_timestamp_raw}, ${period_2_start},minute)+1
      else null
      END

      {% else %} NULL
      {% endif %}
      ;;
    hidden: no
  }

  parameter: Date_Granularity_for_comapre {
    type: string
    allowed_value: { value: "Hour"}
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }

  dimension: event_Date_for_comapre {
    label_from_parameter: Date_Granularity_for_comapre
    sql:
            CASE
             WHEN {% parameter Date_Granularity_for_comapre %} = 'Hour' THEN cast(${date_in_period_hour} as string)
             WHEN {% parameter Date_Granularity_for_comapre %} = 'Day' THEN cast(${date_in_period_date} as string)
             WHEN {% parameter Date_Granularity_for_comapre %} = 'Week' THEN cast(${date_in_period_week} as string)
             WHEN {% parameter Date_Granularity_for_comapre %} = 'Month' THEN cast(${date_in_period_month} as string)
             WHEN {% parameter Date_Granularity_for_comapre %} = 'Quarter' THEN cast(${date_in_period_quarter} as string)
             WHEN {% parameter Date_Granularity_for_comapre %} = 'Year' THEN cast(${date_in_period_year} as string)
            ELSE null
            END ;;
  }


  dimension: day_in_period {
    view_label: "Timeline Comparison Fields"
    description: "Gives the number of days since the start of each periods. Use this to align the event dates onto the same axis, the axes will read 1,2,3, etc."
    type: number
    sql:
    {% if current_date_range._is_filtered %}
      CASE
        WHEN {% condition current_date_range %} ${order_created_timestamp_raw} {% endcondition %}
        THEN TIMESTAMP_DIFF(${order_created_timestamp_raw},{% date_start current_date_range %},DAY)+1

      WHEN ${order_created_timestamp_raw} between ${period_2_start} and ${period_2_end}
      THEN TIMESTAMP_DIFF(${order_created_timestamp_raw}, ${period_2_start},DAY)+1
      END

      {% else %} NULL
      {% endif %}
      ;;
    hidden: no
  }
  parameter: Date_Granularity {
    type: string
    allowed_value: { value: "Hour"}
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }



  dimension: event_Date {
    label_from_parameter: Date_Granularity
    sql:
            CASE
             WHEN {% parameter Date_Granularity %} = 'Hour' THEN cast(${order_created_timestamp_hour} as string)
             WHEN {% parameter Date_Granularity %} = 'Day' THEN cast(${order_created_timestamp_date} as string)
             WHEN {% parameter Date_Granularity %} = 'Week' THEN cast(${order_created_timestamp_week} as string)
             WHEN {% parameter Date_Granularity %} = 'Month' THEN cast(${order_created_timestamp_month} as string)
             WHEN {% parameter Date_Granularity %} = 'Quarter' THEN cast(${order_created_timestamp_quarter} as string)
             WHEN {% parameter Date_Granularity %} = 'Year' THEN cast(${order_created_timestamp_year} as string)
            ELSE null
            END ;;
  }

  dimension: yesterday_vs_sdlw {
    type: string
    label: "Today VS SDLW"
    sql: case when (date_diff(current_date('America/Los_Angeles'), ${order_created_timestamp_date}, day) = 0
          and extract(hour from timestamp(${order_created_timestamp_time})) < extract(hour from timestamp(current_datetime('America/Los_Angeles')))) then "Today"
        when(date_diff(current_date('America/Los_Angeles'), ${order_created_timestamp_date}, day) = 7
        and extract(hour from timestamp(${order_created_timestamp_time})) < extract(hour from timestamp(current_datetime('America/Los_Angeles')))) then "SDLW"
        else 'null' end  ;;
    group_label: "Date Filters"
  }

  dimension: yesterday_vs_sdly {
    type: string
    label: "Today VS SDLY"
    sql: case when (date_diff(current_date('America/Los_Angeles'), ${order_created_timestamp_date}, day) = 0
          and extract(hour from timestamp(${order_created_timestamp_time})) < extract(hour from timestamp(current_datetime('America/Los_Angeles')))) then "Today"
        when(date_diff(current_date('America/Los_Angeles'), ${order_created_timestamp_date}, day) = 364
        and extract(hour from timestamp(${order_created_timestamp_time})) < extract(hour from timestamp(current_datetime('America/Los_Angeles')))) then "SDLY"
        else 'null' end  ;;
    group_label: "Date Filters"
  }



  ##



### 2011205 Sales agents





  dimension: is_cs_sales_agent{
   type: yesno
    sql:
    ${agent_email} IN (
     'alexandra.frohman@residenthome.com',
'anned@residenthome.com',
'april.hatten@residenthome.com',
'arianei@residenthome.com',
'brenda@residenthome.com',
'brianna.brown@residenthome.com',
'camerons@residenthome.com',
'chaunceym@residenthome.com',
'christian.daye@residenthome.com',
'christinem@residenthome.com',
'christopher.tagnipis@residenthome.com',
'cristinad@residenthome.com',
'dan.bickford@residenthome.com',
'denayf@residenthome.com',
'djamaiccaa@residenthome.com',
'donna.amores@residenthome.com',
'eliot.bennie@residenthome.com',
'gelled@residenthome.com',
'genilyn.asenas@residenthome.com',
'heinz.acson@residenthome.com',
'irene.bahandi@residenthome.com',
'irene.catacutan@residenthome.com',
'ivan.bungcasan@residenthome.com',
'jana.dalleda@residenthome.com',
'jeizel.mapula@residenthome.com',
'jencyg@residenthome.com',
'jesselaine.siglos@residenthome.com',
'jimboy.corciega@residenthome.com',
'john.romano@residenthome.com',
'jolina.lopez@residenthome.com',
'jopely@residenthome.com',
'joriele@residenthome.com',
'jostuart.gunter@residenthome.com',
'keladas@residenthome.com',
'kiarab@residenthome.com',
'lourdes.unajan@residenthome.com',
'mary.paltinca@residenthome.com',
'maxine@residenthome.com',
'orlando@residenthome.com',
'paul.valerio@residenthome.com',
'pearlt@residenthome.com',
'ravenp@residenthome.com',
'sannyd@residenthome.com',
'steven.sa@residenthome.com',
'victor.liu@residenthome.com',
'vincent.banlat@residenthome.com',
'vincentg@residenthome.com',
'wilma.rodriguez@residenthome.com',
'xyzaa@residenthome.com'
    )
    ;;

  }
















}
