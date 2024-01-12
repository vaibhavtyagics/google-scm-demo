view: warehouse_distance {
  sql_table_name: `smart-nomad-401004.W2W_Optimization.WarehouseDistance` ;;

  dimension: dest_lat {
    type: number
    sql: ${TABLE}.dest_lat ;;
  }
  dimension: dest_location_uid {
    type: string
    sql: ${TABLE}.dest_location_uid ;;
  }
  dimension: dest_lon {
    type: number
    sql: ${TABLE}.dest_lon ;;
  }
  dimension: distance {
    type: number
    sql: ${TABLE}.distance ;;
  }
  dimension: origin_lat {
    type: number
    sql: ${TABLE}.origin_lat ;;
  }
  dimension: origin_location_uid {
    type: string
    sql: ${TABLE}.origin_location_uid ;;
  }
  dimension: origin_lon {
    type: number
    sql: ${TABLE}.origin_lon ;;
  }
  measure: count {
    type: count
  }

  dimension: lat_lon_origin {
    type: location
    sql_latitude: ${origin_lat} ;;
    sql_longitude: ${origin_lon} ;;
  }

  dimension: lat_lon_dest {
    type: location
    sql_latitude: ${dest_lat} ;;
    sql_longitude: ${dest_lon} ;;
  }

  # dimension: distance_loc {
  #   type: distance
  #   sql_start: ${lat_lon_origin} ;;
  #   sql_end: ${lat_lon_dest} ;;
  # }
}
