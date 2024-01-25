view: s_q_inv_policy {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.sQ_Inv_Policy` ;;

  dimension: alpha {
    label: "alpha float"
    hidden: yes
    type: number
    sql: ${TABLE}.alpha ;;
  }
  dimension: filtered_alpha {
    label: "Alpha"
    type: number
    sql: ${TABLE}.alpha*100 ;;
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
  dimension: total_cost {
    type: number
    sql: ${TABLE}.TotalCost ;;
  }
  measure: Ss {
    label: "Reorder Point"
    #hidden: yes
    type: average
    sql: ${ss} ;;
    value_format: "0"
  }
  measure: Cs {
    label: "Holding Cost"
    type: average
    sql: ${cs} ;;
    value_format_name: usd_0
  }
  measure: Is {
    label: "Initial inventory level"
    type: average
    sql: ${is} ;;
    value_format: "0"
  }
  measure: S {
    label: "Order-up-to level"
    type: average
    sql: ${s} ;;
    value_format: "0"
  }
  measure: on_hand_ {
    type: sum
    sql: ${onhand} ;;
    value_format: "0"
  }
  measure: cyclic_stock {
    label: "Cyclic Stock"
    type: average
    sql: ABS(${cs}) ;;
    value_format: "0"
  }
  measure: total_cost_ {
    type: average
    sql: ${total_cost} ;;
    value_format_name: usd_0
  }
}
