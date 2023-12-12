view: inventory_simulation3 {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.Inventory_simulation3` ;;

  dimension: alpha {
    type: number
    sql: ${TABLE}.alpha ;;
  }
  dimension: cs {
    type: number
    sql: ${TABLE}.Cs ;;
  }
  dimension: is {
    type: number
    sql: ${TABLE}.`Is` ;;
  }
  dimension: location_uid {
    type: string
    sql: ${TABLE}.location_uid ;;
  }
  dimension: onhand {
    type: number
    sql: ${TABLE}.Onhand ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.product_uid ;;
  }
  dimension: s {
    type: number
    sql: ${TABLE}.S ;;
  }
  dimension: ss {
    type: number
    sql: ${TABLE}.Ss ;;
  }
  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }
  measure: avg_on_hand {
    label: "On Hand"
    type: average
    sql: ${onhand} ;;
  }
}
