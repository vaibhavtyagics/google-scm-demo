view: order {
  sql_table_name: `@{PROJECT}.@{INVENTORY_DATASET}.order` ;;
  drill_fields: [order_creation_date_date,order_id,order_category,status,location_uid,delivered_quantity,sales_price]

  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.order_id ;;
  }
  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }
  dimension_group: actual_delivery {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.actual_delivery_date ;;
  }
  dimension: asset_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.asset_id ;;
  }
  dimension_group: change {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.change_date ;;
  }
  dimension: company_code {
    type: string
    sql: ${TABLE}.company_code ;;
  }
  dimension_group: confirmed_delivery {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.confirmed_delivery_date ;;
  }
  dimension: confirmed_quantity {
    type: number
    sql: ${TABLE}.confirmed_quantity ;;
  }
  dimension_group: order_creation_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_creation_date ;;
  }
  dimension: delivered_quantity {
    type: number
    sql: ${TABLE}.delivered_quantity ;;
  }
  dimension: goodsissue_date_actual {
    type: string
    sql: ${TABLE}.goodsissue_date_actual ;;
  }
  dimension_group: goodsissue_date_confirmed {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.goodsissue_date_confirmed ;;
  }
  dimension_group: goodsissue_date_requested {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.goodsissue_date_requested ;;
  }
  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }
  dimension: key_legal_entity_uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.key_legal_entity_uid ;;
  }
  dimension: location_uid {
    type: string
    sql: ${TABLE}.location_uid ;;
  }
  dimension: mode_of_transport {
    type: string
    sql: ${TABLE}.mode_of_transport ;;
  }
  dimension: open_quantity {
    type: number
    sql: ${TABLE}.open_quantity ;;
  }
  dimension: order_block {
    type: string
    sql: ${TABLE}.order_block ;;
  }
  dimension: order_category {
    type: string
    sql: ${TABLE}.order_category ;;
  }
  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }
  dimension: order_uid {
    type: string
    sql: ${TABLE}.order_uid ;;
  }
  dimension: order_uom {
    type: string
    sql: ${TABLE}.order_uom ;;
  }
  dimension: preceding_document {
    type: string
    sql: ${TABLE}.preceding_document ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.product_uid ;;
  }
  dimension: received_quantity {
    type: number
    sql: ${TABLE}.received_quantity ;;
  }
  dimension: receiving_location_uid {
    type: string
    sql: ${TABLE}.receiving_location_uid ;;
  }
  dimension: rejected_quantity {
    type: number
    sql: ${TABLE}.rejected_quantity ;;
  }

  dimension: returned_quantity {
    type: number
    sql: ${TABLE}.returned_quantity ;;
  }

  dimension: rejection_code {
    type: string
    sql: ${TABLE}.rejection_code ;;
  }
  dimension: requested_delivery_date {
    type: string
    sql: ${TABLE}.requested_delivery_date ;;
  }
  dimension: requested_quantity {
    type: number
    sql: cast(${TABLE}.requested_quantity as int) ;;
  }
  dimension: route_id {
    type: string
    sql: ${TABLE}.route_id ;;
  }
  dimension: sales_price {
    type: number
    sql: ${TABLE}.sales_price ;;
  }
  dimension: sales_price_currency {
    type: string
    sql: ${TABLE}.sales_price_currency ;;
  }
  dimension: schedule_id {
    type: string
    sql: ${TABLE}.schedule_id ;;
  }
  dimension: shipped_quantity {
    type: number
    sql: ${TABLE}.shipped_quantity ;;
  }
  dimension: shipping_location_uid {
    type: string
    sql: ${TABLE}.shipping_location_uid ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: successor_document {
    type: string
    sql: ${TABLE}.successor_document ;;
  }
  dimension: uid {
    type: string
    sql: ${TABLE}.uid ;;
  }
  dimension: valuation_area {
    type: string
    sql: ${TABLE}.valuation_area ;;
  }

  measure: count {
    type: count
    drill_fields: [order_id, asset.asset_id, asset.asset_name]
  }

# Derived Fields

 measure: total_delivered_quantity {
   type: sum
  sql: ${delivered_quantity} ;;
  filters: [order_category: "Purchase Order", status: "Completed"]
  }


  measure: total_requested_quantity {
    type: sum
    sql: ${requested_quantity} ;;
    value_format: "0,\" K\""
  }

  measure: total_rejected_quantity {
    type: sum
    sql: ${rejected_quantity} ;;
    filters: [order_category: "Purchase Order", status: "Completed"]
  }

  measure: order_quality{
    type: number
    sql: ((${total_delivered_quantity} - ${total_rejected_quantity})/${total_delivered_quantity}) ;;
    value_format_name: percent_2
  }
  measure: supplier_quality_index{
    type: number
    sql: ${total_rejected_quantity}/IF(COALESCE(${total_delivered_quantity},0) = 0,null,${total_delivered_quantity})  ;;
    value_format_name: decimal_3
    drill_fields: [supplier_quality_index_drills*]
  }

  set: supplier_quality_index_drills {
    fields: [
      order_id,
      order_creation_date_date,
      status,
      order_category,
      supplier_quality_index
    ]
  }

  set: order_backlog_drills {
    fields: [
      order_id,
      order_creation_date_date,
      status,
      order_category,
      order_backlog,
      backorder_rate
      ]
  }

  measure: order_backlog{
    type: number
    sql:  (${total_requested_quantity}) - ${total_delivered_quantity};;
    drill_fields: [order_backlog_drills*]
  }

  # measure: total_requested_quantity_po{
  #   label: "Incoming Arrivals"
  #   type: number
  #   sql: ${forecast.total_forecast_quantity}*1.2;;
  #   # filters: [order_category: "Purchase Order", status: "Open"]
  #   }

  set: lead_time_details {
    fields: [
      order_id,
      order_creation_date_date,
      actual_delivery_date,
      order_category,
      status,
      location_uid,
      lead_time
    ]
  }

  set: lead_time_details_in_transit {
    fields: [
      order_id,
      order_creation_date_date,
      requested_delivery_date,
      order_category,
      status,
      location_uid,
      in_transit_lead_time
    ]
  }

  measure: lead_time {
    hidden: yes
    type: average
    sql: ROUND(date_diff(${actual_delivery_date}, ${order_creation_date_date}, DAY), 0) ;;
    drill_fields: [lead_time_details*]
  }

  measure: in_transit_lead_time {
    hidden: yes
    type: average
    sql: date_diff(${requested_delivery_date}, ${order_creation_date_date}, DAY);;
    drill_fields: [lead_time_details_in_transit*]
  }

  measure: backorders {
    type: count_distinct
    sql:  ${order_id};;
    filters: [status: "On Hold"]

  }

  measure: total_orders {
    type: count_distinct
    sql: ${order_id} ;;
  }

  measure: backorder_rate {
    type: number
    sql: (COALESCE(${backorders},0) / (COALESCE(${total_orders},0)));;
    value_format_name: percent_2
    drill_fields: [order_backlog_drills*]
  }

  measure: backorder_rate_fr {
    type: number
    sql: 0;;
    value_format_name: percent_2
  }

  measure: total_sales {
    type: sum
    sql: ${sales_price}*${delivered_quantity} ;;
    value_format: "$ 0,,\" M\""
  }

  measure: return_qty {
    hidden: yes
    type: sum
    sql: ${returned_quantity} ;;
  }

  measure: delivered_qty {
    hidden: yes
    type: sum
    sql: ${delivered_quantity} ;;
  }

  set: return_rate_drills {
    fields: [
      order_id,
      order_creation_date_date,
      status,
      order_category,
      delivered_qty,
      return_qty
      ]
  }
  measure: return_rate {
    type: number
    sql: COALESCE(${return_qty},0) / COALESCE(${delivered_qty},0) ;;
    value_format_name: percent_2
    drill_fields: [return_rate_drills*]
  }

  measure: cycle_time {
    hidden: no
    type: average
    sql: ROUND(date_diff(${actual_delivery_date}, ${order_creation_date_date}, DAY), 0) ;;
    value_format_name: decimal_0
  }

  measure: average_lead_time {
    type: number
    sql: 14 ;;
  }

  measure: stocks_to_sales_ration {
    type: number
    sql: 0.17 ;;
  }

  measure: intransit_sell_value {
    type: sum
    sql: ${requested_quantity}*${sales_price} ;;
    value_format: "$ 0,,\" M\""
  }


}
