view: scenario_summary {
  sql_table_name: `smart-nomad-401004.W2W_Optimization.Scenario_Summary` ;;

  dimension: pk {
    primary_key: yes
    type: string
    sql: concat(${product_uid}, ${origin_warehouse}, ${destination_warehouse}) ;;
  }

  dimension: destination_warehouse {
    type: string
    sql: ${TABLE}.destination_warehouse ;;
  }
  dimension: forecast_demand_mean {
    type: number
    sql: ${TABLE}.forecast_demand_mean ;;
    value_format_name: decimal_0
  }
  dimension_group: new_replenishment {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.new_replenishment_date ;;
  }
  dimension: origin_warehouse {
    type: string
    sql: ${TABLE}.origin_warehouse ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.product_uid ;;
  }
  dimension: suggested_transfer_unit {
    type: number
    sql: ${TABLE}.suggested_transfer_unit ;;
    value_format_name: decimal_0
  }
  dimension: transportation_cost {
    type: number
    sql: ${TABLE}.transportation_cost ;;
    value_format: "$ #.#"
  }
  measure: count {
    type: count
  }

#Measure for calculated fields.

  measure: transportation_cost_sum {
    type: sum
    sql: ${TABLE}.transportation_cost ;;
  }

  measure: forecast_demand {
    type: average
    sql: ${TABLE}.forecast_demand_mean ;;
  }

  measure: suggested_transfer {
    type: average
    sql: ${TABLE}.suggested_transfer_unit ;;
  }

}
