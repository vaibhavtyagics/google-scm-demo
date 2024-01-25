view: store_level_cost2 {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.inv_cost_simulation` ;;

  dimension: pk {
    hidden: yes
    type: string
    sql: CONCAT(${product_uid},${location_uid},cast(${alpha} as string), cast(${time})as string) ;;
  }

  dimension: alpha {
    type: number
    sql: ${TABLE}.alpha ;;
  }
  dimension: fill_rate {
    type: number
    sql: ${TABLE}.fill_rate ;;
  }
  dimension: inventory_cost {
    type: number
    sql: ${TABLE}.inventory_cost ;;
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
    sql: ${TABLE}.Time ;;
  }
  measure: count {
    type: count
  }

  dimension: transaction_cost {
    type: number
    sql:  ${TABLE}.transaction_cost ;;
  }

  dimension: backorder_cost {
    type: number
    sql:  ${TABLE}.backorder_cost ;;
  }

  dimension: holding_cost {
    type: number
    sql: ${TABLE}.holding_cost ;;
  }

  #Measures for calculated fields.

  measure: total_fill_rate {
    type: sum
    sql: ${fill_rate} ;;
    value_format_name: decimal_0
  }

  measure: total_inventory_cost {
    type: sum
    sql: ${inventory_cost} ;;
    value_format_name: decimal_0
    drill_fields: [transaction_cost,backorder_cost,holding_cost]

    # html:
    # {% if value > total_inventory_cost._value %}
    # <font color="green"> ▲ {{ rendered_value }}  MTD </font>
    # {% elsif value == total_inventory_cost._value %}
    # <font color="orange"> □ {{ rendered_value }} MTD </font>
    # {% else %}
    # <font color="darkred"> ▼ {{ rendered_value }} MTD </font>
    # {% endif %} ;;
  }

}
