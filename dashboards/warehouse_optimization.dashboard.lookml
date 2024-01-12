---
- dashboard: warehouse_optimization
  title: Warehouse Optimization
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: FdGILR1WUevMwrmQ0bIJHM
  elements:
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
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
    title_hidden: true
    listen:
      Product Uid: warehouse_view.product_uid
      Warehouse: warehouse_view.warehouse
    row: 0
    col: 0
    width: 24
    height: 4
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
