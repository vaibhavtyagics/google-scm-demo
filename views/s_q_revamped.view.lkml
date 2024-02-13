view: s_q_revamped {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.sQ_Revamped` ;;

  dimension: alpha {
    type: number
    sql: ${TABLE}.alpha*100 ;;
  }
  dimension: demand {
    type: number
    sql: ${TABLE}.demand ;;
  }
  dimension: hand_plot {
    type: number
    sql: ${TABLE}.hand_plot ;;
  }
  dimension: holding_costs {
    type: number
    sql: ${TABLE}.holding_costs ;;
  }
  dimension: location_uid {
    type: string
    sql: ${TABLE}.location_uid ;;
  }
  dimension: ordering_costs {
    type: number
    sql: ${TABLE}.ordering_costs ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.product_uid ;;
  }
  dimension: reorder_point {
    type: number
    sql: ${TABLE}.reorder_point ;;
  }
  dimension: reorder_quantity {
    type: number
    sql: ${TABLE}.reorder_quantity ;;
  }
  dimension: safety_stock {
    type: number
    sql: ${TABLE}.safety_stock ;;
  }
  dimension: stock_on_hand {
    type: number
    sql: ${TABLE}.stock_on_hand ;;
  }
  dimension: stockout_costs {
    type: number
    sql: ${TABLE}.stockout_costs ;;
  }
  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }
  dimension: time_plot {
    type: number
    sql: ${TABLE}.time_plot ;;
  }
  dimension: total_costs {
    type: number
    sql: ${TABLE}.total_costs ;;
  }
  measure: count {
    type: count
  }
  measure: stock_on_hand_ {
    type: sum
    sql: ${TABLE}.stock_on_hand ;;
  }
  measure: demand_ {
    type: sum
    sql: ${TABLE}.demand ;;
  }
  measure: reorder_point_ {
    type: average
    sql: ${TABLE}.reorder_point ;;
  }
  measure: safety_stock_ {
    type: average
    sql: ${TABLE}.safety_stock ;;
  }
  measure: reorder_quantity_ {
    type: average
    sql: ${TABLE}.reorder_quantity ;;
  }
  measure: total_costs_ {
    type: sum
    sql: ${TABLE}.total_costs ;;
  }
}
