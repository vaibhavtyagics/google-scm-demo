view: inventory_simulation {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.Inventory_simulation2` ;;

  dimension: pk {
    hidden: yes
    type: string
    sql: CONCAT(${product_uid},${location_uid},cast(${alpha} as string), cast(${time})as string) ;;
  }

  dimension: alpha {
    type: number
    sql: cast((${TABLE}.alpha) as string) ;;
    order_by_field: alpha
    value_format_name: percent_0
  }

  dimension: service_level {
    type: string
    sql: ${alpha} ;;
    order_by_field: alpha
    value_format_name: percent_0
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

  dimension: time_dimension {
    type: string
    sql: cast(${TABLE}.time as string) ;;
    order_by_field: time
  }

  measure: time_scroll {
    type: sum
    sql: ${time} ;;
  }

  measure: count {
    type: count
  }

  measure: Safety_stock {
    type: sum
    sql: ${ss} ;;

    html:
    {% if value < 0 %}
    <div style="color:#e01c21;font-size: 20px"> {{rendered_value}}</div>
    {% else %}
    <div style="color:#7CB342;font-size: 20px">{{rendered_value}}</div>
    {% endif %};;
  }

  measure: S {
    type: sum
    sql: ${s} ;;
  }

  measure: Ls {
    type: sum
    sql: ${is} ;;
  }

  measure: On_hand {
    type: sum
    sql: ${onhand} ;;
  }

  measure: cycle_stock {
    type: sum
    sql: ${cs} ;;
  }

  measure: safety_cycle_stock {
    type: sum
    sql: ${ss} + (2*${cs}) ;;
  }

  measure: inventory_value {
    type: sum
    sql: ${cs} + ${ss} ;;
  }

  dimension: alpha_100 {
    type: number
    sql: ${TABLE}.alpha*100;;
    value_format_name: decimal_0
  }

  dimension: alpha_filter {
    type: string
    sql: ${alpha_100} ;;
  }

#Slider filter for Service level

  dimension: alph {
    type: number
    sql: ${TABLE}.alpha ;;
  }

  measure: al {
    type: sum
    sql: ${alph} ;;
  }

  measure: service_filter {
    type: number
    sql: ${alpha_filtered}/100 ;;
  }

  measure: alpha_filtered {
    type: sum
    # filters: [alpha_100: "1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99"]
    sql: ${alpha_100}  ;;
    value_format_name: decimal_0
  }

}
