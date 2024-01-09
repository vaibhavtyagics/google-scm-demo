view: warehouse_view {
  sql_table_name: `smart-nomad-401004.W2W_Optimization.WarehouseView` ;;

  dimension: available_space {
    type: number
    sql: ${TABLE}.available_space ;;
  }
  dimension: capacity {
    type: number
    sql: ${TABLE}.capacity ;;
  }
  dimension: capacity_uom {
    type: string
    sql: ${TABLE}.capacity_uom ;;
  }
  dimension: cost_amount {
    type: number
    sql: ${TABLE}.cost_amount ;;
  }
  dimension: cost_type {
    type: string
    sql: ${TABLE}.cost_type ;;
  }
  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }
  dimension: equipment_utilization {
    type: number
    sql: ${TABLE}.equipment_utilization ;;
  }
  dimension: labor_efficiency {
    type: number
    sql: ${TABLE}.labor_efficiency ;;
  }
  dimension: onhand_quantity {
    type: number
    sql: ${TABLE}.onhand_quantity ;;
  }
  dimension: product_dimension {
    type: number
    sql: ${TABLE}.product_dimension ;;
  }
  dimension: product_dimension_uom {
    type: string
    sql: ${TABLE}.product_dimension_uom ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.product_uid ;;
  }
  dimension: seasonal_factor {
    type: number
    sql: ${TABLE}.seasonal_factor ;;
  }
  dimension: space_utilization {
    type: number
    sql: ${TABLE}.space_utilization ;;
  }
  dimension: utilized_space {
    type: number
    sql: ${TABLE}.utilized_space ;;
  }
  dimension: warehouse {
    type: string
    sql: ${TABLE}.warehouse ;;
  }
  measure: count {
    type: count
  }

#measure for calcuted fields.

  measure: capacity_sum {
    label: "Capacity"
    type: average
    sql: ${capacity} ;;
    value_format_name: decimal_0
    filters: [cost_type: "Storage"]
  }

  measure: cost {
    type: average
    sql: ${cost_amount} ;;
    value_format_name: decimal_1
    filters: [cost_type: "Storage"]
  }

  measure: equipment_utility {
    type: average
    sql: ${equipment_utilization} ;;
    filters: [cost_type: "Storage,Transportation,Handling"]

  }

  measure: labor_effic {
    type: average
    sql: ${TABLE}.labor_efficiency ;;
    filters: [cost_type: "Storage,Transportation,Handling"]
  }

  measure: onhand_qty {
    type: average
    sql: ${TABLE}.onhand_quantity ;;
    value_format_name: decimal_0
    filters: [cost_type: "Storage"]

  }
  measure: product_dim {
    type: sum
    sql: ${TABLE}.product_dimension ;;
    value_format_name: decimal_1

  }
  measure: seasonal_fact {
    type: sum
    sql: ${TABLE}.seasonal_factor ;;
    value_format_name: decimal_1

  }
  measure: space_utility {
    type: average
    sql: ${TABLE}.space_utilization ;;
    value_format_name: decimal_0
    filters: [cost_type: "Storage"]

  }
  measure: utiliz_space {
    type: average
    sql: ${TABLE}.utilized_space ;;
    value_format_name: decimal_0
    filters: [cost_type: "Storage"]

  }

}
