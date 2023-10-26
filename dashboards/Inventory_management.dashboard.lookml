---
- dashboard: inventory
  title: Inventory
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: PdIDa1qYtdEZc6RWtfH1Q7
  elements:
  - title: Untitled
    name: Untitled
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, order.order_backlog, order.supplier_quality_index,
      order.backorder_rate]
    filters:
      inventory.procurement_type: Supplier
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: ''
    orientation: auto
    style_inventory.total_inventory_quantity: "#079c98"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total stocks - Supplier
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_order.order_backlog: "#F9AB00"
    show_title_order.order_backlog: true
    title_placement_order.order_backlog: below
    value_format_order.order_backlog: ''
    show_comparison_order.order_backlog: false
    style_order.supplier_quality_index: "#7CB342"
    show_title_order.supplier_quality_index: true
    title_placement_order.supplier_quality_index: below
    value_format_order.supplier_quality_index: ''
    show_comparison_order.supplier_quality_index: false
    style_order.backorder_rate: "#3A4245"
    show_title_order.backorder_rate: true
    title_placement_order.backorder_rate: below
    value_format_order.backorder_rate: ''
    show_comparison_order.backorder_rate: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: Total Stocks -  Supplier
    defaults_version: 0
    hidden_pivots: {}
    title_hidden: true
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
    row: 17
    col: 0
    width: 4
    height: 8
  - title: Supplier Inventory Footprint
    name: Supplier Inventory Footprint
    model: google-scm-demo
    explore: inventory
    type: looker_google_map
    fields: [inventory.product_uid, location.location, location.location_type, inventory.inventory_quantity]
    filters:
      location.location_type: Supplier
      inventory.inventory_month: this week
    sorts: [inventory.product_uid]
    limit: 5000
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
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: fixed
    map_marker_units: pixels
    map_marker_radius_fixed: 4
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 0
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
    row: 42
    col: 0
    width: 8
    height: 8
  - title: DC Inventory Footprint
    name: DC Inventory Footprint
    model: google-scm-demo
    explore: inventory
    type: looker_google_map
    fields: [inventory.product_uid, location.location, location.location_type, inventory.inventory_quantity]
    filters:
      location.location_type: DC
      inventory.inventory_month: this week
    sorts: [inventory.product_uid]
    limit: 5000
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
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: icon
    map_marker_icon_name: building
    map_marker_radius_mode: fixed
    map_marker_units: meters
    map_marker_radius_fixed: 1
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 0
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
    row: 42
    col: 8
    width: 8
    height: 8
  - title: Stores Inventory Footprint
    name: Stores Inventory Footprint
    model: google-scm-demo
    explore: inventory
    type: looker_google_map
    fields: [inventory.product_uid, location.city, location.location, location.location_type,
      inventory.inventory_quantity]
    filters:
      location.location_type: Stores
      inventory.inventory_month: this week
    sorts: [inventory.product_uid]
    limit: 5000
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
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: building
    map_marker_radius_mode: fixed
    map_marker_units: pixels
    map_marker_radius_fixed: 4
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 0
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
    row: 42
    col: 16
    width: 8
    height: 8
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: google-scm-demo
    explore: inventory
    type: looker_bar
    fields: [inventory.total_inventory_quantity, location.country]
    sorts: [inventory.total_inventory_quantity desc]
    limit: 500
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: inventory.total_inventory_quantity,
            id: inventory.total_inventory_quantity, name: Stock Value by Country}],
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: log}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      inventory.total_inventory_quantity: "#12B5CB"
    series_labels:
      inventory.total_inventory_quantity: Stock Value by Country
    column_spacing_ratio: 0.2
    show_null_points: true
    interpolation: linear
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
    single_value_title: Delivery Quality
    conditional_formatting: [{type: greater than, value: 85, background_color: "#1A73E8",
        font_color: "#7CB342", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    title_hidden: true
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
    row: 50
    col: 0
    width: 11
    height: 8
  - title: ''
    name: ''
    model: google-scm-demo
    explore: inventory
    type: looker_grid
    fields: [order.actual_delivery_date, order.order_id, order.order_category, order.status,
      order.mode_of_transport, location.country, inventory.inventory_quantity, product.product_category,
      product.procurement_type]
    sorts: [order.actual_delivery_date desc]
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    title_hidden: true
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
    row: 50
    col: 11
    width: 13
    height: 8
  - title: Supplier Inventory
    name: Supplier Inventory
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, inventory.Cost]
    filters:
      inventory.procurement_type: Supplier
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${inventory.total_inventory_quantity}*1.5"
      label: Sell Value
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: sell_value
      _type_hint: number
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '10.5'
    orientation: auto
    style_inventory.total_inventory_quantity: "#E52592"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stock Units
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_inventory.Cost: "#1A73E8"
    show_title_inventory.Cost: true
    title_placement_inventory.Cost: below
    value_format_inventory.Cost: ''
    show_comparison_inventory.Cost: false
    style_sell_value: "#7CB342"
    show_title_sell_value: true
    title_placement_sell_value: below
    value_format_sell_value: ''
    show_comparison_sell_value: false
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
    listen:
      Product: product.product_id
    row: 2
    col: 0
    width: 4
    height: 7
  - title: DC inventory
    name: DC inventory
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, inventory.Cost]
    filters:
      inventory.procurement_type: DC
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${inventory.total_inventory_quantity}*1.25"
      label: Sell Value
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: sell_value
      _type_hint: number
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '10.5'
    orientation: auto
    style_inventory.total_inventory_quantity: "#E52592"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stock Units
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_inventory.Cost: "#1A73E8"
    show_title_inventory.Cost: true
    title_placement_inventory.Cost: below
    value_format_inventory.Cost: ''
    show_comparison_inventory.Cost: false
    style_sell_value: "#7CB342"
    show_title_sell_value: true
    title_placement_sell_value: below
    value_format_sell_value: ''
    show_comparison_sell_value: false
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
    listen:
      Product: product.product_id
    row: 2
    col: 10
    width: 4
    height: 7
  - title: Store inventory
    name: Store inventory
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, inventory.Cost]
    filters:
      inventory.procurement_type: Stores
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${inventory.total_inventory_quantity}*1.10"
      label: Sell Value
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: sell_value
      _type_hint: number
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '10.5'
    orientation: auto
    style_inventory.total_inventory_quantity: "#E52592"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stock Units
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_inventory.Cost: "#1A73E8"
    show_title_inventory.Cost: true
    title_placement_inventory.Cost: below
    value_format_inventory.Cost: ''
    show_comparison_inventory.Cost: false
    style_sell_value: "#7CB342"
    show_title_sell_value: true
    title_placement_sell_value: below
    value_format_sell_value: ''
    show_comparison_sell_value: false
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
    listen:
      Product: product.product_id
    row: 2
    col: 20
    width: 4
    height: 7
  - title: In Transit DC
    name: In Transit DC
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, inventory.Cost]
    filters:
      inventory.procurement_type: DC
      order.status: In Transit
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${inventory.total_inventory_quantity}*0.8"
      label: Sell Value
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: sell_value
      _type_hint: number
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '10.5'
    orientation: auto
    style_inventory.total_inventory_quantity: "#E52592"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stock Units
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_inventory.Cost: "#1A73E8"
    show_title_inventory.Cost: true
    title_placement_inventory.Cost: below
    value_format_inventory.Cost: ''
    show_comparison_inventory.Cost: false
    style_sell_value: "#7CB342"
    show_title_sell_value: true
    title_placement_sell_value: below
    value_format_sell_value: ''
    show_comparison_sell_value: false
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
    listen:
      Product: product.product_id
    row: 2
    col: 5
    width: 4
    height: 7
  - title: In Transit Stores
    name: In Transit Stores
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, inventory.Cost]
    filters:
      inventory.procurement_type: Stores
      order.status: In Transit
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${inventory.total_inventory_quantity}*0.7"
      label: Sell Value
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: sell_value
      _type_hint: number
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '10.5'
    orientation: auto
    style_inventory.total_inventory_quantity: "#E52592"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stock Units
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_inventory.Cost: "#1A73E8"
    show_title_inventory.Cost: true
    title_placement_inventory.Cost: below
    value_format_inventory.Cost: ''
    show_comparison_inventory.Cost: false
    style_sell_value: "#7CB342"
    show_title_sell_value: true
    title_placement_sell_value: below
    value_format_sell_value: ''
    show_comparison_sell_value: false
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
    listen:
      Product: product.product_id
    row: 2
    col: 15
    width: 4
    height: 7
  - title: Supplier
    name: Supplier
    model: google-scm-demo
    explore: order
    type: looker_bar
    fields: [product.at_stock]
    filters:
      product.procurement_type: ''
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${product.at_stock}/4"
      label: Over Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: over_stock
      _type_hint: number
    - category: table_calculation
      expression: "${product.at_stock}*1.4"
      label: Under Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: under_stock
      _type_hint: number
    - category: table_calculation
      expression: "${product.at_stock}*0.2"
      label: Out of Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: out_of_stock
      _type_hint: number
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: e26878fa-802e-47d9-9478-62fb4307f763
      options:
        steps: 5
        reverse: true
    y_axes: [{label: Stock, orientation: bottom, series: [{axisId: product.at_stock,
            id: product.at_stock, name: At Stock}, {axisId: over_stock, id: over_stock,
            name: Over Stock}, {axisId: under_stock, id: under_stock, name: Under
              Stock}, {axisId: out_of_stock, id: out_of_stock, name: Out of Stock}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Stock
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '12'
    label_value_format: ''
    series_colors: {}
    series_labels: {}
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0.6
    hidden_pivots: {}
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
    hidden_fields: []
    hidden_points_if_no: []
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 11
    col: 0
    width: 4
    height: 6
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, order.order_backlog, order.supplier_quality_index,
      order.backorder_rate]
    filters:
      inventory.procurement_type: DC
      order.status: Open
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: ''
    orientation: auto
    style_inventory.total_inventory_quantity: "#079c98"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stocks - In Transit DC
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_order.order_backlog: "#F9AB00"
    title_placement_order.order_backlog: below
    style_order.supplier_quality_index: "#7CB342"
    title_placement_order.supplier_quality_index: below
    title_placement_order.backorder_rate: below
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
    single_value_title: Total Stocks -  In Transit DC
    defaults_version: 0
    title_hidden: true
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
    row: 17
    col: 5
    width: 4
    height: 8
  - title: Untitled (Copy 3)
    name: Untitled (Copy 3)
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, order.order_backlog, order.supplier_quality_index,
      order.backorder_rate_fr]
    filters:
      inventory.procurement_type: Stores
      order.status: Open
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: ''
    orientation: auto
    style_inventory.total_inventory_quantity: "#079c98"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stocks -  In Transit
      Stores
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_order.order_backlog: "#F9AB00"
    show_title_order.order_backlog: true
    title_placement_order.order_backlog: below
    value_format_order.order_backlog: ''
    show_comparison_order.order_backlog: false
    style_order.supplier_quality_index: "#7CB342"
    show_title_order.supplier_quality_index: true
    title_placement_order.supplier_quality_index: below
    value_format_order.supplier_quality_index: ''
    show_comparison_order.supplier_quality_index: false
    style_order.backorder_rate_fr: "#3A4245"
    show_title_order.backorder_rate_fr: true
    title_override_order.backorder_rate_fr: Backorder Rate
    title_placement_order.backorder_rate_fr: below
    value_format_order.backorder_rate_fr: ''
    show_comparison_order.backorder_rate_fr: false
    style_order.backorder_rate: "#3A4245"
    show_title_order.backorder_rate: true
    title_placement_order.backorder_rate: below
    value_format_order.backorder_rate: ''
    show_comparison_order.backorder_rate: false
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
    single_value_title: Total Stocks -  In Transit Stores
    defaults_version: 0
    title_hidden: true
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
    row: 17
    col: 15
    width: 4
    height: 8
  - title: Untitled (Copy 5)
    name: Untitled (Copy 5)
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, order.order_backlog, order.supplier_quality_index,
      order.backorder_rate_fr]
    filters:
      inventory.procurement_type: Stores
      order.status: ''
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: ''
    orientation: auto
    style_inventory.total_inventory_quantity: "#079c98"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stocks -  Store Inventory
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_order.order_backlog: "#F9AB00"
    title_placement_order.order_backlog: below
    style_order.supplier_quality_index: "#7CB342"
    title_placement_order.supplier_quality_index: below
    title_override_order.backorder_rate_fr: Backorder Rate
    title_placement_order.backorder_rate_fr: below
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#12B5CB"
    single_value_title: Total Stocks -  Store Inventory
    defaults_version: 0
    title_hidden: true
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
    row: 17
    col: 20
    width: 4
    height: 8
  - title: Untitled (Copy 4)
    name: Untitled (Copy 4)
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, order.order_backlog, order.supplier_quality_index,
      order.backorder_rate]
    filters:
      inventory.procurement_type: DC
      order.status: Completed
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: ''
    orientation: auto
    style_inventory.total_inventory_quantity: "#079c98"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stocks -  DC
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_order.order_backlog: "#F9AB00"
    show_title_order.order_backlog: true
    title_placement_order.order_backlog: below
    value_format_order.order_backlog: ''
    show_comparison_order.order_backlog: false
    style_order.supplier_quality_index: "#7CB342"
    show_title_order.supplier_quality_index: true
    title_placement_order.supplier_quality_index: below
    value_format_order.supplier_quality_index: ''
    show_comparison_order.supplier_quality_index: false
    title_placement_order.backorder_rate: below
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: Total Stocks -  DC
    defaults_version: 0
    title_hidden: true
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
    row: 17
    col: 10
    width: 4
    height: 8
  - title: In Transit DC
    name: In Transit DC (2)
    model: google-scm-demo
    explore: order
    type: looker_bar
    fields: [product.at_stock]
    filters:
      product.procurement_type: External (E)
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${product.at_stock}/4"
      label: Over Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: over_stock
      _type_hint: number
    - category: table_calculation
      expression: "${product.at_stock}*1.4"
      label: Under Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: under_stock
      _type_hint: number
    - category: table_calculation
      expression: "${product.at_stock}*0.2"
      label: Out of Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: out_of_stock
      _type_hint: number
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: e26878fa-802e-47d9-9478-62fb4307f763
      options:
        steps: 5
        reverse: true
    y_axes: [{label: Stock, orientation: bottom, series: [{axisId: product.at_stock,
            id: product.at_stock, name: At Stock}, {axisId: over_stock, id: over_stock,
            name: Over Stock}, {axisId: under_stock, id: under_stock, name: Under
              Stock}, {axisId: out_of_stock, id: out_of_stock, name: Out of Stock}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Stock
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '12'
    label_value_format: ''
    series_colors: {}
    series_labels: {}
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0.6
    hidden_pivots: {}
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
    hidden_fields: []
    hidden_points_if_no: []
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 11
    col: 5
    width: 4
    height: 6
  - title: Stores
    name: Stores
    model: google-scm-demo
    explore: order
    type: looker_bar
    fields: [product.at_stock]
    filters:
      product.procurement_type: Both (X)
    sorts: [under_stock desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${product.at_stock}/6.2"
      label: Over Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: over_stock
      _type_hint: number
    - category: table_calculation
      expression: "${product.at_stock}/1.55"
      label: Under Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: under_stock
      _type_hint: number
    - category: table_calculation
      expression: "${product.at_stock}*0.1"
      label: Out of Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: out_of_stock
      _type_hint: number
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: e26878fa-802e-47d9-9478-62fb4307f763
      options:
        steps: 5
        reverse: true
    y_axes: [{label: Stock, orientation: bottom, series: [{axisId: product.at_stock,
            id: product.at_stock, name: At Stock}, {axisId: over_stock, id: over_stock,
            name: Over Stock}, {axisId: under_stock, id: under_stock, name: Under
              Stock}, {axisId: out_of_stock, id: out_of_stock, name: Out of Stock}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Stock
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '12'
    label_value_format: ''
    series_colors: {}
    series_labels: {}
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0.6
    hidden_pivots: {}
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
    hidden_fields: []
    hidden_points_if_no: []
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 11
    col: 20
    width: 4
    height: 6
  - title: In Transit Stores
    name: In Transit Stores (2)
    model: google-scm-demo
    explore: order
    type: looker_bar
    fields: [product.at_stock]
    filters:
      product.procurement_type: External (E)
    sorts: [under_stock desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${product.at_stock}/5"
      label: Over Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: over_stock
      _type_hint: number
    - category: table_calculation
      expression: "${product.at_stock}/1.30"
      label: Under Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: under_stock
      _type_hint: number
    - category: table_calculation
      expression: "${product.at_stock}*0.3"
      label: Out of Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: out_of_stock
      _type_hint: number
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: e26878fa-802e-47d9-9478-62fb4307f763
      options:
        steps: 5
        reverse: true
    y_axes: [{label: Stock, orientation: bottom, series: [{axisId: product.at_stock,
            id: product.at_stock, name: At Stock}, {axisId: over_stock, id: over_stock,
            name: Over Stock}, {axisId: under_stock, id: under_stock, name: Under
              Stock}, {axisId: out_of_stock, id: out_of_stock, name: Out of Stock}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Stock
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '12'
    label_value_format: ''
    series_colors: {}
    series_labels: {}
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0.6
    hidden_pivots: {}
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
    hidden_fields: []
    hidden_points_if_no: []
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 11
    col: 15
    width: 4
    height: 6
  - title: DC Inventory
    name: DC Inventory
    model: google-scm-demo
    explore: order
    type: looker_bar
    fields: [product.at_stock]
    filters:
      product.procurement_type: Internnal (M)
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${product.at_stock}/3"
      label: Over Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: over_stock
      _type_hint: number
    - category: table_calculation
      expression: "${product.at_stock}*1.25"
      label: Under Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: under_stock
      _type_hint: number
    - category: table_calculation
      expression: "${product.at_stock}/1.8"
      label: Out of Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: out_of_stock
      _type_hint: number
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: e26878fa-802e-47d9-9478-62fb4307f763
      options:
        steps: 5
        reverse: true
    y_axes: [{label: Stock, orientation: bottom, series: [{axisId: product.at_stock,
            id: product.at_stock, name: At Stock}, {axisId: over_stock, id: over_stock,
            name: Over Stock}, {axisId: under_stock, id: under_stock, name: Under
              Stock}, {axisId: out_of_stock, id: out_of_stock, name: Out of Stock}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Stock
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '12'
    label_value_format: ''
    series_colors: {}
    series_labels: {}
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0.6
    hidden_pivots: {}
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
    hidden_fields: []
    hidden_points_if_no: []
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 11
    col: 10
    width: 4
    height: 6
  - name: Stock Level Summary
    type: text
    title_text: Stock Level Summary
    subtitle_text: What's our overall stock positioning?
    body_text: ''
    row: 9
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"End-to-End Supply Chain Inventory
      Overview","bold":true}],"id":1698220667387,"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Daily View at DC
    name: Daily View at DC
    model: google-scm-demo
    explore: inventory
    type: looker_grid
    fields: [forecast.forecast_date, forecast.projected_inventory, forecast.total_forecast_quantity,
      forecast.valuation_table, order.total_requested_quantity_po]
    fill_fields: [forecast.forecast_date]
    sorts: [forecast.forecast_date desc]
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
    listen: {}
    row: 32
    col: 0
    width: 24
    height: 10
  - title: Supplier Lead Time
    name: Supplier Lead Time
    model: google-scm-demo
    explore: order
    type: looker_line
    fields: [date.date_date, order.lead_time]
    fill_fields: [date.date_date]
    filters:
      order.order_creation_date_date: 14 days
      order.order_category: Purchase Order
      order.status: Completed
    sorts: [date.date_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${order.lead_days})
      label: Lead Time
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: lead_time
      _type_hint: number
      is_disabled: true
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: order.lead_time, id: order.lead_time,
            name: Lead Time}], showLabels: true, showValues: true, valueFormat: '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '0'
    series_colors:
      order.lead_time: "#9334E6"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 26
    col: 0
    width: 4
    height: 6
  - name: 14 Day Lead Time
    type: text
    title_text: 14 Day Lead Time
    subtitle_text: ''
    body_text: ''
    row: 25
    col: 0
    width: 24
    height: 1
  - title: In Transit Lead Time
    name: In Transit Lead Time
    model: google-scm-demo
    explore: order
    type: looker_line
    fields: [date.date_date, order.lead_time]
    fill_fields: [date.date_date]
    filters:
      order.order_creation_date_date: 14 days
      order.order_category: Purchase Order
      order.status: In Transit
    sorts: [date.date_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${order.lead_days})
      label: Lead Time
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: lead_time
      _type_hint: number
      is_disabled: true
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: order.lead_time, id: order.lead_time,
            name: Lead Time}], showLabels: true, showValues: true, valueFormat: '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '0'
    series_colors:
      order.lead_time: "#9334E6"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 26
    col: 5
    width: 4
    height: 6
  - title: DC Lead Time
    name: DC Lead Time
    model: google-scm-demo
    explore: order
    type: looker_line
    fields: [date.date_date, order.lead_time]
    fill_fields: [date.date_date]
    filters:
      order.order_creation_date_date: 14 days
      order.order_category: Transaction Order
      order.status: Completed
    sorts: [date.date_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${order.lead_days})
      label: Lead Time
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: lead_time
      _type_hint: number
      is_disabled: true
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: order.lead_time, id: order.lead_time,
            name: Lead Time}], showLabels: true, showValues: true, valueFormat: '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '0'
    series_colors:
      order.lead_time: "#9334E6"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 26
    col: 10
    width: 4
    height: 6
  - title: In Transit Stores Lead Time
    name: In Transit Stores Lead Time
    model: google-scm-demo
    explore: order
    type: looker_line
    fields: [date.date_date, order.lead_time]
    fill_fields: [date.date_date]
    filters:
      order.order_creation_date_date: 14 days
      order.order_category: Transaction Order
      order.status: In Transit
    sorts: [date.date_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${order.lead_days})
      label: Lead Time
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: lead_time
      _type_hint: number
      is_disabled: true
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: order.lead_time, id: order.lead_time,
            name: Lead Time}], showLabels: true, showValues: true, valueFormat: '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '0'
    series_colors:
      order.lead_time: "#9334E6"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 26
    col: 15
    width: 4
    height: 6
  - title: Stores Lead Time
    name: Stores Lead Time
    model: google-scm-demo
    explore: order
    type: looker_line
    fields: [date.date_date, order.lead_time]
    fill_fields: [date.date_date]
    filters:
      order.order_creation_date_date: 14 days
      order.order_category: Sales Order
      order.status: Completed
    sorts: [date.date_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${order.lead_days})
      label: Lead Time
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: lead_time
      _type_hint: number
      is_disabled: true
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: order.lead_time, id: order.lead_time,
            name: Lead Time}], showLabels: true, showValues: true, valueFormat: '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '0'
    series_colors:
      order.lead_time: "#9334E6"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 26
    col: 20
    width: 4
    height: 6
  filters:
  - name: Industry
    title: Industry
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google-scm-demo
    explore: inventory
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
    explore: inventory
    listens_to_filters: [Category, Industry]
    field: product.product_type
  - name: Inventory Date
    title: Inventory Date
    type: field_filter
    default_value: 90 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: google-scm-demo
    explore: inventory
    listens_to_filters: []
    field: inventory.inventory_date
  - name: Product
    title: Product
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: google-scm-demo
    explore: inventory
    listens_to_filters: []
    field: product.product_id
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: google-scm-demo
    explore: inventory
    listens_to_filters: []
    field: location.country
  - name: Location ID
    title: Location ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: google-scm-demo
    explore: inventory
    listens_to_filters: []
    field: location.location_id
