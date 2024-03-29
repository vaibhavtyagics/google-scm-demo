view: derived_gdc {
  # sql_table_name: `smart-nomad-401004.google_demo_reporting.gdc_twos_simulations`  ;;

  derived_table: {
    sql:
    select sku, SL, WOS_Target_Scenario, min(TotalCost) as min_cost, Rank()
          over
(partition by sku
order by min(TotalCost) asc) as rank
from smart-nomad-401004.google_demo_reporting.GDC_TWOS_what_if
group by 1,2,3
    ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: WOS_Target_Scenario {
    type: number
    sql: ${TABLE}.WOS_Target_Scenario ;;
  }

  measure: min_cost {
    type: sum
    sql: ${TABLE}.min_cost ;;
  }

  dimension: rank_dim {
    type: number
    sql: ${TABLE}.Rank ;;
  }

  measure: rank {
    type: sum
    sql: ${TABLE}.Rank ;;
  }

}
