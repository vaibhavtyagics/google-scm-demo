view: inventory_stats {
  sql_table_name: `@{PROJECT}.@{INVENTORY_DATASET}.inventory_stats1` ;;

  dimension: pk {
    hidden: yes
    type: string
    sql: CONCAT(${product_uid},${location_uid},cast(${alpha} as string)) ;;
  }


  dimension: alpha {
    type: number
    sql: ${TABLE}.alpha *100;;
    # value_format_name: percent_0
  }

  dimension: alpha_1 {
    # hidden: no
    type: number
    sql: cast(${TABLE}.alpha as string) ;;
  }

  dimension: service_level {
    type: string
    sql: ${alpha_1} ;;
  }


  dimension: alpha_scroll {
    hidden: no
    type: string
    sql: cast(${alpha} as string) ;;
  }

  measure: alpha_filter {
    type: sum
    sql: ${alpha} ;;
  }

  dimension: cycle_stock {
    type: number
    sql: ${TABLE}.CycleStock ;;
  }
  dimension: inventory_level {
    type: number
    sql: ${TABLE}.InventoryLevel ;;
  }
  dimension: location_uid {
    type: string
    sql: ${TABLE}.location_uid ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.product_uid ;;
  }
  dimension: safety_stock {
    type: number
    sql: ${TABLE}.SafetyStock ;;
  }
  measure: count {
    type: count
  }

  measure: safety_stocks {
    type: sum
    sql: ${safety_stock} ;;
  }

  measure: alpha_ {
    label: "Service Level"
    type: sum
    sql: ${alpha}/100 ;;
  }

  measure: invent_value {
    label: "Inventory Value"
    type: sum
    sql: ${inventory_level} ;;
  }

  measure: cycle_stocks {
    type: sum
    sql: ${cycle_stock} ;;
  }

  # filter: service_level{
  #   type: string
  #   sql: ${alpha_filter} *100 ;;
  # }


}
