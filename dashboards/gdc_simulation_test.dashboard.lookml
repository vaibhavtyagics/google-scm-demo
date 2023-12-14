---
- dashboard: gdc_twos_simulations_imported
  title: Gdc Twos Simulations (imported)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: A225pPGauMGnK6YkFCjcxM
  elements:
  - title: Gdc Twos Simulations
    name: Gdc Twos Simulations
    model: google-scm-demo
    explore: check2
    type: looker_column
    fields: [check2.wos_target_scenario, check2.total_cost_, check2.inv_cost_, check2.lost_sales_cost_,
      check2.inc_air_cost_, check2.sl_, derived_gdc_check2.min_cost]
    sorts: [check2.wos_target_scenario]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: min(${check2.total_cost_})
      label: Min Cost
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: min_cost
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: min(${check2.total_cost_})
      label: min cost per sku
      value_format:
      value_format_name: ''
      _kind_hint: measure
      table_calculation: min_cost_per_sku
      _type_hint: number
      is_disabled: true
    - category: measure
      expression: ''
      label: Filtered check2.min_total_cost
      based_on: check2.min_total_cost
      _kind_hint: measure
      measure: filtered_check2min_total_cost
      type: count_distinct
      _type_hint: number
      filters:
        check2.wos_target_scenario: "$Wos Target Scenario}"
    - args:
      - check2.min_total_cost
      calculation_type: rank_of_column
      category: table_calculation
      based_on: check2.min_total_cost
      label: Rank of Gdc Twos Simulations Min Total Cost
      source_field: check2.min_total_cost
      table_calculation: rank_of_check2_min_total_cost
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - category: measure
      expression: "${check2.total_cost} "
      label: Filtered check2.min_total_cost
      based_on: check2.min_total_cost
      filter_expression: "${check2.total_cost} "
      _kind_hint: measure
      measure: filtered_check2min_total_cost_1
      type: count_distinct
      _type_hint: number
      filters:
        check2.total_cost: min(${check2.total_cost} )
    - category: measure
      label: min_total_cost
      based_on: check2.min_total_cost
      _kind_hint: measure
      measure: min_total_cost
      type: count_distinct
      _type_hint: number
      filters:
        derived_gdc.rank_dim: '1'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: check2.lost_sales_cost_,
            id: check2.lost_sales_cost_, name: 'Lost Sales Cost '}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, type: linear},
      {label: !!null '', orientation: left, series: [{axisId: check2.inv_cost_, id: check2.inv_cost_,
            name: 'Inv Cost '}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: '', orientation: left,
        series: [{axisId: check2.inc_air_cost_, id: check2.inc_air_cost_, name: 'Inc
              Air Cost '}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}, {label: !!null '', orientation: left,
        series: [{axisId: filtered_derived_gdcmin_cost, id: filtered_derived_gdcmin_cost,
            name: Filtered derived_gdc.min_cost}], showLabels: false, showValues: false,
        maxValue: !!null '', minValue: !!null '', unpinAxis: false, tickDensity: custom,
        tickDensityCustom: 16, type: linear}, {label: !!null '', orientation: left,
        series: [{axisId: check2.total_cost_, id: check2.total_cost_, name: 'Total
              Cost '}], showLabels: true, showValues: true, maxValue: !!null '', minValue: !!null '',
        unpinAxis: false, tickDensity: custom, tickDensityCustom: 16, type: linear},
      {label: Service Level, orientation: right, series: [{axisId: check2.sl_, id: check2.sl_,
            name: Service Level %}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_types:
      check2.sl_: line
      check2.inc_air_cost_: line
      check2.lost_sales_cost_: line
      check2.inv_cost_: line
      check2.total_cost_: line
    series_colors:
      filtered_check2min_total_cost: "#3b3b3b"
    series_labels:
      filtered_check2min_total_cost: Min Cost
      filtered_derived_gdcmin_cost: Min Cost
    reference_lines: []
    trend_lines: []
    column_spacing_ratio: 1
    swap_axes: false
    show_null_points: false
    interpolation: linear
    defaults_version: 1
    hidden_fields: [derived_gdc.min_cost]
    hidden_pivots: {}
    hidden_points_if_no:
    title_hidden: true
    listen: {}
    row: 0
    col: 0
    width: 17
    height: 9
  - title: 'Target week of supply: Costs'
    name: 'Target week of supply: Costs'
    model: google-scm-demo
    explore: check2
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [check2.wos_target_scenario, check2.total_cost, check2.inc_air_cost_,
      check2.inv_cost_, check2.lost_sales_cost_, check2.sl_]
    sorts: [check2.total_cost]
    limit: 1
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '14'
    orientation: auto
    style_check2.wos_target_scenario: "#079c98"
    show_title_check2.wos_target_scenario: true
    title_override_check2.wos_target_scenario: 'TWOS: Min Cost with >= 95% SL'
    title_placement_check2.wos_target_scenario: below
    value_format_check2.wos_target_scenario: ''
    style_check2.total_cost: "#215ac8"
    show_title_check2.total_cost: true
    title_override_check2.total_cost: Min Total Cost
    title_placement_check2.total_cost: below
    value_format_check2.total_cost: "$#,##0"
    show_comparison_check2.total_cost: false
    style_check2.inc_air_cost_: "#2ca0fa"
    show_title_check2.inc_air_cost_: true
    title_override_check2.inc_air_cost_: Incremental Air Cost
    title_placement_check2.inc_air_cost_: below
    value_format_check2.inc_air_cost_: "$#,##0"
    show_comparison_check2.inc_air_cost_: false
    style_check2.inv_cost_: "#fa7850"
    show_title_check2.inv_cost_: true
    title_override_check2.inv_cost_: Inventory Holding Cost
    title_placement_check2.inv_cost_: below
    value_format_check2.inv_cost_: "$#,##0"
    show_comparison_check2.inv_cost_: false
    style_check2.lost_sales_cost_: "#8214a0"
    show_title_check2.lost_sales_cost_: true
    title_placement_check2.lost_sales_cost_: below
    value_format_check2.lost_sales_cost_: "$#,##0"
    show_comparison_check2.lost_sales_cost_: false
    style_check2.sl_: "#0bb45b"
    show_title_check2.sl_: true
    title_placement_check2.sl_: below
    value_format_check2.sl_: ''
    show_comparison_check2.sl_: false
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 0
    col: 17
    width: 7
    height: 9
