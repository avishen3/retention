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

##`omega-post-184817.retail.mattressfirm_sales_by_store_basic_tbl`


explore: mattressfirm_sales_by_store_basic_tbl {
  label: "mattressfirm sales by store basic tbl"
  description: "mattressfirm sales by store basic tbl"
}


explore: mattress_firm_sales {
  label: "mattress firm sales"
}

# }
