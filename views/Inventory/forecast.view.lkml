view: forecast {
  sql_table_name: `@{PROJECT}.@{INVENTORY_DATASET}.forecast` ;;

  dimension: pk {
    type: string
    primary_key: yes
    sql: CONCAT(CAST(${forecast_date} AS string),${product_uid},${location_uid}) ;;
  }

  dimension_group: forecast {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.forecast_date ;;
  }

  dimension: forecast_dates {
    type: string
    sql: ${forecast_date} ;;
    link: {
      label: "Action in ERP"
      url: "https://aidoahy7w.accounts.ondemand.com/"
      icon_url: "https://i.ibb.co/58xPDWZ/icons8-sap-48.png"
    }

    action: {
      label: "Action on Email"
      url: "https://hooks.zapier.com/hooks/catch/11814505/bryrebp/"

      form_param: {
        name: "Heading"
        type: string
        default: "Let's connect urgently"
      }

      form_param: {
        name: "Description"
        type: textarea
        default: "Details#
        Incoming Arrivals :- {{order.total_requested_quantity._value}}
        Projected Sales :- {{total_forecast_quantity._value}}
        Projected Inventory :- {{projected_inventory._value}}
        Valuation :- {{valuation_table._value}}"
      }

      form_param: {
        name: "Start Date and Time (M/DD/YYYY, HH:MM Timezone)"
        type: string
        default: ""
      }

      form_param: {
        name: "End Date and Time (M/DD/YYYY, HH:MM Timezone)"
        type: string
        default: ""
      }

      form_param: {
        name: "Recipient"
        type: textarea
        default: ""
      }
    }
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

  #Derived Views

  measure: projected_inventory{
    label: "Projected Inventory"
    type: sum
    sql: coalesce(${order.requested_quantity},0) - coalesce(${forecast_quantity},0);;
    # filters: [order.order_category: "Purchase Order", order.status: "Open"]

  }

  measure: total_forecast_quantity{
    label: "Projected Sales"
    type: sum
    sql: ${TABLE}.forecast_quantity ;;
    # filters: [order.order_category: "Purchase Order", order.status: "Open"]


  }

  measure: total_requested_quantity_po{
    label: "Incoming Arrivals"
    type: number
    sql: ${total_forecast_quantity};;
    # filters: [order_category: "Purchase Order", status: "Open"]
  }
  measure: valuation_table{
    label: "Valuation"
    type: sum
    sql: (coalesce(${order.requested_quantity},0) - coalesce(${forecast_quantity},0)) * (coalesce(${order.sales_price},0)) ;;
    # filters: [order.order_category: "Purchase Order", order.status: "Open"]
  }
}
