---
- dashboard: warehouse_optimization
  title: Warehouse Optimization
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: FdGILR1WUevMwrmQ0bIJHM
  elements:
  - title: Historical Warehouse KPI'S
    name: Historical Warehouse KPI'S
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
    title_override_warehouse_view.capacity_sum: Capacity (Pcs)
    title_placement_warehouse_view.capacity_sum: below
    value_format_warehouse_view.capacity_sum: ''
    style_warehouse_view.utiliz_space: "#12B5CB"
    show_title_warehouse_view.utiliz_space: true
    title_override_warehouse_view.utiliz_space: Available Space (m3)
    title_placement_warehouse_view.utiliz_space: below
    value_format_warehouse_view.utiliz_space: ''
    show_comparison_warehouse_view.utiliz_space: false
    style_warehouse_view.space_utility: "#E52592"
    show_title_warehouse_view.space_utility: true
    title_override_warehouse_view.space_utility: Space Utilized (m3)
    title_placement_warehouse_view.space_utility: below
    value_format_warehouse_view.space_utility: ''
    show_comparison_warehouse_view.space_utility: false
    style_warehouse_view.onhand_qty: "#E8710A"
    show_title_warehouse_view.onhand_qty: true
    title_override_warehouse_view.onhand_qty: On Hand Quantity (Pcs)
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
    note_state: collapsed
    note_display: hover
    note_text: The vizualization provided is a historical snapshot of various warehouses,
      with each tile representing different KPIs, including capacity, available space,
      utilization, on-hand quantity, equipment usage, and labor efficiency.
    listen:
      Warehouse: warehouse_view.warehouse
      Transportation Mode: transfer_view.transportation_mode
      Product Uid: warehouse_view.product_uid
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Historical Transfer KPI'S
    name: Historical Transfer KPI'S
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
    title_override_transfer_view.avg_dest_warehouse: Number of Inbound Warehouse
    title_placement_transfer_view.avg_dest_warehouse: below
    value_format_transfer_view.avg_dest_warehouse: ''
    show_comparison_transfer_view.avg_dest_warehouse: false
    style_transfer_view.avg_origin_warehouse: "#EA4335"
    show_title_transfer_view.avg_origin_warehouse: true
    title_override_transfer_view.avg_origin_warehouse: Number of Outbound Warehouse
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
    note_state: collapsed
    note_display: hover
    note_text: The vizualization provided is a historical snapshot of various inventory
      transfer, with each tile representing different KPIs including Handling Cost,
      Quantity Transfered, Transportation Cost, Inbound Warehouse, Outbound Warehouse.
    listen:
      Warehouse: warehouse_view.warehouse
      Transportation Mode: transfer_view.transportation_mode
      Product Uid: warehouse_view.product_uid
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
      Warehouse: warehouse_view.warehouse
      Transportation Mode: transfer_view.transportation_mode
      Product Uid: warehouse_view.product_uid
    row: 8
    col: 15
    width: 9
    height: 6
  - title: Warehouse KPI'S (Copy)
    name: Warehouse KPI'S (Copy)
    model: google-scm-demo
    explore: warehouse_view
    type: looker_grid
    fields: [transfer_view.transfer_date, transfer_view.product_uid, transfer_view.transportation_mode,
      transfer_view.transportation_cost]
    sorts: [transfer_view.transfer_date]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      transfer_view.transportation_cost:
        is_active: true
    truncate_column_names: false
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    title_hidden: true
    listen:
      Warehouse: warehouse_view.warehouse
      Transportation Mode: transfer_view.transportation_mode
      Product Uid: warehouse_view.product_uid
    row: 8
    col: 0
    width: 15
    height: 6
  - title: Optimized Recommendations
    name: Optimized Recommendations
    model: google-scm-demo
    explore: warehouse_view
    type: looker_grid
    fields: [scenario_summary.product_uid, scenario_summary.forecast_demand_mean,
      scenario_summary.origin_warehouse, scenario_summary.new_replenishment_date,
      scenario_summary.destination_warehouse, warehouse_distance.distance, scenario_summary.suggested_transfer_units,
      scenario_summary.transportation_cost_sum]
    sorts: [scenario_summary.suggested_transfer_units desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      scenario_summary.forecast_demand_mean: Inbound Warehouse Demand (Pcs)
      scenario_summary.suggested_transfer_unit: Suggested Transfer Units
      scenario_summary.origin_warehouse: Outbound Warehouse
      scenario_summary.destination_warehouse: Inbound Warehouse
      scenario_summary.transportation_cost: Transportation Cost
      scenario_summary.new_replenishment_date: Replenishment Date
      scenario_summary.suggested_transfer_units: Suggested Transfer Unit
      scenario_summary.transportation_cost_sum: Transportation Cost
    series_cell_visualizations:
      scenario_summary.suggested_transfer_units:
        is_active: true
      scenario_summary.transportation_cost_sum:
        is_active: true
    series_text_format:
      scenario_summary.transportation_cost_sum: {}
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [scenario_summary.forecast_demand_mean]}]
    series_value_format:
      scenario_summary.transportation_cost_sum:
        name: usd_0
        decimals: '0'
        format_string: "$#,##0"
        label: U.S. Dollars (0)
        label_prefix: U.S. Dollars
    truncate_column_names: false
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: The provided table offers an optimized recommendation for transferring
      inventory between warehouses. The recommendation encompasses demand, suggested
      transfer unit, recommended outbound and inbound warehouses, interwarehouse distance,
      and projected transportation cost.
    listen:
      Warehouse: warehouse_view.warehouse
      Transportation Mode: transfer_view.transportation_mode
    row: 21
    col: 0
    width: 24
    height: 7
  - title: ''
    name: ''
    model: google-scm-demo
    explore: warehouse_view
    type: looker_column
    fields: [scenario_summary.suggested_transfer_units, scenario_summary.forecast_demand,
      scenario_summary.new_replenishment_date]
    filters:
      scenario_summary.suggested_transfer_units: NOT NULL
      scenario_summary.new_replenishment_date: "-NULL"
    sorts: [scenario_summary.new_replenishment_date]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: scenario_summary.suggested_transfer_units,
            id: scenario_summary.suggested_transfer_units, name: Suggested Transfer
              Units}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      scenario_summary.forecast_demand_mean: Inbound Warehouse Demand (Pcs)
      scenario_summary.suggested_transfer_unit: Suggested Transfer Units
      scenario_summary.origin_warehouse: Outbound Warehouse
      scenario_summary.destination_warehouse: Inbound Warehouse
      scenario_summary.transportation_cost: Transportation Cost
      scenario_summary.new_replenishment_date: Replenishment Date
    x_axis_label_rotation:
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Warehouse: warehouse_view.warehouse
      Transportation Mode: transfer_view.transportation_mode
    row: 14
    col: 0
    width: 24
    height: 7
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
    field: transfer_view.product_uid_filter
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
  - name: Transportation Mode
    title: Transportation Mode
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
    field: transfer_view.transportation_mode
