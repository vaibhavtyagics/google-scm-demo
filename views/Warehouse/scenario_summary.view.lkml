view: scenario_summary {
  sql_table_name: `smart-nomad-401004.W2W_Optimization.Scenario_Summary` ;;

  dimension: pk {
    primary_key: yes
    type: string
    sql: concat(${product_uid}, ${origin_warehouse}, ${destination_warehouse}) ;;
  }

  dimension: destination_warehouse {
    type: string
    sql: ${TABLE}.destination_warehouse ;;
  }
  dimension: forecast_demand_mean {
    type: number
    sql: ${TABLE}.forecast_demand_mean ;;
    value_format_name: decimal_0
  }
  dimension: new_replenishment_date {
    label: "Relenishment Date"
    type: string
    # timeframes: [raw, time, date, week, month, quarter, year]
    sql: (${TABLE}.new_replenishment_date) ;;
  }
  dimension: origin_warehouse {
    type: string
    sql: ${TABLE}.origin_warehouse ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.product_uid ;;
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
        Product UID :- {{product_uid._value}}
        Destination Warehouse :- {{destination_warehouse._value}}
        Inbound Warehouse Demand :- {{forecast_demand_mean._value}}
        Replenishment Date :-  {{new_replenishment_date._value}}
        Origin Warehouse :- {{origin_warehouse._value}}
        Suggested Transfer Unit :- {{suggested_transfer_unit._value}}
        Transportation Cost :-  $ {{transportation_cost._value}}
        Warehouse Distance :- {{warehouse_distance.distance._value}}"
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
  dimension: suggested_transfer_unit {
    type: number
    sql: ${TABLE}.suggested_transfer_unit ;;
    value_format_name: decimal_0
  }

  measure: suggested_transfer_units{
    type: sum
    sql: ${TABLE}.suggested_transfer_unit ;;
    value_format_name: decimal_0
  }

  dimension: transportation_cost {
    type: number
    sql: ${TABLE}.transportation_cost ;;
    value_format: "$ #.#"
  }
  measure: count {
    type: count
  }

#Measure for calculated fields.

  measure: transportation_cost_sum {
    type: sum
    sql: ${TABLE}.transportation_cost ;;
  }

  measure: forecast_demand {
    type: average
    sql: ${TABLE}.forecast_demand_mean ;;
  }

  measure: suggested_transfer {
    type: average
    sql: ${TABLE}.suggested_transfer_unit ;;
  }

}
