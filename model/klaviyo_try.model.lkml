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

explore: looker_email_lead_sent_web_events_klaviyo {
  label: "Email cap to sent overlook"
  description: "nectar email cap to sent overlook"

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
