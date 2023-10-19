---
- dashboard: inventory_management_1
  title: Inventory Management 1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: QxUinqIf5avJSUlUfEYLFs
  elements:
  - title: Untitled
    name: Untitled
    model: google-scm-demo
    explore: order
    type: looker_grid
    fields: [order.actual_delivery_date, order.order_uid, order.sales_price, order.status,
      product.product_category, product.product_description, product.product_type]
    sorts: [order.actual_delivery_date desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Country: location.country
      Location Id: location.location_uid
      Product: product.product_description
      Category: product.product_type
      Indusrtry: product.product_category
    row: 3
    col: 0
    width: 14
    height: 9
  - title: Inventory Quantity
    name: Inventory Quantity
    model: google-scm-demo
    explore: order
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: false
    font_size_main: ''
    orientation: auto
    style_inventory.total_inventory_quantity: "#12B5CB"
    show_title_inventory.total_inventory_quantity: true
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    custom_color_enabled: true
    custom_color: "#12B5CB"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    title_hidden: true
    listen:
      Country: location.country
      Location Id: location.location_uid
      Product: product.product_description
      Category: product.product_type
      Indusrtry: product.product_category
    row: 0
    col: 0
    width: 7
    height: 3
  - title: Untitled
    name: Untitled (2)
    model: google-scm-demo
    explore: order
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [order.total_delivered_quantity]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    style_order.total_delivered_quantity: "#7CB342"
    title_placement_order.total_delivered_quantity: below
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    title_hidden: true
    listen:
      Country: location.country
      Location Id: location.location_uid
      Product: product.product_description
      Category: product.product_type
      Indusrtry: product.product_category
    row: 0
    col: 7
    width: 7
    height: 3
  - title: Untitled
    name: Untitled (3)
    model: google-scm-demo
    explore: order
    type: looker_google_map
    fields: [order.order_uid, order.total_delivered_quantity, order.status, location.country,
      location.location]
    sorts: [order.total_delivered_quantity desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    defaults_version: 0
    hidden_pivots: {}
    listen:
      Country: location.country
      Location Id: location.location_uid
      Product: product.product_description
      Category: product.product_type
      Indusrtry: product.product_category
    row: 0
    col: 14
    width: 10
    height: 12
  filters:
  - name: Indusrtry
    title: Indusrtry
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google-scm-demo
    explore: order
    listens_to_filters: []
    field: product.product_category
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google-scm-demo
    explore: order
    listens_to_filters: []
    field: product.product_type
  - name: Product
    title: Product
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google-scm-demo
    explore: order
    listens_to_filters: []
    field: product.product_description
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google-scm-demo
    explore: order
    listens_to_filters: []
    field: location.country
  - name: Location Id
    title: Location Id
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google-scm-demo
    explore: order
    listens_to_filters: []
    field: location.location_uid
