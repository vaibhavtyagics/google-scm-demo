---
- dashboard: rsq_inventory_policy_simulation
  title: "(R,s,Q) Inventory Policy Simulation"
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: fdzvjumc5SWZIeqDPMkNDi
  elements:
  - title: "(R,s,Q) Inventory Policy Simulation"
    name: "(R,s,Q) Inventory Policy Simulation"
    model: google-scm-demo
    explore: rs_q_policy_prod
    type: looker_line
    fields: [rs_q_policy_prod.time, rs_q_policy_prod.stock_on_hand_, rs_q_policy_prod.demand_,
      rs_q_policy_prod.safety_stock_, rs_q_policy_prod.reorder_point_]
    filters: {}
    sorts: [rs_q_policy_prod.stock_on_hand_ desc 0]
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
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen:
      Product Uid: rs_q_policy_prod.product_uid
      Alpha: rs_q_policy_prod.alpha
      Location Uid: rs_q_policy_prod.location_uid
      Time: rs_q_policy_prod.time
    row: 0
    col: 0
    width: 21
    height: 9
  - title: Untitled
    name: Untitled
    model: google-scm-demo
    explore: rs_q_policy_prod
    type: single_value
    fields: [rs_q_policy_prod.reorder_quantity_]
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
    custom_color: "#1A73E8"
    single_value_title: Reorder Quantity
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Product Uid: rs_q_policy_prod.product_uid
      Alpha: rs_q_policy_prod.alpha
      Time: rs_q_policy_prod.time
      Location Uid: rs_q_policy_prod.location_uid
    row: 0
    col: 21
    width: 3
    height: 3
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: google-scm-demo
    explore: rs_q_policy_prod
    type: single_value
    fields: [rs_q_policy_prod.total_costs_]
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
    single_value_title: Total Cost
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Product Uid: rs_q_policy_prod.product_uid
      Alpha: rs_q_policy_prod.alpha
      Time: rs_q_policy_prod.time
      Location Uid: rs_q_policy_prod.location_uid
    row: 6
    col: 21
    width: 3
    height: 3
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: google-scm-demo
    explore: rs_q_policy_prod
    type: single_value
    fields: [rs_q_policy_prod.safety_stock_]
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
    custom_color: "#F9AB00"
    single_value_title: Safety Stock
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Product Uid: rs_q_policy_prod.product_uid
      Alpha: rs_q_policy_prod.alpha
      Time: rs_q_policy_prod.time
      Location Uid: rs_q_policy_prod.location_uid
    row: 3
    col: 21
    width: 3
    height: 3
  filters:
  - name: Product Uid
    title: Product Uid
    type: field_filter
    default_value: P3394
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google-scm-demo
    explore: rs_q_policy_prod
    listens_to_filters: []
    field: rs_q_policy_prod.product_uid
  - name: Location Uid
    title: Location Uid
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: google-scm-demo
    explore: rs_q_policy_prod
    listens_to_filters: []
    field: rs_q_policy_prod.location_uid
  - name: Alpha
    title: Alpha
    type: field_filter
    default_value: '91'
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
    model: google-scm-demo
    explore: rs_q_policy_prod
    listens_to_filters: []
    field: rs_q_policy_prod.alpha
  - name: Time
    title: Time
    type: field_filter
    default_value: "[0,3]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options:
        min: 0
        max: 30
    model: google-scm-demo
    explore: rs_q_policy_prod
    listens_to_filters: []
    field: rs_q_policy_prod.time
