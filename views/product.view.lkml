view: product {
  sql_table_name: `@{PROJECT}.@{INVENTORY_DATASET}.product` ;;
  drill_fields: [product_uid]

  dimension: product_uid {
    primary_key: yes
    type: string
    sql: ${TABLE}.product_uid ;;
  }
  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }
  dimension: base_uom {
    type: string
    sql: ${TABLE}.base_uom ;;
  }
  dimension: batch_managed {
    type: string
    sql: ${TABLE}.batch_managed ;;
  }
  dimension_group: change {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.change_date ;;
  }
  dimension_group: creation {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.creation_date ;;
  }
  dimension: gross_weight {
    type: string
    sql: ${TABLE}.gross_weight ;;
  }
  dimension: lead_time {
    type: string
    sql: ${TABLE}.lead_time ;;
  }
  dimension: organization_level {
    type: string
    sql: ${TABLE}.organization_level ;;
  }
  dimension: procurement_type {
    type: string
    sql: ${TABLE}.procurement_type ;;
  }
  dimension: product_category {
    type: string
    sql: ${TABLE}.product_category ;;
  }
  dimension: product_classification {
    type: string
    sql: ${TABLE}.product_classification ;;
  }
  dimension: product_cost {
    type: number
    sql: ${TABLE}.product_cost ;;
  }
  dimension: product_cost_currency {
    type: string
    sql: ${TABLE}.product_cost_currency ;;
  }
  dimension: product_description {
    type: string
    sql: ${TABLE}.product_description ;;
  }
  dimension: product_group {
    type: string
    sql: ${TABLE}.product_group ;;
  }
  dimension: product_hierarchy {
    type: string
    sql: ${TABLE}.product_hierarchy ;;
  }
  dimension: product_hierarchy_level {
    type: string
    sql: ${TABLE}.product_hierarchy_level ;;
  }
  dimension: product_hierarchy_level_1 {
    type: string
    sql: ${TABLE}.product_hierarchy_level_1 ;;
  }
  dimension: product_hierarchy_level_1_name {
    type: string
    sql: ${TABLE}.product_hierarchy_level_1_name ;;
  }
  dimension: product_hierarchy_level_2 {
    type: string
    sql: ${TABLE}.product_hierarchy_level_2 ;;
  }
  dimension: product_hierarchy_level_2_name {
    type: string
    sql: ${TABLE}.product_hierarchy_level_2_name ;;
  }
  dimension: product_hierarchy_level_name {
    type: string
    sql: ${TABLE}.product_hierarchy_level_name ;;
  }
  dimension: product_hierarchy_name {
    type: string
    sql: ${TABLE}.product_hierarchy_name ;;
  }
  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }
  dimension: safety_stock {
    type: number
    sql: ${TABLE}.safety_stock ;;
  }
  dimension: shelf_life {
    type: string
    sql: ${TABLE}.shelf_life ;;
  }
  dimension: temperature_condition {
    type: string
    sql: ${TABLE}.temperature_condition ;;
  }
  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
  dimension_group: valid_from {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.valid_from_date ;;
  }
  dimension_group: valid_to {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.valid_to_date ;;
  }
  dimension: volume {
    type: string
    sql: ${TABLE}.volume ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  product_uid,
  product_hierarchy_level_name,
  product_hierarchy_level_2_name,
  product_hierarchy_level_1_name,
  product_hierarchy_name,
  product.product_uid,
  product.product_hierarchy_level_name,
  product.product_hierarchy_level_2_name,
  product.product_hierarchy_level_1_name,
  product.product_hierarchy_name,
  product.count
  ]
  }

  measure: total_safety_stock {
    type: sum
    sql: ${safety_stock}/1000;;
    value_format_name: decimal_0
  }

}
