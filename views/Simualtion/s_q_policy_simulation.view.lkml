view: s_q_policy_simulation {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.sQ_Policy_Simulation` ;;

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
  measure: count {
    type: count
  }
}
