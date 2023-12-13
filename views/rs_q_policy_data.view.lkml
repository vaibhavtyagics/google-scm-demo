view: rs_q_policy_data {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.RsQ_policy_data` ;;

  dimension: current_inventory {
    type: number
    sql: ${TABLE}.current_inventory ;;
  }
  dimension: location_uid {
    type: string
    sql: ${TABLE}.location_uid ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.product_uid ;;
  }
  dimension: reorder_point {
    type: number
    sql: ${TABLE}.reorder_point ;;
  }
  dimension: review_period {
    type: number
    sql: ${TABLE}.review_period ;;
  }
  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }
  measure: count {
    type: count
  }
}
