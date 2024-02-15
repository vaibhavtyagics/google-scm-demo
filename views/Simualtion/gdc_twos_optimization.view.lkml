view: gdc_twos_optimization {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.gdc_twos_optimization` ;;

  dimension: asp {
    type: number
    sql: ${TABLE}.asp ;;
  }
  dimension: avg_sellin_fcst {
    type: number
    sql: ${TABLE}.avg_sellin_fcst ;;
  }
  dimension: gdc_twos {
    type: number
    sql: ${TABLE}.GDC_TWOS ;;
  }
  dimension: max_fe {
    type: number
    sql: ${TABLE}.max_fe ;;
  }
  dimension: median_fe {
    type: number
    sql: ${TABLE}.median_fe ;;
  }
  dimension: msrp_median {
    type: number
    sql: ${TABLE}.msrp_median ;;
  }
  dimension: product_line {
    type: string
    sql: ${TABLE}.product_line ;;
  }
  dimension: proxy_pl {
    type: string
    sql: ${TABLE}.proxy_pl ;;
  }
  dimension: proxy_sku {
    type: string
    sql: ${TABLE}.proxy_sku ;;
  }
  dimension: si_forecast {
    type: number
    sql: ${TABLE}.si_forecast ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  dimension: sl {
    type: number
    sql: ${TABLE}.SL ;;
  }
  dimension: unit_cost_median {
    type: number
    sql: ${TABLE}.unit_cost_median ;;
  }
  measure: count {
    type: count
  }

  measure: gdc_twos_min {
    type: sum
    sql: ${TABLE}.GDC_TWOS ;;
  }
}
