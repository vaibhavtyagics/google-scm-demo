---
- dashboard: rsq_inventory_policy_simulation
  title: "(R,s,Q) Inventory Policy Simulation"
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: YxAuBonFKokKKhCSvErxVk
  elements:
  - title: On Hand, Safety Sotck and Demand
    name: On Hand, Safety Sotck and Demand
    model: google-scm-demo
    explore: rs_q_policy
    type: looker_line
    fields: [rs_q_policy.time, inventory_simulation3.avg_on_hand, rs_q_policy.safety_stock_,
      rs_q_policy.avg_cumulative_demand]
    sorts: [inventory_simulation3.avg_on_hand desc 0]
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
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: inventory_simulation3.avg_on_hand,
            id: inventory_simulation3.avg_on_hand, name: On Hand}, {axisId: rs_q_policy.safety_stock_,
            id: rs_q_policy.safety_stock_, name: 'Safety Stock '}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: rs_q_policy.avg_cumulative_demand,
            id: rs_q_policy.avg_cumulative_demand, name: Demand}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Product Uid: rs_q_policy.product_uid
      Location Uid: rs_q_policy.location_uid
      Alpha: rs_q_policy.alpha
      Time: rs_q_policy.time
    row: 4
    col: 0
    width: 16
    height: 6
  - title: Location
    name: Location
    model: google-scm-demo
    explore: rs_q_policy
    type: looker_google_map
    fields: [location.country, location.location]
    filters: {}
    sorts: [location.country]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: icon
    map_marker_icon_name: building
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
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
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: inventory_simulation3.avg_on_hand,
            id: inventory_simulation3.avg_on_hand, name: On Hand}, {axisId: rs_q_policy.safety_stock_,
            id: rs_q_policy.safety_stock_, name: 'Safety Stock '}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: rs_q_policy.avg_cumulative_demand,
            id: rs_q_policy.avg_cumulative_demand, name: Demand}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    hidden_pivots: {}
    listen:
      Product Uid: rs_q_policy.product_uid
      Time: rs_q_policy.time
      Alpha: rs_q_policy.alpha
      Location Uid: rs_q_policy.location_uid
    row: 4
    col: 16
    width: 8
    height: 6
  - title: KPI's
    name: KPI's
    model: google-scm-demo
    explore: rs_q_policy
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory_simulation3.avg_on_hand, rs_q_policy.avg_cumulative_demand,
      rs_q_policy.safety_stock_]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '16'
    orientation: auto
    style_inventory_simulation3.avg_on_hand: "#E52592"
    show_title_inventory_simulation3.avg_on_hand: true
    title_placement_inventory_simulation3.avg_on_hand: below
    value_format_inventory_simulation3.avg_on_hand: ''
    style_rs_q_policy.avg_cumulative_demand: "#1A73E8"
    show_title_rs_q_policy.avg_cumulative_demand: true
    title_placement_rs_q_policy.avg_cumulative_demand: below
    value_format_rs_q_policy.avg_cumulative_demand: ''
    show_comparison_rs_q_policy.avg_cumulative_demand: false
    style_rs_q_policy.safety_stock_: "#EA4335"
    show_title_rs_q_policy.safety_stock_: true
    title_placement_rs_q_policy.safety_stock_: below
    value_format_rs_q_policy.safety_stock_: ''
    show_comparison_rs_q_policy.safety_stock_: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: icon
    map_marker_icon_name: building
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
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
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: inventory_simulation3.avg_on_hand,
            id: inventory_simulation3.avg_on_hand, name: On Hand}, {axisId: rs_q_policy.safety_stock_,
            id: rs_q_policy.safety_stock_, name: 'Safety Stock '}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: rs_q_policy.avg_cumulative_demand,
            id: rs_q_policy.avg_cumulative_demand, name: Demand}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    hidden_pivots: {}
    listen:
      Product Uid: rs_q_policy.product_uid
      Time: rs_q_policy.time
      Alpha: rs_q_policy.alpha
      Location Uid: rs_q_policy.location_uid
    row: 1
    col: 0
    width: 24
    height: 3
  - type: button
    name: button_1147
    rich_content_json: '{"text":"s,Q Inventory Policy Simulation","description":"s,Q
      Inventory Policy Simulation","newTab":false,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://cloudsufipartner.cloud.looker.com/dashboards/146?Time=%5B0%2C100%5D&Alpha=%5B90%2C90%5D&Product+Uid=P3394&Location+Uid=US16570"}'
    row: 0
    col: 0
    width: 6
    height: 1
  - type: button
    name: button_1149
    rich_content_json: '{"text":"Gdc Twos Simulation","description":"Gdc Twos Simulation","newTab":false,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://cloudsufipartner.cloud.looker.com/dashboards/143?SKU=SKU24"}'
    row: 0
    col: 18
    width: 6
    height: 1
  - type: button
    name: button_1154
    rich_content_json: '{"text":"R,s Inventory Policy Simulation","description":"R,s
      Inventory Policy Simulation","newTab":false,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://cloudsufipartner.cloud.looker.com/dashboards/142?Service%20Level%20%25=87&Product%20Uid=P3394&Location%20Uid=&Week="}'
    row: 0
    col: 6
    width: 6
    height: 1
  - type: button
    name: button_1155
    rich_content_json: '{"text":"R,s,Q Inventory Policy Simulation","description":"R,s,Q
      Inventory Policy Simulation","newTab":false,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://cloudsufipartner.cloud.looker.com/dashboards/150?Product+Uid=P3479&Time=%5B0%2C100%5D&Alpha=%5B0%2C100%5D&Location+Uid=US00163"}'
    row: 0
    col: 12
    width: 6
    height: 1
  filters:
  - name: Product Uid
    title: Product Uid
    type: field_filter
    default_value: P3479
    allow_multiple_values: true
    required: true
    ui_config:
      type: tag_list
      display: popover
    model: google-scm-demo
    explore: rs_q_policy
    listens_to_filters: []
    field: rs_q_policy.product_uid
  - name: Location Uid
    title: Location Uid
    type: field_filter
    default_value: US00163
    allow_multiple_values: true
    required: true
    ui_config:
      type: tag_list
      display: popover
    model: google-scm-demo
    explore: rs_q_policy
    listens_to_filters: []
    field: rs_q_policy.location_uid
  - name: Alpha
    title: Alpha
    type: field_filter
    default_value: "[0,100]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: google-scm-demo
    explore: rs_q_policy
    listens_to_filters: []
    field: rs_q_policy.alpha
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
    explore: rs_q_policy
    listens_to_filters: []
    field: rs_q_policy.time
