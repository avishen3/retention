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

### CS Real Time agent order


explore: cs_agent_sales_vw{
  label: "RealTime CS Agent Sale View"
  description: "View, Updated about every half hours"
}

###

explore: cartlink_source_data_tbl {
  label: "cartlink source data"
}

explore: cartlink_by_agent_count_for_looker_tbl {
  label: "cartlink by agents"
}

explore: cartlink_data_with_date_diff_billing_provider_tbl {
  label: "cartlink data with date_diff and billing provider"
}

explore: cartlink_souce_data_tbl_new {
  label: "cartlink new for chacking "

}

explore: cartlink_data_with_date_diff_billing_provider_and_cart_order_status_tbl {
  label: "cartlink data with date diff billing provider and cart order status tbl"
}


explore: cartlink_overview_data_for_looker_tbl {
  label: "cartlink overview data"
}

## FIVE  9 SLOW BUILD


explore: five9_data_check_tbl {
  label: "five9 example data for dash building"
}

explore: five9_prospect_customer_tbl {
  label: "five9_prospect_customer_tbl"
}




## alerts
explore: cs_upsell_alerts_with_order_line_items_tbl {
  label: "cs_upsell_alerts"
}

explore: alerts_outgoing_calls_five9_tbl {
  label: " Upsell alerts five9 exchange"
}


## refound and RP



explore: topper_refund_data_tbl {
  label: "Topper Refund Data"
}


explore: admin_client_events_agents_check_up_tbl{
  label: "admin client events agents check up"
  description: "Malshinon for Neta"}

explore: retention_platform{
  label: "Retention Platform"}

explore: pillow_refund_data_tbl {
  label: "Pillow Refund Data"
}


## cartlink

explore: cartlink_funnel_tbl{
  label: "cartlink funnel tbl"
  description: "cartlink funnel tbl"}



## admin

explore: admin_prospect_customertbl{
  label: "admin_prospect_customer tbl"
  description: "admin prospect customer tbl"}

## zingtree


explore: zingtree_raw_tl{
  label: "Zingtree Raw Data"
  description: "Zingtree Raw Data"}


### five9_all_interactions 15042024

explore: five9_all_interactions{
  label: "Five9 All Interactions"
  description: "Five9 All Interactions"}

### tymely monitoring
explore: tymely_monitoring_tbl{}


explore: refund_items_24h_repeat_order_tbl {}

explore: topper_and_pillow_refund_data_tbl {}

explore: specialoffer_agent_coupon_item_level_tbl {
  label: "coupon special offer item level"
}




explore: specialoffer_agent_coupon_order_level_tbl {
  label: "coupon special offer order level"
}

explore: pre_transit_agentlevel_retention_data_tbl {}

explore: rp_save_rate_retention_outcome_tbl {}

explore: oos_orders_agents_tbl {}


explore: ptc_first_24_hours_refund_five9_interaction_tbl {}

explore: out_of_stock_shipments_snapshot_five9_interactions_tbl {}

explore: agent_orders_real_time_vw {}
