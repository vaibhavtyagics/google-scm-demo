view: transfer_view {
  sql_table_name: `smart-nomad-401004.W2W_Optimization.TransferView` ;;

  dimension: dest_warehouse {
    type: string
    sql: ${TABLE}.dest_warehouse ;;
  }
  dimension: estimated_travel_time {
    type: number
    sql: ${TABLE}.estimated_travel_time ;;
  }
  dimension: handling_cost {
    type: number
    sql: ${TABLE}.handling_cost ;;
  }
  dimension: lead_time {
    type: number
    sql: ${TABLE}.lead_time ;;
  }
  dimension: origin_warehouse {
    primary_key: yes
    type: string
    sql: ${TABLE}.origin_warehouse ;;
  }

  dimension: product_uid_filter {
    type: string
    sql: ${TABLE}.product_uid ;;
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
        Transfer Date :- {{transfer_date._value}}
        Transportation Mode :- {{transportation_mode._value}}
        Transportation Cost :- $ {{transportation_cost._value}}"
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

  dimension: quantity_transferred {
    type: number
    sql: ${TABLE}.quantity_transferred ;;
  }
  dimension: replenish_lead_time {
    type: number
    sql: ${TABLE}.replenish_lead_time ;;
  }
  dimension: replenishment_quantity {
    type: number
    sql: ${TABLE}.replenishment_quantity ;;
  }
  dimension: route_id {
    type: number
    sql: ${TABLE}.route_id ;;
  }
  dimension: shipment_id {
    type: number
    sql: ${TABLE}.shipment_id ;;
  }
  dimension: storage_cost {
    type: number
    sql: ${TABLE}.storage_cost ;;
  }
  dimension: transfer_date {
    type: string
    sql: ${TABLE}.transfer_date ;;
  }
  dimension: transportation_cost {
    type: number
    sql: ${TABLE}.transportation_cost ;;
    value_format: "$ #.##"
  }
  dimension: transportation_mode {
    type: string
    sql: ${TABLE}.transportation_mode ;;
  }
  measure: count {
    type: count
  }

#Measured fields.

  measure: avg_quantity_transferred {
    type: average
    sql: ${TABLE}.quantity_transferred ;;
  }

  measure: avg_handling_cost {
    type: average
    sql: ${TABLE}.handling_cost ;;
  }

  measure: avg_transportation_cost {
    type: average
    sql: ${TABLE}.transportation_cost ;;
  }

  measure: avg_origin_warehouse {
    type: count_distinct
    sql: ${TABLE}.origin_warehouse ;;
  }

  measure: avg_dest_warehouse {
    type: count_distinct
    sql: ${dest_warehouse} ;;
  }
}
