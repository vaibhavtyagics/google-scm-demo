---
- dashboard: gdc_twos_simulations
  title: Gdc Twos Simulations
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: WZDLXrfBdDpg6PuT9EZ679
  elements:
  - title: Gdc Twos Simulations
    name: Gdc Twos Simulations
    model: google-scm-demo
    explore: gdc_twos_simulations
    type: looker_column
    fields: [gdc_twos_simulations.wos_target_scenario, gdc_twos_simulations.total_cost_,
      gdc_twos_simulations.inv_cost_, gdc_twos_simulations.lost_sales_cost_, gdc_twos_simulations.inc_air_cost_,
      gdc_twos_simulations.sl_, filtered_gdc_twos_simulationsmin_total_cost]
    filters: {}
    sorts: [gdc_twos_simulations.wos_target_scenario]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: min(${gdc_twos_simulations.total_cost_})
      label: Min Cost
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: min_cost
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: min(${gdc_twos_simulations.total_cost_})
      label: min cost per sku
      value_format:
      value_format_name: ''
      _kind_hint: measure
      table_calculation: min_cost_per_sku
      _type_hint: number
      is_disabled: true
    - category: measure
      expression: ''
      label: Filtered gdc_twos_simulations.min_total_cost
      based_on: gdc_twos_simulations.min_total_cost
      _kind_hint: measure
      measure: filtered_gdc_twos_simulationsmin_total_cost
      type: count_distinct
      _type_hint: number
      filters:
        gdc_twos_simulations.wos_target_scenario: '4'
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
    y_axes: [{label: Total Cost ($), orientation: left, series: [{axisId: filtered_gdc_twos_simulationsmin_total_cost,
            id: filtered_gdc_twos_simulationsmin_total_cost, name: Min Cost}], showLabels: false,
        showValues: false, maxValue: !!null '', minValue: !!null '', unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 16, type: linear}, {label: '', orientation: left,
        series: [{axisId: gdc_twos_simulations.lost_sales_cost_, id: gdc_twos_simulations.lost_sales_cost_,
            name: 'Lost Sales Cost '}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}, {label: !!null '', orientation: left,
        series: [{axisId: gdc_twos_simulations.inv_cost_, id: gdc_twos_simulations.inv_cost_,
            name: 'Inv Cost '}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: '', orientation: left,
        series: [{axisId: gdc_twos_simulations.inc_air_cost_, id: gdc_twos_simulations.inc_air_cost_,
            name: 'Inc Air Cost '}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}, {label: !!null '', orientation: left,
        series: [{axisId: gdc_twos_simulations.total_cost_, id: gdc_twos_simulations.total_cost_,
            name: 'Total Cost '}], showLabels: true, showValues: true, maxValue: !!null '',
        minValue: !!null '', unpinAxis: false, tickDensity: custom, tickDensityCustom: 16,
        type: linear}, {label: Service Level, orientation: right, series: [{axisId: gdc_twos_simulations.sl_,
            id: gdc_twos_simulations.sl_, name: Service Level %}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_types:
      gdc_twos_simulations.sl_: line
      gdc_twos_simulations.inc_air_cost_: line
      gdc_twos_simulations.lost_sales_cost_: line
      gdc_twos_simulations.inv_cost_: line
      gdc_twos_simulations.total_cost_: line
    series_colors:
      filtered_gdc_twos_simulationsmin_total_cost: "#3b3b3b"
    series_labels:
      filtered_gdc_twos_simulationsmin_total_cost: Min Cost
    reference_lines: []
    trend_lines: []
    column_spacing_ratio: 1
    swap_axes: false
    show_null_points: false
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    hidden_points_if_no:
    title_hidden: true
    listen:
      SKU: gdc_twos_simulations.sku
    row: 0
    col: 0
    width: 17
    height: 9
  - title: 'Target week of supply: Costs'
    name: 'Target week of supply: Costs'
    model: google-scm-demo
    explore: gdc_twos_simulations
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [gdc_twos_simulations.wos_target_scenario, gdc_twos_simulations.total_cost,
      gdc_twos_simulations.inc_air_cost_, gdc_twos_simulations.inv_cost_, gdc_twos_simulations.lost_sales_cost_,
      gdc_twos_simulations.sl_]
    filters: {}
    sorts: [gdc_twos_simulations.total_cost]
    limit: 1
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '14'
    orientation: auto
    style_gdc_twos_simulations.wos_target_scenario: "#079c98"
    show_title_gdc_twos_simulations.wos_target_scenario: true
    title_override_gdc_twos_simulations.wos_target_scenario: 'TWOS: Min Cost with
      >= 95% SL'
    title_placement_gdc_twos_simulations.wos_target_scenario: below
    value_format_gdc_twos_simulations.wos_target_scenario: ''
    style_gdc_twos_simulations.total_cost: "#215ac8"
    show_title_gdc_twos_simulations.total_cost: true
    title_override_gdc_twos_simulations.total_cost: Min Total Cost
    title_placement_gdc_twos_simulations.total_cost: below
    value_format_gdc_twos_simulations.total_cost: "$#,##0"
    show_comparison_gdc_twos_simulations.total_cost: false
    style_gdc_twos_simulations.inc_air_cost_: "#2ca0fa"
    show_title_gdc_twos_simulations.inc_air_cost_: true
    title_override_gdc_twos_simulations.inc_air_cost_: Incremental Air Cost
    title_placement_gdc_twos_simulations.inc_air_cost_: below
    value_format_gdc_twos_simulations.inc_air_cost_: "$#,##0"
    show_comparison_gdc_twos_simulations.inc_air_cost_: false
    style_gdc_twos_simulations.inv_cost_: "#fa7850"
    show_title_gdc_twos_simulations.inv_cost_: true
    title_override_gdc_twos_simulations.inv_cost_: Inventory Holding Cost
    title_placement_gdc_twos_simulations.inv_cost_: below
    value_format_gdc_twos_simulations.inv_cost_: "$#,##0"
    show_comparison_gdc_twos_simulations.inv_cost_: false
    style_gdc_twos_simulations.lost_sales_cost_: "#8214a0"
    show_title_gdc_twos_simulations.lost_sales_cost_: true
    title_placement_gdc_twos_simulations.lost_sales_cost_: below
    value_format_gdc_twos_simulations.lost_sales_cost_: "$#,##0"
    show_comparison_gdc_twos_simulations.lost_sales_cost_: false
    style_gdc_twos_simulations.sl_: "#0bb45b"
    show_title_gdc_twos_simulations.sl_: true
    title_placement_gdc_twos_simulations.sl_: below
    value_format_gdc_twos_simulations.sl_: ''
    show_comparison_gdc_twos_simulations.sl_: false
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
      SKU: gdc_twos_simulations.sku
    row: 0
    col: 17
    width: 7
    height: 9
  - title: Untitled
    name: Untitled
    model: google-scm-demo
    explore: gdc_twos_simulations
    type: single_value
    fields: [gdc_twos_simulations.min_total_cost]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      SKU: gdc_twos_simulations.sku
    row: 9
    col: 0
    width: 8
    height: 6
  filters:
  - name: SKU
    title: SKU
    type: field_filter
    default_value: SKU24
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
    model: google-scm-demo
    explore: gdc_twos_simulations
    listens_to_filters: []
    field: gdc_twos_simulations.sku
