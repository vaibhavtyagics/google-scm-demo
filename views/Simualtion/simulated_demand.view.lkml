view: simulated_demand {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.simulated_demand` ;;

  dimension: alpha {
    type: number
    sql: ${TABLE}.alpha ;;
  }
  dimension: demand {
    type: number
    sql: ${TABLE}.demand ;;
  }
  dimension: location_uid {
    type: string
    sql: ${TABLE}.location_uid ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.product_uid ;;
  }
  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }
  measure: demand_ {
    type: sum
    sql: ${demand} ;;
    value_format: "0"
  }
}
