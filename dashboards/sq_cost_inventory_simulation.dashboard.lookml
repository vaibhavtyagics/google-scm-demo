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
      s_q_cost_simulation.lead_time_cost_]
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
      Product Uid: s_q_cost_simulation.product_uid
      Location Uid: s_q_cost_simulation.location_uid
      Alpha: s_q_cost_simulation.alpha
      Time: s_q_cost_simulation.time
    row: 0
    col: 2
    width: 21
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
      Product Uid: s_q_cost_simulation.product_uid
      Location Uid: s_q_cost_simulation.location_uid
    row: 5
    col: 9
    width: 7
    height: 5
  - title: On Hand
    name: On Hand
    model: google-scm-demo
    explore: s_q_cost_simulation
    type: single_value
    fields: [s_q_cost_simulation.on_hand]
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
      Product Uid: s_q_cost_simulation.product_uid
      Location Uid: s_q_cost_simulation.location_uid
    row: 5
    col: 16
    width: 7
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
      Product Uid: s_q_cost_simulation.product_uid
      Location Uid: s_q_cost_simulation.location_uid
    row: 5
    col: 2
    width: 7
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
      Product Uid: s_q_cost_simulation.product_uid
      Location Uid: s_q_cost_simulation.location_uid
    row: 10
    col: 2
    width: 22
    height: 6
  filters:
  - name: Product Uid
    title: Product Uid
    type: field_filter
    default_value: ''
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
    default_value: ''
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
    field: s_q_cost_simulation.time
