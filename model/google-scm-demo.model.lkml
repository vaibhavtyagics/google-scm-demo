connection: "google_scm_demo"

# include all the views
include: "/views/**/*.view.lkml"

include: "/dashboards/Inventory_management.dashboard.lookml"

datagroup: google-scm-demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google-scm-demo_default_datagroup

#Models to establish connections betweeen views.

explore: order {
  join: location {
  type: inner
  sql_on: ${order.location_uid} = ${location.location_uid} ;;
  relationship: many_to_one
}

  join: legal_entity {
    type: left_outer
    sql_on: ${order.key_legal_entity_uid} = ${legal_entity.legal_entity_uid} ;;
    relationship: many_to_one
  }

join: inventory {
  type: full_outer
  sql_on: ${inventory.location_uid} = ${order.location_uid}
          and ${inventory.product_uid} = ${order.product_uid};;
  relationship: many_to_one
}

join: product {
  type: left_outer
  sql_on: ${order.product_uid} = ${product.product_uid} ;;
  relationship: many_to_one
}
}
