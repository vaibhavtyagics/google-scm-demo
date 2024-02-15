view: check2 {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.GDC_TWOS_what_if` ;;

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

  dimension: wos_mean {
    type: string
    sql: cast(${TABLE}.EOH_WOS_mean as string) ;;
  }

  dimension: inc_air_cost {
    type: number
    sql: ${TABLE}.IncAirCost ;;
  }

  measure: inc_air_cost_ {
    type: sum
    sql:  ${inc_air_cost} ;;
  }

  dimension: inv_cost {
    type: number
    sql: ${TABLE}.InvCost ;;
  }

  measure: inv_cost_ {
    type: sum
    sql:  ${inv_cost};;
  }
  dimension: lifecycle {
    type: string
    sql: ${TABLE}.lifecycle ;;
  }
  dimension: lost_sales_cost {
    type: number
    sql: ${TABLE}.LostSalesCost ;;
  }

  measure: lost_sales_cost_ {
    type: sum
    sql:  ${lost_sales_cost} ;;
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

  measure: sl_ {
    label: "Service Level %"
    type: sum
    sql: ${TABLE}.SL ;;
    value_format_name: percent_0
  }

  measure: sl_opt {
    label: "Service Level %"
    type: sum
    sql: case when
                  ${gdc_twos} = ${wos_target_scenario} then ${TABLE}.OPT_SL
                  else 0
                  end;;
    value_format_name: percent_0
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

  measure: total_cost_ {
    type: sum
    sql:  ${total_cost} ;;
    value_format_name: usd_0
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

  filter: sku_wos {
    type: string
    suggest_dimension: wos_mean
  }

  measure: min_total_cost {
    type: min
    sql: ${total_cost} ;;
  }

  # measure: rank_cost {
  #   type: min
  #   sql:  ;;
  # }

  measure: count {
    type: number
  }

  filter: sku_filter {
    type: string
    suggest_dimension: sku
  }

  dimension: sku_filter_dim {
    type: string
    sql: {% condition sku_filter %} ${sku} {% endcondition %} ;;
  }

  dimension: opt_Cost {
    type: number
    sql: ${TABLE}.OPT_Cost ;;
  }

  measure: opt_costs {
    type: sum
    sql: case when
                  ${gdc_twos} = ${wos_target_scenario} then ${opt_Cost}
                  else 0
                  end;;
  }

  dimension: gdc_twos {
    type: number
    sql: ${TABLE}.GDC_TWOS ;;
  }

#Measure for single KPI's

  measure: inc_air_cost_KPI {
    label: "Inc Air Cost"
    group_label: "KPI"
    type: sum
    sql:  case when
                  ${gdc_twos} = ${wos_target_scenario} then ${inc_air_cost}
                  else 0
                  end ;;
  }
  measure: inv_cost_KPI {
    label: "Inventory Cost"
    group_label: "KPI"
    type: sum
    sql:  case when
                  ${gdc_twos} = ${wos_target_scenario} then ${inv_cost}
                  else 0
                  end;;
  }
  measure: lost_sales_cost_KPI {
    label: "Lost Sales Cost"
    group_label: "KPI"
    type: sum
    sql:  case when
                  ${gdc_twos} = ${wos_target_scenario} then ${lost_sales_cost}
                  else 0
                  end ;;
  }
  measure: total_cost_KPI {
    label: "Total Cost"
    group_label: "KPI"
    type: sum
    sql:  case when
                  ${gdc_twos} = ${wos_target_scenario} then ${total_cost}
                  else 0
                  end ;;
    value_format_name: usd_0
  }


}
