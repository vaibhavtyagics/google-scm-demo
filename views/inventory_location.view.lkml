view: inventory_location {
  # # You can specify the table name if it's different from the view name:

  derived_table: {

      sql:
SELECT
a.inventory_date,
a.product_uid,
a.location_uid,
a.batch_number,
a.inventory_type,
a.procurement_type,
a.inventory_assignment,
a.inventory_quantity,
a.remaining_shelf_life,
a.inventory_block,
a.inv_gr_date,
a.inventory_ownership,
a.valuation_area,
b.uuid,
b.location_type,
b.location_id,
b.location_name,
b.location_name2,
b.house_number,
b.street,
b.city,
b.state,
b.postal_code,
b.district,
b.region,
b.country,
b.geo_lattitude,
b.geo_longitude,
b.time_zone,
b.transportation_zone,
b.shipping_calendar,
b.receiving_calendar,
b.working_hour,
b.language_key,
b.valid_from_date,
b.valid_to_date,
b.active,
b.company_code,
b.valuation_area,
b.creation_date,
b.change_date
FROM `@{PROJECT}.@{INVENTORY_DATASET}.Inventory` a INNER JOIN `@{PROJECT}.@{INVENTORY_DATASET}.location` b
on a.location_uid=b.location_uid;;
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
  dimension: location_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.location_id ;;
  }
  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }
  dimension_group: change_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.change_date ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: company_code {
    type: string
    sql: ${TABLE}.company_code ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: creation_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.creation_date ;;
  }
  dimension: district {
    type: string
    sql: ${TABLE}.district ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${geo_lattitude} ;;
    sql_longitude: ${geo_longitude} ;;
  }

  dimension: geo_lattitude {
    type: number
    sql: ${TABLE}.geo_lattitude ;;
  }
  dimension: geo_longitude {
    type: number
    sql: ${TABLE}.geo_longitude ;;
  }
  dimension: house_number {
    type: string
    sql: ${TABLE}.house_number ;;
  }
  dimension: language_key {
    type: string
    sql: ${TABLE}.language_key ;;
  }
  dimension: location_name {
    type: string
    sql: ${TABLE}.location_name ;;
  }
  dimension: location_name2 {
    type: string
    sql: ${TABLE}.location_name2 ;;
  }
  dimension: location_type {
    type: string
    sql: ${TABLE}.location_type ;;
  }

  dimension: postal_code {
    type: number
    sql: ${TABLE}.postal_code ;;
  }
  dimension: postal_code_1 {
    type: string
    sql: ${TABLE}.postal_code_1 ;;
  }
  dimension: receiving_calendar {
    type: string
    sql: ${TABLE}.receiving_calendar ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: shipping_calendar {
    type: string
    sql: ${TABLE}.shipping_calendar ;;
  }
  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }
  dimension: time_zone {
    type: string
    sql: ${TABLE}.time_zone ;;
  }
  dimension: transportation_zone {
    type: string
    sql: ${TABLE}.transportation_zone ;;
  }
  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
  dimension: valid_from_date {
    type: string
    sql: ${TABLE}.valid_from_date ;;
  }
  dimension: valid_to_date {
    type: string
    sql: ${TABLE}.valid_to_date ;;
  }
  dimension: location_valuation_area {
    type: string
    sql: ${TABLE}.valuation_area ;;
  }
  dimension: working_hour {
    type: string
    sql: ${TABLE}.working_hour ;;
  }

  measure: count {
    type: count
  }

  measure: total_inventory_quantity {
    type: sum
    sql: ${inventory_quantity} ;;
  }

}

# view: inventory_location {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
