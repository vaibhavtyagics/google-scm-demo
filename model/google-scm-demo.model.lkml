connection: "google_scm_demo"

# include all the views
include: "/views/**/*.view.lkml"

include: "/dashboard/**/*"

datagroup: google_scm_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google_scm_demo_default_datagroup
explore: inventory_location {
  view_name: inventory_location
}

explore: s_q_revamped {
  view_name: s_q_revamped
}

explore: rs_q_policy_prod {
  view_name: rs_q_policy_prod
}
