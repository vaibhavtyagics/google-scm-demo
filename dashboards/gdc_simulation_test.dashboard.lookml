---
- dashboard: gdc_twos_simulations_
  title: Gdc Two's Simulations
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 second
  preferred_slug: A225pPGauMGnK6YkFCjcxM
  elements:
  - title: 'Target week of supply: Costs'
    name: 'Target week of supply: Costs'
    model: google-scm-demo
    explore: check2
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [check2.wos_target_scenario, check2.total_cost, check2.inc_air_cost_,
      check2.inv_cost_, check2.lost_sales_cost_, check2.sl_, derived_gdc_check2.min_cost]
    filters:
      derived_gdc_check2.min_cost: not 0
    sorts: [check2.wos_target_scenario desc]
    limit: 12
    column_limit: 50
    dynamic_fields:
    - category: measure
      label: Filtered derived_gdc_check2.min_cost
      based_on: derived_gdc_check2.min_cost
      _kind_hint: measure
      measure: filtered_derived_gdc_check2min_cost
      type: count_distinct
      _type_hint: number
      filters:
        derived_gdc_check2.rank_dim: '2'
    hidden_fields: [derived_gdc_check2.min_cost]
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
    listen:
      SKU: derived_gdc_check2.sku
    row: 10
    col: 0
    width: 24
    height: 3
  - title: Untitled
    name: Untitled
    model: google-scm-demo
    explore: check2
    type: looker_column
    fields: [check2.inc_air_cost_, check2.inv_cost_, check2.lost_sales_cost_, check2.sl_,
      check2.total_cost_, derived_gdc_check2.min_cost, check2.wos_target_scenario]
    filters: {}
    sorts: [check2.wos_target_scenario]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Min cost
      value_format:
      value_format_name:
      based_on: derived_gdc_check2.min_cost
      _kind_hint: measure
      measure: min_cost
      type: sum
      _type_hint: number
      filters:
        derived_gdc_check2.rank_dim: '1'
    - category: measure
      label: Filtered derived_gdc_check2.min_cost
      based_on: derived_gdc_check2.min_cost
      _kind_hint: measure
      measure: filtered_derived_gdc_check2min_cost
      type: count_distinct
      _type_hint: number
      filters:
        check2.sl: ">0.95"
        derived_gdc_check2.rank_dim: '1'
    - category: measure
      label: Filtered derived_gdc_check2.min_cost
      based_on: derived_gdc_check2.min_cost
      _kind_hint: measure
      measure: filtered_derived_gdc_check2min_cost_1
      type: count_distinct
      _type_hint: number
      filters:
        derived_gdc_check2.rank_dim: '1'
    - category: measure
      label: Filtered derived_gdc_check2.min_cost
      based_on: derived_gdc_check2.min_cost
      _kind_hint: measure
      measure: filtered_derived_gdc_check2min_cost_2
      type: count_distinct
      _type_hint: number
      filters:
        derived_gdc_check2.rank_dim: '1'
    - category: measure
      label: Filtered derived_gdc_check2.min_cost
      based_on: derived_gdc_check2.min_cost
      _kind_hint: measure
      measure: filtered_derived_gdc_check2min_cost_3
      type: count_distinct
      _type_hint: number
      filters:
        derived_gdc_check2.rank_dim: '1'
    - args:
      - derived_gdc_check2.min_cost
      calculation_type: percent_difference_from_previous
      category: table_calculation
      based_on: derived_gdc_check2.min_cost
      label: Percent change from previous - Derived Gdc Check2 Min Cost
      source_field: derived_gdc_check2.min_cost
      table_calculation: percent_change_from_previous_derived_gdc_check2_min_cost
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - category: measure
      label: Filtered check2.total_cost_
      based_on: check2.total_cost_
      _kind_hint: measure
      measure: filtered_check2total_cost_
      type: count_distinct
      _type_hint: number
      filters:
        check2.sl: ">0.95"
    - args:
      - filtered_check2total_cost_
      calculation_type: percent_difference_from_previous
      category: table_calculation
      based_on: filtered_check2total_cost_
      label: Percent change from previous -  Filtered check2.total_cost_
      source_field: filtered_check2total_cost_
      table_calculation: percent_change_from_previous_filtered_check2total_cost_
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
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
    y_axes: [{label: Total Cost $, orientation: left, series: [{axisId: check2.inc_air_cost_,
            id: check2.inc_air_cost_, name: 'Inc Air Cost '}, {axisId: check2.inv_cost_,
            id: check2.inv_cost_, name: 'Inv Cost '}, {axisId: check2.lost_sales_cost_,
            id: check2.lost_sales_cost_, name: 'Lost Sales Cost '}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: left, series: [{axisId: derived_gdc_check2.min_cost,
            id: derived_gdc_check2.min_cost, name: Min Cost}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: left, series: [{axisId: check2.total_cost_,
            id: check2.total_cost_, name: 'Total Cost '}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: check2.sl_, id: check2.sl_,
            name: Service Level %}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      check2.inc_air_cost_: line
      check2.inv_cost_: line
      check2.lost_sales_cost_: line
      check2.sl_: line
      check2.total_cost_: line
    series_colors:
      min_ncost: "#F9AB00"
    series_labels:
      min_ncost: Min Cost
      min_cost: Target Week of Supply
    column_spacing_ratio: 1
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields:
    hidden_pivots: {}
    title_hidden: true
    listen:
      SKU: derived_gdc_check2.sku
    row: 0
    col: 0
    width: 24
    height: 10
  filters:
  - name: SKU
    title: SKU
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google-scm-demo
    explore: check2
    listens_to_filters: []
    field: derived_gdc_check2.sku
