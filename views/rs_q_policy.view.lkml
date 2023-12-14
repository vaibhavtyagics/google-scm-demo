view: rs_q_policy {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.RsQ_policy` ;;

  dimension: alpha {
    type: number
    sql: ${TABLE}.alpha ;;
  }
  dimension: cumulative_demand {
    type: number
    sql: ${TABLE}.cumulative_demand ;;
  }
  dimension: inventory_onhand {
    type: number
    sql: ${TABLE}.inventory_onhand ;;
  }
  dimension: inventory_shortage {
    type: number
    sql: ${TABLE}.inventory_shortage ;;
  }
  dimension: inventory_stock {
    type: number
    sql: ${TABLE}.inventory_stock ;;
  }
  dimension: location_uid {
    type: string
    sql: ${TABLE}.location_uid ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.product_uid ;;
  }
  dimension: safety_stock {
    type: number
    sql: ${TABLE}.safety_stock ;;
  }
  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }
  measure: safety_stock_ {
    type: average
    sql: ABS(${safety_stock}) ;;
    value_format: "0"
  }
  measure: avg_cumulative_demand {
    label: "Demand"
    type: average
    sql: ABS(${cumulative_demand}) ;;
    value_format: "0"
  }
}
