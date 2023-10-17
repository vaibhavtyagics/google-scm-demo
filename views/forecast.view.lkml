view: forecast {
  sql_table_name: `google_demo_reporting.Forecast` ;;

  dimension_group: forecast {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.forecast_date ;;
  }
  dimension: forecast_period {
    type: string
    sql: ${TABLE}.forecast_period ;;
  }
  dimension: forecast_period_type {
    type: string
    sql: ${TABLE}.forecast_period_type ;;
  }
  dimension: forecast_quantity {
    type: number
    sql: ${TABLE}.forecast_quantity ;;
  }
  dimension: forecast_uom {
    type: string
    sql: ${TABLE}.forecast_uom ;;
  }
  dimension: inventory_quantity {
    type: number
    sql: ${TABLE}.inventory_quantity ;;
  }
  dimension: location_uid {
    type: string
    sql: ${TABLE}.location_uid ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.product_uid ;;
  }
  measure: count {
    type: count
  }
}
