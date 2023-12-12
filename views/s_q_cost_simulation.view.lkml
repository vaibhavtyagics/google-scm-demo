view: s_q_cost_simulation {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.sQ_Cost_Simulation` ;;

  dimension: alpha {
    type: number
    sql: ${TABLE}.alpha ;;
  }
  dimension: backorder_cost {
    type: number
    sql: ${TABLE}.backorder_cost ;;
  }
  dimension: cs {
    type: number
    sql: ${TABLE}.Cs ;;
  }
  dimension: cumulative_demand {
    type: number
    sql: ${TABLE}.cumulative_demand ;;
  }
  dimension: holding_cost {
    type: number
    sql: ${TABLE}.holding_cost ;;
  }
  dimension: invenotry_stock {
    type: number
    sql: ${TABLE}.invenotry_stock ;;
  }
  dimension: inventory_onhand {
    type: number
    sql: ${TABLE}.inventory_onhand ;;
  }
  dimension: inventory_shortage {
    type: number
    sql: ${TABLE}.inventory_shortage ;;
  }
  dimension: lead_time_cost {
    type: number
    sql: ${TABLE}.lead_time_cost ;;
  }
  dimension: location_uid {
    type: string
    sql: ${TABLE}.location_uid ;;
  }
  dimension: optimal_cycle_service_level {
    type: number
    sql: ${TABLE}.optimal_cycle_service_level ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.product_uid ;;
  }
  dimension: requested_quantity {
    type: number
    sql: ${TABLE}.requested_quantity ;;
  }
  dimension: safety_stock {
    type: number
    sql: ${TABLE}.safety_stock ;;
  }
  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }
  dimension: total_cost {
    type: number
    sql: ${TABLE}.total_cost ;;
  }
  dimension: transaction_cost {
    type: number
    sql: ${TABLE}.transaction_cost ;;
  }
  measure: inventory_cost {
    type: average
    sql: ${total_cost} ;;
    value_format_name: usd_0
  }
  measure: holding_cost_ {
    label: "Holding Cost"
    type: average
    sql: ${holding_cost} ;;
    value_format_name: usd
  }
  measure: lead_time_cost_ {
    label: "Lead Time Cost"
    type: average
    sql: ${lead_time_cost} ;;
    value_format_name: usd
  }
  measure: cyclic_stock {
    label: "Cyclic Stock"
    type: average
    sql: ABS(${cs}) ;;
  }
  measure: on_hand {
    type: average
    sql: ${inventory_onhand} ;;
  }
  measure: safety_stock_ {
    label: "Safety Stock"
    type: average
    sql: ABS(${safety_stock}) ;;
  }

  measure: avg_cumulative_demand {
    label: "Demand"
    type: average
    sql: ABS(${cumulative_demand}) ;;
  }
}
