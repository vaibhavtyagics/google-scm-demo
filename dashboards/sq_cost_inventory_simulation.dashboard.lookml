---
- dashboard: sq_cost_inventory_simulation
  title: SQ Cost Inventory Simulation
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: MHVCVmwQlkv0HDDwxotVy1
  elements:
  - title: Cost Overview
    name: Cost Overview
    model: google-scm-demo
    explore: s_q_cost_simulation
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [s_q_cost_simulation.inventory_cost, s_q_cost_simulation.holding_cost_,
      s_q_cost_simulation.lead_time_cost_, s_q_cost_simulation.backorder_cost_, s_q_cost_simulation.transcation_cost_]
    filters: {}
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    style_s_q_cost_simulation.inventory_cost: "#DC143C"
    title_placement_s_q_cost_simulation.inventory_cost: below
    style_s_q_cost_simulation.holding_cost_: "#B22222"
    title_placement_s_q_cost_simulation.holding_cost_: below
    style_s_q_cost_simulation.lead_time_cost_: "#8B0000"
    title_placement_s_q_cost_simulation.lead_time_cost_: below
    style_s_q_cost_simulation.backorder_cost_: "#FA8072"
    title_placement_s_q_cost_simulation.backorder_cost_: below
    style_s_q_cost_simulation.transcation_cost_: "#DC143C"
    title_placement_s_q_cost_simulation.transcation_cost_: below
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
    hidden_pivots: {}
    listen:
      Location Uid: s_q_cost_simulation.location_uid
      Alpha: s_q_cost_simulation.alpha
      Time: s_q_cost_simulation.time
      Product Uid: s_q_cost_simulation.product_uid
    row: 0
    col: 0
    width: 24
    height: 5
  - title: Safety Stock
    name: Safety Stock
    model: google-scm-demo
    explore: s_q_cost_simulation
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [s_q_cost_simulation.safety_stock_]
    filters: {}
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 8
    arm_weight: 25
    spinner_length: 149
    spinner_weight: 32
    target_length: 15
    target_gap: 15
    target_weight: 50
    value_formatting: '0'
    value_label_padding: 54
    range_formatting: ''
    spinner_type: needle
    gauge_fill_type: segment
    fill_colors: ["#EE7772", "#ffed6f", "#7FCDAE"]
    angle: 90
    cutout: 42
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    font_size_main: ''
    orientation: auto
    style_s_q_cost_simulation.cyclic_stock: "#483D8B"
    show_title_s_q_cost_simulation.cyclic_stock: true
    title_placement_s_q_cost_simulation.cyclic_stock: below
    value_format_s_q_cost_simulation.cyclic_stock: '0'
    style_s_q_cost_simulation.on_hand: "#00008B"
    show_title_s_q_cost_simulation.on_hand: true
    title_placement_s_q_cost_simulation.on_hand: below
    value_format_s_q_cost_simulation.on_hand: '0'
    show_comparison_s_q_cost_simulation.on_hand: false
    style_s_q_cost_simulation.safety_stock_: "#4682B4"
    show_title_s_q_cost_simulation.safety_stock_: true
    title_placement_s_q_cost_simulation.safety_stock_: below
    value_format_s_q_cost_simulation.safety_stock_: '0'
    show_comparison_s_q_cost_simulation.safety_stock_: false
    style_s_q_cost_simulation.inventory_cost: "#DC143C"
    title_placement_s_q_cost_simulation.inventory_cost: below
    style_s_q_cost_simulation.holding_cost_: "#B22222"
    title_placement_s_q_cost_simulation.holding_cost_: below
    style_s_q_cost_simulation.lead_time_cost_: "#8B0000"
    title_placement_s_q_cost_simulation.lead_time_cost_: below
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
    hidden_pivots: {}
    listen:
      Time: s_q_cost_simulation.time
      Alpha: s_q_cost_simulation.alpha
      Location Uid: s_q_cost_simulation.location_uid
      Product Uid: s_q_cost_simulation.product_uid
    row: 5
    col: 8
    width: 8
    height: 5
  - title: On Hand
    name: On Hand
    model: google-scm-demo
    explore: s_q_cost_simulation
    type: single_value
    fields: [inventory_simulation3.avg_on_hand]
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
    custom_color: "#7CB342"
    single_value_title: On Hand
    value_format: '0'
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 8
    arm_weight: 25
    spinner_length: 149
    spinner_weight: 32
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    value_formatting: '0'
    value_label_padding: 54
    label_font_size:
    range_formatting: ''
    spinner_type: needle
    gauge_fill_type: segment
    fill_colors: ["#EE7772", "#ffed6f", "#7FCDAE"]
    angle: 90
    cutout: 42
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    font_size_main: ''
    orientation: auto
    style_s_q_cost_simulation.cyclic_stock: "#483D8B"
    show_title_s_q_cost_simulation.cyclic_stock: true
    title_placement_s_q_cost_simulation.cyclic_stock: below
    value_format_s_q_cost_simulation.cyclic_stock: '0'
    style_s_q_cost_simulation.on_hand: "#00008B"
    show_title_s_q_cost_simulation.on_hand: true
    title_placement_s_q_cost_simulation.on_hand: below
    value_format_s_q_cost_simulation.on_hand: '0'
    show_comparison_s_q_cost_simulation.on_hand: false
    style_s_q_cost_simulation.safety_stock_: "#4682B4"
    show_title_s_q_cost_simulation.safety_stock_: true
    title_placement_s_q_cost_simulation.safety_stock_: below
    value_format_s_q_cost_simulation.safety_stock_: '0'
    show_comparison_s_q_cost_simulation.safety_stock_: false
    style_s_q_cost_simulation.inventory_cost: "#DC143C"
    title_placement_s_q_cost_simulation.inventory_cost: below
    style_s_q_cost_simulation.holding_cost_: "#B22222"
    title_placement_s_q_cost_simulation.holding_cost_: below
    style_s_q_cost_simulation.lead_time_cost_: "#8B0000"
    title_placement_s_q_cost_simulation.lead_time_cost_: below
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Time: s_q_cost_simulation.time
      Alpha: s_q_cost_simulation.alpha
      Location Uid: s_q_cost_simulation.location_uid
      Product Uid: s_q_cost_simulation.product_uid
    row: 5
    col: 16
    width: 8
    height: 5
  - title: Cyclic Stock
    name: Cyclic Stock
    model: google-scm-demo
    explore: s_q_cost_simulation
    type: single_value
    fields: [s_q_cost_simulation.cyclic_stock]
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
    custom_color: "#7CB342"
    single_value_title: Cyclic Stock (CS)
    value_format: '0'
    arm_length: 8
    arm_weight: 25
    spinner_length: 149
    spinner_weight: 32
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    value_formatting: '0'
    value_label_padding: 54
    label_font_size:
    range_formatting: ''
    spinner_type: needle
    gauge_fill_type: segment
    fill_colors: ["#EE7772", "#ffed6f", "#7FCDAE"]
    angle: 90
    cutout: 42
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: ''
    orientation: auto
    style_s_q_cost_simulation.cyclic_stock: "#483D8B"
    show_title_s_q_cost_simulation.cyclic_stock: true
    title_placement_s_q_cost_simulation.cyclic_stock: below
    value_format_s_q_cost_simulation.cyclic_stock: '0'
    style_s_q_cost_simulation.on_hand: "#00008B"
    show_title_s_q_cost_simulation.on_hand: true
    title_placement_s_q_cost_simulation.on_hand: below
    value_format_s_q_cost_simulation.on_hand: '0'
    show_comparison_s_q_cost_simulation.on_hand: false
    style_s_q_cost_simulation.safety_stock_: "#4682B4"
    show_title_s_q_cost_simulation.safety_stock_: true
    title_placement_s_q_cost_simulation.safety_stock_: below
    value_format_s_q_cost_simulation.safety_stock_: '0'
    show_comparison_s_q_cost_simulation.safety_stock_: false
    style_s_q_cost_simulation.inventory_cost: "#DC143C"
    title_placement_s_q_cost_simulation.inventory_cost: below
    style_s_q_cost_simulation.holding_cost_: "#B22222"
    title_placement_s_q_cost_simulation.holding_cost_: below
    style_s_q_cost_simulation.lead_time_cost_: "#8B0000"
    title_placement_s_q_cost_simulation.lead_time_cost_: below
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Time: s_q_cost_simulation.time
      Alpha: s_q_cost_simulation.alpha
      Location Uid: s_q_cost_simulation.location_uid
      Product Uid: s_q_cost_simulation.product_uid
    row: 5
    col: 0
    width: 8
    height: 5
  - title: Inventory Policy - Total Cost
    name: Inventory Policy - Total Cost
    model: google-scm-demo
    explore: s_q_cost_simulation
    type: looker_line
    fields: [s_q_cost_simulation.cumulative_demand, s_q_cost_simulation.inventory_cost]
    filters: {}
    sorts: [s_q_cost_simulation.cumulative_demand]
    limit: 500
    column_limit: 50
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Total Cost, orientation: left, series: [{axisId: s_q_cost_simulation.inventory_cost,
            id: s_q_cost_simulation.inventory_cost, name: Inventory Cost}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels: {}
    swap_axes: false
    hidden_fields: []
    hidden_points_if_no: []
    style_s_q_cost_simulation.inventory_cost: "#DC143C"
    title_placement_s_q_cost_simulation.inventory_cost: below
    style_s_q_cost_simulation.holding_cost_: "#B22222"
    title_placement_s_q_cost_simulation.holding_cost_: below
    style_s_q_cost_simulation.lead_time_cost_: "#8B0000"
    title_placement_s_q_cost_simulation.lead_time_cost_: below
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
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
    listen:
      Time: s_q_cost_simulation.time
      Alpha: s_q_cost_simulation.alpha
      Location Uid: s_q_cost_simulation.location_uid
      Product Uid: s_q_cost_simulation.product_uid
    row: 10
    col: 0
    width: 16
    height: 6
  - title: Stock and Demand Time Series
    name: Stock and Demand Time Series
    model: google-scm-demo
    explore: s_q_cost_simulation
    type: looker_line
    fields: [s_q_cost_simulation.time, s_q_cost_simulation.safety_stock_, s_q_cost_simulation.avg_cumulative_demand,
      s_q_cost_simulation.cyclic_stock, inventory_simulation3.avg_on_hand]
    filters: {}
    sorts: [s_q_cost_simulation.time]
    limit: 5000
    column_limit: 50
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: da8306b5-3b46-48aa-9ead-a3b32292f35c
      palette_id: 75905e81-dadc-472c-b9a2-a201f788d55d
      options:
        steps: 5
    y_axes: [{label: Safety Stock, orientation: left, series: [{axisId: s_q_cost_simulation.safety_stock_,
            id: s_q_cost_simulation.safety_stock_, name: Safety Stock}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: left, series: [{axisId: s_q_cost_simulation.cyclic_stock,
            id: s_q_cost_simulation.cyclic_stock, name: Cyclic Stock}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: '', orientation: left, series: [{axisId: inventory_simulation3.avg_on_hand,
            id: inventory_simulation3.avg_on_hand, name: On Hand}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, type: linear},
      {label: Demand, orientation: right, series: [{axisId: s_q_cost_simulation.avg_cumulative_demand,
            id: s_q_cost_simulation.avg_cumulative_demand, name: Demand}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      s_q_cost_simulation.safety_stock_: "#ff6347"
      inventory_simulation3.avg_on_hand: "#c0392b"
      s_q_cost_simulation.cyclic_stock: "#27ae60"
      s_q_cost_simulation.avg_cumulative_demand: "#4682b4"
    swap_axes: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Time: s_q_cost_simulation.time
      Alpha: s_q_cost_simulation.alpha
      Location Uid: s_q_cost_simulation.location_uid
      Product Uid: s_q_cost_simulation.product_uid
    row: 16
    col: 0
    width: 24
    height: 7
  - title: Location
    name: Location
    model: google-scm-demo
    explore: s_q_cost_simulation
    type: looker_google_map
    fields: [location.country, location.location]
    filters: {}
    sorts: [location.country]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: streets
    map_position: custom
    map_zoom: 2
    map_pannable: true
    map_zoomable: true
    map_marker_type: icon
    map_marker_icon_name: building
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    listen:
      Time: s_q_cost_simulation.time
      Alpha: s_q_cost_simulation.alpha
      Product Uid: s_q_cost_simulation.product_uid
      Location Uid: s_q_cost_simulation.location_uid
    row: 10
    col: 16
    width: 8
    height: 6
  filters:
  - name: Product Uid
    title: Product Uid
    type: field_filter
    default_value: P3394
    allow_multiple_values: true
    required: true
    ui_config:
      type: tag_list
      display: popover
    model: google-scm-demo
    explore: s_q_cost_simulation
    listens_to_filters: []
    field: s_q_cost_simulation.product_uid
  - name: Location Uid
    title: Location Uid
    type: field_filter
    default_value: US16570
    allow_multiple_values: true
    required: true
    ui_config:
      type: tag_list
      display: popover
    model: google-scm-demo
    explore: s_q_cost_simulation
    listens_to_filters: []
    field: s_q_cost_simulation.location_uid
  - name: Alpha
    title: Alpha
    type: field_filter
    default_value: "[90,90]"
    allow_multiple_values: true
    required: true
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: google-scm-demo
    explore: s_q_cost_simulation
    listens_to_filters: []
    field: s_q_cost_simulation.alpha
  - name: Time
    title: Time
    type: field_filter
    default_value: "[0,100]"
    allow_multiple_values: true
    required: true
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: google-scm-demo
    explore: s_q_cost_simulation
    listens_to_filters: []
    field: s_q_cost_simulation.time
