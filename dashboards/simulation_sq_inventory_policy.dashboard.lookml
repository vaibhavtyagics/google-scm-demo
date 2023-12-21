---
- dashboard: simulation_sq_inventory_policy
  title: 'Simulation: (s,Q) Inventory Policy'
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: BBY2JWpKKgvh6KyXrtJKqN
  elements:
  - title: KPI's Overview
    name: KPI's Overview
    model: google-scm-demo
    explore: s_q_inv_policy
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [s_q_inv_policy.Is, s_q_inv_policy.Ss, s_q_inv_policy.S, s_q_inv_policy.total_cost_]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '20'
    orientation: auto
    style_s_q_inv_policy.Ss: "#1A73E8"
    show_title_s_q_inv_policy.Ss: true
    title_placement_s_q_inv_policy.Ss: below
    value_format_s_q_inv_policy.Ss: ''
    style_s_q_inv_policy.Is: "#E52592"
    show_title_s_q_inv_policy.Is: true
    title_placement_s_q_inv_policy.Is: below
    value_format_s_q_inv_policy.Is: ''
    show_comparison_s_q_inv_policy.Is: false
    style_s_q_inv_policy.S: "#E8710A"
    show_title_s_q_inv_policy.S: true
    title_placement_s_q_inv_policy.S: below
    value_format_s_q_inv_policy.S: ''
    show_comparison_s_q_inv_policy.S: false
    style_s_q_inv_policy.total_cost_: "#12B5CB"
    title_placement_s_q_inv_policy.total_cost_: below
    style_s_q_inv_policy.Cs: "#12B5CB"
    show_title_s_q_inv_policy.Cs: true
    title_placement_s_q_inv_policy.Cs: below
    value_format_s_q_inv_policy.Cs: ''
    show_comparison_s_q_inv_policy.Cs: false
    defaults_version: 0
    hidden_pivots: {}
    listen:
      Location Uid: s_q_inv_policy.location_uid
      Alpha: s_q_inv_policy.filtered_alpha
      Time: s_q_inv_policy.time
      Product Uid: s_q_inv_policy.product_uid
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Inventory Dynamics Over Time
    name: Inventory Dynamics Over Time
    model: google-scm-demo
    explore: s_q_inv_policy
    type: looker_line
    fields: [s_q_inv_policy.time, simulated_demand.demand_, s_q_inv_policy.on_hand_,
      s_q_inv_policy.Ss]
    sorts: [s_q_inv_policy.time]
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
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: ac6ae05d-f9a3-4ac3-b7b8-1be843c74609
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: s_q_inv_policy.on_hand_,
            id: s_q_inv_policy.on_hand_, name: 'On Hand '}], showLabels: true, showValues: true,
        minValue: !!null '', unpinAxis: false, tickDensity: default, type: linear},
      {label: '', orientation: left, series: [{axisId: s_q_inv_policy.Ss, id: s_q_inv_policy.Ss,
            name: Reorder Point}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: simulated_demand.demand_, id: simulated_demand.demand_,
            name: 'Demand '}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    series_labels: {}
    hidden_fields: []
    hidden_points_if_no: []
    style_s_q_inv_policy.Ss: "#1A73E8"
    title_placement_s_q_inv_policy.Ss: below
    style_s_q_inv_policy.Cs: "#12B5CB"
    title_placement_s_q_inv_policy.Cs: below
    style_s_q_inv_policy.Is: "#E52592"
    title_placement_s_q_inv_policy.Is: below
    style_s_q_inv_policy.S: "#E8710A"
    title_placement_s_q_inv_policy.S: below
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
      Location Uid: s_q_inv_policy.location_uid
      Alpha: s_q_inv_policy.filtered_alpha
      Time: s_q_inv_policy.time
      Product Uid: s_q_inv_policy.product_uid
    row: 4
    col: 0
    width: 18
    height: 8
  - title: Location
    name: Location
    model: google-scm-demo
    explore: s_q_inv_policy
    type: looker_google_map
    fields: [location.country, location.location]
    sorts: [location.location]
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
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: icon
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    listen:
      Location Uid: s_q_inv_policy.location_uid
      Product Uid: s_q_inv_policy.product_uid
      Alpha: s_q_inv_policy.filtered_alpha
      Time: s_q_inv_policy.time
    row: 4
    col: 18
    width: 6
    height: 8
  filters:
  - name: Product Uid
    title: Product Uid
    type: field_filter
    default_value: P3415
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
    model: google-scm-demo
    explore: s_q_inv_policy
    listens_to_filters: []
    field: s_q_inv_policy.product_uid
  - name: Location Uid
    title: Location Uid
    type: field_filter
    default_value: US9699
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
    model: google-scm-demo
    explore: s_q_inv_policy
    listens_to_filters: []
    field: s_q_inv_policy.location_uid
  - name: Alpha
    title: Alpha
    type: field_filter
    default_value: "[75,99]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: google-scm-demo
    explore: s_q_inv_policy
    listens_to_filters: []
    field: s_q_inv_policy.filtered_alpha
  - name: Time
    title: Time
    type: field_filter
    default_value: "[0,100]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: google-scm-demo
    explore: s_q_inv_policy
    listens_to_filters: []
    field: s_q_inv_policy.time
