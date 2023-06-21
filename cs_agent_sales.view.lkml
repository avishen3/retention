view: cs_agent_sales {
    derived_table: {
      sql: select distinct * FROM `omega-post-184817.CS_NEW.cs_agent_sales_vw`   ;;
    }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
     }


  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id ;;
  }


  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }


  dimension_group: order_created {
    type: time
    timeframes: [
      raw,
      time,
      minute30,
      hour,
      date,
      week,
      month,
      quarter,
      year,
      hour2
    ]
    sql: timestamp( ${TABLE}.order_created) ;;
  }


  dimension_group: order_updated {
    type: time
    timeframes: [
      raw,
      time,
      minute30,
      hour,
      date,
      week,
      month,
      quarter,
      year,
      hour2
    ]
    sql: timestamp( ${TABLE}.order_created) ;;
  }


  dimension: price {
    type: number
    sql: cast(${TABLE}.price as float64) ;;
  }

  dimension: tax {
    type: number
    sql: cast(${TABLE}.tax as float64) ;;
  }

  dimension:  discount {
    type: number
    sql: cast(${TABLE}. discount as float64) ;;
  }


  dimension: cart_id {
    type: string
    sql: ${TABLE}.cart_id ;;
  }

  dimension: billing_provider {
    type: string
    sql: ${TABLE}.billing_provider ;;
  }

  dimension: cs_order_channel {
    type: string
    sql: ${TABLE}.cs_order_channel ;;
  }

  dimension: agent_email {
    type: string
    sql: ${TABLE}.agent_email ;;
  }

  dimension: agent_first_name {
    type: string
    sql: ${TABLE}.agent_first_name ;;
  }

  dimension: agent_last_name {
    type: string
    sql: ${TABLE}.agent_last_name ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.agent_id ;;
  }

  dimension: order_source {
    type: string
    sql: ${TABLE}.order_source ;;
  }

  dimension: cart_remote_token {
    type: string
    sql: ${TABLE}.cart_remote_token ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }




  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: cs_agent_sales {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
