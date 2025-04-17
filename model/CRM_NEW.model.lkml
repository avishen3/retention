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

### cart mix data

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

#### acquisition data

explore: acquisition_source_email_orders_tbl {
  label: "Email order acquisition source "
}

### retention

explore: first_seconed_buy_brand_database_for_looker_tbl {
label: "retention first two buys"
}


explore: acquisition_source_email_visit_and_orders_tbl{
label: "Email visit and order acquisition source "
}

## basic dashboarde re build


###!!!
##explore: klaviyo_events_n_dc_tbl {
##label: "Klaviyo Events - New"
##}

###!!!!

## attantive data


explore: attentive_all_brands_full_data_for_looker_tbl {
label: "Attentive events "
}

## nps

explore: nps_data_item_order_tbl  {
label: "nps data item order tbl"
}


## items with source - cart mix
explore: admin_line_item_cogs_with_source_data_tbl {
  label: "Cart Mix - items level - source  "
}



###### BY USER Klaviyo!! ###



explore: klaviyo_email_events_by_user {
  label: "Email events by user"
}


## attentive_by_user

explore: attentive_by_user {
  label: "SMS events by user"
}


## attentive_by_user

explore: klaviyo_unified_events {
  label: "Klaviyo Unified Events"
}

### klaviyo_attentive_combined_data

explore: klaviyo_attentive_combined_data{
  label: "Klaviyo Attentive Combined data"
  description: "Klaviyo Attentive by User Combined data"}


### a_i_journeys_test_march_2025_tbl


explore: a_i_journeys_test_march_2025_tbl {
  label: "a_i_journeys_test_march_2025_tbl"
}



explore: ai_journeys_test_march_2025_cvr_tbl {
  label: "ai_journeys_test_march_2025_cvr_tbl"
}

explore: ods_sftp_attentive_nectar {
  label: "ods_sftp_attentive_nectar"
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
