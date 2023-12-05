view: gdc_twos_simulations {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.gdc_twos_simulations` ;;

  dimension: air_percent_mean {
    type: number
    sql: ${TABLE}.air_percent_mean ;;
  }
  dimension: asp {
    type: number
    sql: ${TABLE}.asp ;;
  }
  dimension: avg_sellin_fcst {
    type: number
    sql: ${TABLE}.avg_sellin_fcst ;;
  }
  dimension: bu {
    type: string
    sql: ${TABLE}.BU ;;
  }
  dimension: eoh_wos_mean {
    type: number
    sql: ${TABLE}.EOH_WOS_mean ;;
  }
  dimension: inc_air_cost {
    type: number
    sql: ${TABLE}.IncAirCost ;;
  }
  dimension: inv_cost {
    type: number
    sql: ${TABLE}.InvCost ;;
  }
  dimension: lifecycle {
    type: string
    sql: ${TABLE}.lifecycle ;;
  }
  dimension: lost_sales_cost {
    type: number
    sql: ${TABLE}.LostSalesCost ;;
  }
  dimension: margin {
    type: number
    sql: ${TABLE}.margin ;;
  }
  dimension: msrp_median {
    type: number
    sql: ${TABLE}.msrp_median ;;
  }
  dimension: product_line {
    type: string
    sql: ${TABLE}.product_line ;;
  }
  dimension: profit {
    type: number
    sql: ${TABLE}.Profit ;;
  }
  dimension: revenue {
    type: number
    sql: ${TABLE}.Revenue ;;
  }
  dimension: sales_units {
    type: number
    sql: ${TABLE}.SalesUnits ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  dimension: sl {
    type: number
    sql: ${TABLE}.SL ;;
  }
  dimension: stock_out_percent_mean {
    type: number
    sql: ${TABLE}.stock_out_percent_mean ;;
  }
  dimension: stock_out_units {
    type: number
    sql: ${TABLE}.stock_out_units ;;
  }
  dimension: total_cost {
    type: number
    sql: ${TABLE}.TotalCost ;;
  }
  dimension: total_sellin_fcst {
    type: number
    sql: ${TABLE}.total_sellin_fcst ;;
  }
  dimension: unit_cost_median {
    type: number
    sql: ${TABLE}.unit_cost_median ;;
  }
  dimension: wos_target_scenario {
    type: number
    sql: ${TABLE}.WOS_Target_Scenario ;;
  }
  measure: count {
    type: count
  }
}
