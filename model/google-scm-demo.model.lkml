connection: "google_scm_demo"

# include all the views
include: "/views/**/*.view.lkml"

include: "/dashboards/Inventory_management.dashboard.lookml"
include: "/dashboards/inventory_simulation.dashboard.lookml"
include: "/dashboards/gdc_twos_simulations.dashboard.lookml"

datagroup: google_scm_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google_scm_demo_default_datagroup

#Models to establish connections betweeen views.

explore: order {
  join: location {
  type: inner
  sql_on: ${order.location_uid} = ${location.location_uid} ;;
  relationship: one_to_one
}

  join: legal_entity {
    type: left_outer
    sql_on: ${order.key_legal_entity_uid} = ${legal_entity.legal_entity_uid} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: inner
    sql_on: ${inventory.location_uid} = ${order.location_uid}
      and ${inventory.product_uid} = ${order.product_uid};;
    relationship: many_to_one
  }

join: product {
  type: left_outer
  sql_on: ${order.product_uid} = ${product.product_uid} ;;
  relationship: many_to_one
}
join: date {
  type: left_outer
  sql_on: ${order.order_creation_date_date} = ${date.date_date} ;;
  relationship: many_to_one
}

}

explore: inventory_location {
  view_name: inventory_location
}

explore: inventory {
  label: "Inventory"
  join: location {
  type: inner
  sql_on: ${inventory.location_uid} = ${location.location_uid} ;;
  relationship: one_to_one
}

join: order   {
  type:  full_outer
  sql_on: ${order.location_uid} = ${location.location_uid}
    AND ${inventory.product_uid} = ${order.product_uid} ;;
  relationship: one_to_many
}

join :product {
  type: inner
  sql_on: ${product.product_uid} = ${inventory.product_uid} ;;
  relationship: one_to_one
}

  join: legal_entity {
    type: left_outer
    sql_on: ${order.key_legal_entity_uid} = ${legal_entity.legal_entity_uid} ;;
    relationship: many_to_one
  }

  join: forecast {
    type: full_outer
    sql_on: ${forecast.location_uid} = ${order.location_uid}
    and ${forecast.product_uid} = ${order.product_uid} ;;
    relationship: one_to_many
  }

  join: date {
    type: left_outer
    sql_on: ${order.order_creation_date_date} = ${date.date_date} ;;
    relationship: many_to_one
  }
}

explore: inventory_simulation {
  group_label: "Inventory Forecast"
  label: "Inventory Simulation"
  join: location {
    type: left_outer
    sql_on: ${inventory_simulation.location_uid} = ${location.location_uid} ;;
    relationship: many_to_one
  }

  join: store_level_cost2 {
    type: inner
    sql_on: CAST(${inventory_simulation.alpha} AS FLOAT64) = CAST(${store_level_cost2.alpha}/100 AS FLOAT64)
            and
            ${inventory_simulation.location_uid} = ${store_level_cost2.location_uid}
            and
            ${inventory_simulation.product_uid} = ${store_level_cost2.product_uid}
            and
            ${inventory_simulation.time} = ${store_level_cost2.time};;
    relationship: one_to_one
  }
}

explore: gdc_twos_simulations {
  view_name: gdc_twos_simulations
  join: derived_gdc {
    type: inner
    sql_on: ${gdc_twos_simulations.sku} = ${derived_gdc.sku}
            and
            ${gdc_twos_simulations.wos_target_scenario} = ${derived_gdc.WOS_Target_Scenario};;
    relationship: one_to_one
  }
}

explore: gdc_twos_optimization {}
