connection: "google_scm_demo"

# include all the views
include: "/views/**/*.view.lkml"

include: "/dashboards/Inventory_management.dashboard.lookml"

datagroup: google-scm-demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google-scm-demo_default_datagroup

explore: legal_entity {
}

explore: order {

}

explore: location {}

explore: product {

}

explore: forecast {}

explore: asset {}

explore: inventory {}
