view: inventory {
  sql_table_name: `@{PROJECT}.@{INVENTORY_DATASET}.Inventory` ;;


   dimension: pk {
    type: string
    primary_key: yes
    sql: CONCAT(cast(${inv_gr_date} as string),'',${location_uid},'',${product_uid}) ;;
  }

  dimension: batch_number {
    type: string
    sql: ${TABLE}.batch_number ;;
  }
  dimension_group: inv_gr {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.inv_gr_date ;;
  }
  dimension: inventory_assignment {
    type: string
    sql: ${TABLE}.inventory_assignment ;;
  }
  dimension: inventory_block {
    type: string
    sql: ${TABLE}.inventory_block ;;
  }
  dimension_group: inventory {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.inventory_date ;;
  }
  dimension: inventory_ownership {
    type: string
    sql: ${TABLE}.inventory_ownership ;;
  }
  dimension: procurement_type {
    type: string
    sql: ${TABLE}.procurement_type;;
  }
  dimension: inventory_quantity {
    type: number
    sql: ${TABLE}.inventory_quantity ;;

  }
  dimension: inventory_type {
    type: string
    sql: ${TABLE}.inventory_type ;;
  }
  dimension: location_uid {
    type: string
    sql: ${TABLE}.location_uid ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.product_uid ;;
  }
  dimension: remaining_shelf_life {
    type: string
    sql: ${TABLE}.remaining_shelf_life ;;
  }
  dimension: valuation_area {
    type: string
    sql: ${TABLE}.valuation_area ;;
  }
  measure: count {
    type: count
  }

# ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      product.product_id,
      product.product_hierarchy_level_2_name,
      product.product_hierarchy_level_1_name,
      product.product_hierarchy_name,
      location.location_id,
      location.location_name
    ]
  }


#Custom Measures for KPI'S

  measure: total_inventory_quantity {
    type: sum
    sql: ${inventory_quantity} ;;
    drill_fields: [detail*]
  }


}
