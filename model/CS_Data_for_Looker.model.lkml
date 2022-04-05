connection: "marketing"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }


explore: upsell_by_agents_tbl {
  label: "daily agent upsell"
  description: "Daily upsell by agent"
}

explore: sales_by_agents_looker_try_tbl {
  label: "SALES BY AGENTS "
  description: "FIRST TRY"

}

explore: admin_line_item_cogs {
  label: "admin line item cogs "
  description: "FIRST TRY"

}

explore: admin_orders {
  label: "admin orders "
  description: "FIRST TRY"
}



explore: cs_sale_by_agents_for_looker {
  label: "CS Sales by agents"
  description: "all + chat data"
}


####
explore: cs_call_data_for_looker_tb{
  label: "CS inbound calls data"
  description: "manually updated"
}




explore: cs_calls_data_for_looker_nano_niv_tbl{
  label: "CS inbound calls data with nano and nav"
  description: "manually updated"
}


###

explore: cartlink_source_data_tbl {
  label: "cartlink source data"
}

explore: cartlink_by_agent_count_for_looker_tbl {
  label: "cartlink by agents"
}


#}
