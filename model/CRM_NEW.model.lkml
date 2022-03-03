connection: "marketing"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
 explore: looker_klaviyo_try_1 {
  label: "Klaviyo Try"
  description: "trying to make this work"

}

explore: web_events_klaviyo_lead_capture_tbl {
  label: "Web events / Klaviyo "
  description: "Lead cap / first sent Email "

}

explore: cart_mix_for_looker_tbl{
  label: "cart_mix"
  description: "cart_mix"
  }




explore: klaviyo_events_email_type_num_in_flow_tbl {
  join:  web_events_klaviyo_lead_capture_tbl {
    type:  full_outer
    relationship: one_to_many
    sql_on:${klaviyo_events_email_type_num_in_flow_tbl.event_date} =${web_events_klaviyo_lead_capture_tbl.date_date} ;;}
  label: "klaviyo events"
  description: "date as timesemp"
}

explore: retention_2_buy_tbl {
  label: "retention - 2 buy"

}

explore: acquisition_source_email_orders_tbl {
  label: "Email order acquisition source "
}



#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

case_sensitive: no
