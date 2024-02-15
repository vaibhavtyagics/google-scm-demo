view: date {
  sql_table_name: `smart-nomad-401004.google_demo_reporting.Date` ;;

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }
}
