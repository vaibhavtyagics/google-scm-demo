---
- dashboard: warehouse_optimization
  title: Warehouse Optimization
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: FdGILR1WUevMwrmQ0bIJHM
  elements:
  - title: Warehouse KPI'S
    name: Warehouse KPI'S
    model: google-scm-demo
    explore: warehouse_view
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [warehouse_view.capacity_sum, warehouse_view.utiliz_space, warehouse_view.space_utility,
      warehouse_view.onhand_qty, warehouse_view.equipment_utility, warehouse_view.labor_effic]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '14'
    orientation: horizontal
    dividers: false
    style_warehouse_view.capacity_sum: "#1A73E8"
    show_title_warehouse_view.capacity_sum: true
    title_placement_warehouse_view.capacity_sum: below
    value_format_warehouse_view.capacity_sum: ''
    style_warehouse_view.utiliz_space: "#12B5CB"
    show_title_warehouse_view.utiliz_space: true
    title_override_warehouse_view.utiliz_space: Available Space
    title_placement_warehouse_view.utiliz_space: below
    value_format_warehouse_view.utiliz_space: ''
    show_comparison_warehouse_view.utiliz_space: false
    style_warehouse_view.space_utility: "#E52592"
    show_title_warehouse_view.space_utility: true
    title_override_warehouse_view.space_utility: Space Utilized
    title_placement_warehouse_view.space_utility: below
    value_format_warehouse_view.space_utility: ''
    show_comparison_warehouse_view.space_utility: false
    style_warehouse_view.onhand_qty: "#E8710A"
    show_title_warehouse_view.onhand_qty: true
    title_placement_warehouse_view.onhand_qty: below
    value_format_warehouse_view.onhand_qty: ''
    show_comparison_warehouse_view.onhand_qty: false
    style_warehouse_view.equipment_utility: "#7CB342"
    show_title_warehouse_view.equipment_utility: true
    title_override_warehouse_view.equipment_utility: ''
    title_placement_warehouse_view.equipment_utility: below
    value_format_warehouse_view.equipment_utility: '#"%"'
    show_comparison_warehouse_view.equipment_utility: false
    style_warehouse_view.labor_effic: "#A8A116"
    show_title_warehouse_view.labor_effic: true
    title_override_warehouse_view.labor_effic: Labor Efficiency
    title_placement_warehouse_view.labor_effic: below
    value_format_warehouse_view.labor_effic: '#"%"'
    show_comparison_warehouse_view.labor_effic: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    listen:
      Product Uid: warehouse_view.product_uid
      Warehouse: warehouse_view.warehouse
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Transfer KPI'S
    name: Transfer KPI'S
    model: google-scm-demo
    explore: warehouse_view
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [transfer_view.avg_handling_cost, transfer_view.avg_quantity_transferred,
      transfer_view.avg_transportation_cost, transfer_view.avg_dest_warehouse, transfer_view.avg_origin_warehouse]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '14'
    orientation: auto
    style_transfer_view.avg_handling_cost: "#12B5CB"
    show_title_transfer_view.avg_handling_cost: true
    title_placement_transfer_view.avg_handling_cost: below
    value_format_transfer_view.avg_handling_cost: $#.##"M"
    style_transfer_view.avg_quantity_transferred: "#E52592"
    show_title_transfer_view.avg_quantity_transferred: true
    title_placement_transfer_view.avg_quantity_transferred: below
    value_format_transfer_view.avg_quantity_transferred: '#.##"M"'
    show_comparison_transfer_view.avg_quantity_transferred: false
    style_transfer_view.avg_transportation_cost: "#F9AB00"
    show_title_transfer_view.avg_transportation_cost: true
    title_placement_transfer_view.avg_transportation_cost: below
    value_format_transfer_view.avg_transportation_cost: $#.##"M"
    show_comparison_transfer_view.avg_transportation_cost: false
    style_transfer_view.avg_dest_warehouse: "#7CB342"
    show_title_transfer_view.avg_dest_warehouse: true
    title_override_transfer_view.avg_dest_warehouse: Inbound Warehouse
    title_placement_transfer_view.avg_dest_warehouse: below
    value_format_transfer_view.avg_dest_warehouse: ''
    show_comparison_transfer_view.avg_dest_warehouse: false
    style_transfer_view.avg_origin_warehouse: "#EA4335"
    show_title_transfer_view.avg_origin_warehouse: true
    title_override_transfer_view.avg_origin_warehouse: Outbound Warehouse
    title_placement_transfer_view.avg_origin_warehouse: below
    value_format_transfer_view.avg_origin_warehouse: ''
    show_comparison_transfer_view.avg_origin_warehouse: false
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
    listen:
      Product Uid: warehouse_view.product_uid
      Warehouse: warehouse_view.warehouse
    row: 4
    col: 0
    width: 24
    height: 4
  - title: Untitled
    name: Untitled
    model: google-scm-demo
    explore: warehouse_view
    type: looker_google_map
    fields: [warehouse_distance.lat_lon_dest, warehouse_distance.lat_lon_origin, warehouse_view.product_uid]
    sorts: [warehouse_distance.lat_lon_dest desc]
    limit: 100
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: lines
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    title_hidden: true
    listen:
      Product Uid: warehouse_view.product_uid
      Warehouse: warehouse_view.warehouse
    row: 8
    col: 15
    width: 9
    height: 6
  - title: Warehouse KPI'S (Copy)
    name: Warehouse KPI'S (Copy)
    model: google-scm-demo
    explore: warehouse_view
    type: table
    fields: [transfer_view.transfer_date, transfer_view.product_uid, transfer_view.transportation_mode,
      transfer_view.transportation_cost]
    sorts: [transfer_view.transfer_date]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels: {}
    defaults_version: 1
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    title_hidden: true
    listen:
      Product Uid: warehouse_view.product_uid
      Warehouse: warehouse_view.warehouse
    row: 8
    col: 0
    width: 15
    height: 6
  - title: Optimized Solution
    name: Optimized Solution
    model: google-scm-demo
    explore: warehouse_view
    type: table
    fields: [scenario_summary.product_uid, scenario_summary.forecast_demand_mean,
      scenario_summary.suggested_transfer_unit, scenario_summary.origin_warehouse,
      scenario_summary.destination_warehouse, warehouse_distance.distance, scenario_summary.transportation_cost]
    sorts: [scenario_summary.product_uid desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      scenario_summary.forecast_demand_mean: Demand
      scenario_summary.suggested_transfer_unit: Suggested Transfer Unit
      scenario_summary.origin_warehouse: Outbound Warehouse
      scenario_summary.destination_warehouse: Inbound Warehouse
      scenario_summary.transportation_cost: Transportation Cost
    defaults_version: 1
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    listen:
      Product Uid: warehouse_view.product_uid
      Warehouse: warehouse_view.warehouse
    row: 14
    col: 0
    width: 24
    height: 5
  filters:
  - name: Product Uid
    title: Product Uid
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: google-scm-demo
    explore: warehouse_view
    listens_to_filters: []
    field: warehouse_view.product_uid
  - name: Warehouse
    title: Warehouse
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: google-scm-demo
    explore: warehouse_view
    listens_to_filters: []
    field: warehouse_view.warehouse
