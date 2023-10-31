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
  dimension: inventory_status {
    type: string
    sql: CASE
      WHEN ${inventory.inventory_quantity} > 1.5 * ${product.safety_stock} THEN 'Over-Stock'
      WHEN ${inventory.inventory_quantity} >= ${product.safety_stock} THEN 'At-Stock'
      WHEN ${inventory.inventory_quantity} > 0 THEN 'Under-Stock'
      ELSE 'Out-of-Stock'
      END ;;
  }

  dimension : Alert {
    type: string
    sql: CASE
      WHEN ${inventory.inventory_quantity} = 0 THEN 'Restock'
      ELSE 'Instock'
      END ;;
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
  label: "Total Inventory Quantity (in millions)"
  drill_fields: [detail*]
  value_format: "0,,\" M\""
}

  measure: total_inventory_quantity_in_number {
    type: sum
    sql: ${inventory_quantity} ;;
    label: "Total Inventory Quantity"
    drill_fields: [procurement_type, location_uid ,total_inventory_quantity_in_number]
  }


  measure: inventory_cost {
    type: sum
    sql: ${inventory_quantity}*${product.product_cost} ;;
    value_format: "$ 0,,\" M\""
  }

measure: shrinkage {
  type: number
  sql: 2.1 ;;
}

  dimension: shrinkage_category {
    type: number
    sql: CASE WHEN ${product.product_category} = "Chemicals"
              THEN 2.1
              WHEN ${product.product_category} = "Beauty"
              THEN 2.3
              WHEN ${product.product_category} = "Clothing"
              THEN 2.0
              WHEN ${product.product_category} = "Electronics"
              THEN 3.0
              WHEN ${product.product_category} = "Sports"
              THEN 2.7
              WHEN ${product.product_category}= "Manufacturing"
              THEN 2.5
              WHEN ${product.product_category} = "Home"
              THEN 2.2
              ELSE
              2.3
              END;;

  }

  measure: average_inventory_quantity {
    type: average
    sql: ${inventory_quantity} ;;

    }

  measure:  cogs{
    type: sum
    sql:  ${product.product_cost};;
  }

  measure: inventory_turnover {
    type: number
    sql: ${cogs}/${average_inventory_quantity} ;;
    value_format_name: decimal_2
  }

  measure: number_of_days_in_period {
    type: sum
    sql: ${product.lead_time} ;;
  }

  measure: dsi {
    type: number
    sql: (${average_inventory_quantity}/ ${cogs}) * ${number_of_days_in_period};;
    value_format_name: decimal_2
  }

  measure: stock_to_sales_ratio {
    type: number
    sql: ${average_inventory_quantity} * ${order.total_sales}  ;;
  }

}
