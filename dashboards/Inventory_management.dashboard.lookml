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
      order.backorder_rate, order.return_rate]
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
    style_order.return_rate: "#EA4335"
    title_placement_order.return_rate: below
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
      Location Type: location.location_type
    row: 18
    col: 0
    width: 4
    height: 12
  - title: Supplier Inventory Footprint
    name: Supplier Inventory Footprint
    model: google-scm-demo
    explore: inventory
    type: looker_google_map
    fields: [inventory.product_uid, location.location, location.location_type, inventory.inventory_quantity]
    filters:
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
      Location Type: location.location_type
    row: 54
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
      Location Type: location.location_type
    row: 54
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
      Location Type: location.location_type
    row: 54
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
      Location Type: location.location_type
    row: 68
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
      Location Type: location.location_type
    row: 68
    col: 11
    width: 13
    height: 8
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, order.lead_time, order.order_quality,
      inventory.shrinkage, order.cycle_time]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: ''
    orientation: auto
    style_inventory.total_inventory_quantity: "#12B5CB"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stocks - DC
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_order.lead_time: "#A8A116"
    show_title_order.lead_time: true
    title_override_order.lead_time: Average Lead Time
    title_placement_order.lead_time: below
    value_format_order.lead_time: "#.##"
    show_comparison_order.lead_time: false
    style_order.order_quality: "#7CB342"
    show_title_order.order_quality: true
    title_override_order.order_quality: Fill Rate
    title_placement_order.order_quality: below
    value_format_order.order_quality: ''
    show_comparison_order.order_quality: false
    style_inventory.shrinkage: "#3A4245"
    show_title_inventory.shrinkage: true
    title_placement_inventory.shrinkage: below
    value_format_inventory.shrinkage: ''
    show_comparison_inventory.shrinkage: false
    style_order.cycle_time: "#3A4245"
    show_title_order.cycle_time: true
    title_placement_order.cycle_time: below
    value_format_order.cycle_time: ''
    show_comparison_order.cycle_time: false
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
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
      Location Type: location.location_type
    row: 18
    col: 5
    width: 4
    height: 12
  - title: Untitled (Copy 3)
    name: Untitled (Copy 3)
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.shrinkage_category, inventory.total_inventory_quantity, order.order_backlog,
      order.supplier_quality_index, order.backorder_rate_fr]
    filters:
      inventory.procurement_type: Stores
      order.status: ''
    sorts: [inventory.total_inventory_quantity desc 0]
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
      Location Type: location.location_type
    row: 18
    col: 15
    width: 4
    height: 12
  - title: Untitled (Copy 5)
    name: Untitled (Copy 5)
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.shrinkage_category, inventory.total_inventory_quantity, order.order_backlog,
      order.supplier_quality_index, order.backorder_rate_fr]
    filters:
      inventory.procurement_type: Stores
      order.status: ''
    sorts: [inventory.total_inventory_quantity desc]
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
      Location Type: location.location_type
    row: 18
    col: 20
    width: 4
    height: 12
  - title: Untitled (Copy 4)
    name: Untitled (Copy 4)
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, inventory.inventory_turnover, inventory.dsi]
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
    style_inventory.inventory_turnover: "#3A4245"
    show_title_inventory.inventory_turnover: true
    title_placement_inventory.inventory_turnover: below
    value_format_inventory.inventory_turnover: ''
    show_comparison_inventory.inventory_turnover: false
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
    style_order.return_rate: "#EA4335"
    show_title_order.return_rate: true
    title_placement_order.return_rate: below
    value_format_order.return_rate: ''
    show_comparison_order.return_rate: false
    style_inventory.dsi: "#1A73E8"
    title_override_inventory.dsi: DSI
    title_placement_inventory.dsi: below
    style_order.order_backlog: "#F9AB00"
    show_title_order.order_backlog: true
    title_placement_order.order_backlog: below
    value_format_order.order_backlog: ''
    show_comparison_order.order_backlog: false
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
    hidden_pivots: {}
    title_hidden: true
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
      Location Type: location.location_type
    row: 18
    col: 10
    width: 4
    height: 12
  - title: In Transit DC
    name: In Transit DC
    model: google-scm-demo
    explore: order
    type: looker_bar
    fields: [inventory.inventory_status, inventory.count]
    pivots: [inventory.inventory_status]
    filters:
      inventory.procurement_type: DC
      order.status: In Transit
    sorts: [inventory.inventory_status]
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
      is_disabled: true
    - category: table_calculation
      expression: "${product.at_stock}*1.4"
      label: Under Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: under_stock
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${product.at_stock}*0.2"
      label: Out of Stock
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: out_of_stock
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
    column_group_spacing_ratio: 0.5
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
    listen:
      Location Type: location.location_type
    row: 12
    col: 5
    width: 4
    height: 6
  - title: In Transit Stores
    name: In Transit Stores
    model: google-scm-demo
    explore: order
    type: looker_bar
    fields: [inventory.inventory_status, inventory.count]
    pivots: [inventory.inventory_status]
    filters:
      inventory.procurement_type: Stores
      order.status: In Transit
    sorts: [inventory.inventory_status]
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
    column_group_spacing_ratio: 0.5
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
    listen:
      Location Type: location.location_type
    row: 12
    col: 15
    width: 4
    height: 6
  - name: Stock Level Summary
    type: text
    title_text: Stock Level Summary
    subtitle_text: What's our overall stock positioning?
    body_text: ''
    row: 10
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
    listen:
      Location Type: location.location_type
    row: 44
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
    listen:
      Location Type: location.location_type
    row: 31
    col: 0
    width: 4
    height: 6
  - name: 14 Day Lead Time
    type: text
    title_text: 14 Day Lead Time
    subtitle_text: ''
    body_text: ''
    row: 30
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
    listen:
      Location Type: location.location_type
    row: 31
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
      order.order_category: Delivery Order
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
    listen:
      Location Type: location.location_type
    row: 31
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
    listen:
      Location Type: location.location_type
    row: 31
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
    listen:
      Location Type: location.location_type
    row: 31
    col: 20
    width: 4
    height: 6
  - title: Supplier Inventory
    name: Supplier Inventory
    model: google-scm-demo
    explore: inventory
    type: looker_bar
    fields: [inventory.inventory_status, inventory.count]
    pivots: [inventory.inventory_status]
    filters:
      inventory.procurement_type: Supplier
    sorts: [inventory.inventory_status]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: inventory.count, id: At-Stock
              - inventory.count, name: At-Stock}, {axisId: inventory.count, id: Out-of-Stock
              - inventory.count, name: Out-of-Stock}, {axisId: inventory.count, id: Over-Stock
              - inventory.count, name: Over-Stock}, {axisId: inventory.count, id: Under-Stock
              - inventory.count, name: Under-Stock}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Stocks
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Over-Stock - inventory.count: "#F9AB00"
      At-Stock - inventory.count: "#12B5CB"
      Under-Stock - inventory.count: "#E8710A"
      Out-of-Stock - inventory.count: "#EA4335"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 12
    col: 0
    width: 4
    height: 6
  - title: 'DC Inventory '
    name: 'DC Inventory '
    model: google-scm-demo
    explore: inventory
    type: looker_bar
    fields: [inventory.inventory_status, inventory.count]
    pivots: [inventory.inventory_status]
    filters:
      inventory.procurement_type: DC
    sorts: [inventory.inventory_status]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: inventory.count, id: At-Stock
              - inventory.count, name: At-Stock}, {axisId: inventory.count, id: Out-of-Stock
              - inventory.count, name: Out-of-Stock}, {axisId: inventory.count, id: Over-Stock
              - inventory.count, name: Over-Stock}, {axisId: inventory.count, id: Under-Stock
              - inventory.count, name: Under-Stock}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Stocks
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Over-Stock - inventory.count: "#F9AB00"
      At-Stock - inventory.count: "#12B5CB"
      Under-Stock - inventory.count: "#E8710A"
      Out-of-Stock - inventory.count: "#EA4335"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 12
    col: 10
    width: 4
    height: 6
  - title: 'Stores Inventory  '
    name: 'Stores Inventory  '
    model: google-scm-demo
    explore: inventory
    type: looker_bar
    fields: [inventory.inventory_status, inventory.count]
    pivots: [inventory.inventory_status]
    filters:
      inventory.procurement_type: Stores
    sorts: [inventory.inventory_status]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: inventory.count, id: At-Stock
              - inventory.count, name: At-Stock}, {axisId: inventory.count, id: Out-of-Stock
              - inventory.count, name: Out-of-Stock}, {axisId: inventory.count, id: Over-Stock
              - inventory.count, name: Over-Stock}, {axisId: inventory.count, id: Under-Stock
              - inventory.count, name: Under-Stock}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Stocks
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Over-Stock - inventory.count: "#F9AB00"
      At-Stock - inventory.count: "#12B5CB"
      Under-Stock - inventory.count: "#E8710A"
      Out-of-Stock - inventory.count: "#EA4335"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 12
    col: 20
    width: 4
    height: 6
  - title: Supplier Inventory
    name: Supplier Inventory (2)
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, inventory.inventory_cost]
    filters:
      inventory.procurement_type: Supplier
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '14'
    orientation: auto
    style_inventory.total_inventory_quantity: "#1A73E8"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stock Units
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_inventory.inventory_cost: "#E52592"
    show_title_inventory.inventory_cost: true
    title_placement_inventory.inventory_cost: below
    value_format_inventory.inventory_cost: ''
    show_comparison_inventory.inventory_cost: false
    defaults_version: 0
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 2
    col: 0
    width: 4
    height: 6
  - title: Supplier Sell Value
    name: Supplier Sell Value
    model: google-scm-demo
    explore: order
    type: single_value
    fields: [order.total_sales]
    filters:
      order.order_category: Purchase Order
      order.status: Completed,Open
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
    single_value_title: Sell Value
    defaults_version: 1
    listen:
      Location Type: location.location_type
    row: 8
    col: 0
    width: 4
    height: 2
  - title: DC Inventory
    name: DC Inventory
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, inventory.inventory_cost]
    filters:
      inventory.procurement_type: DC
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '14'
    orientation: auto
    style_inventory.total_inventory_quantity: "#1A73E8"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stock Units
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_inventory.inventory_cost: "#E52592"
    show_title_inventory.inventory_cost: true
    title_placement_inventory.inventory_cost: below
    value_format_inventory.inventory_cost: ''
    show_comparison_inventory.inventory_cost: false
    defaults_version: 0
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 2
    col: 10
    width: 4
    height: 6
  - title: In Transit DC
    name: In Transit DC (2)
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, inventory.inventory_cost]
    filters:
      inventory.procurement_type: DC
      order.status: In Transit
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '14'
    orientation: auto
    style_inventory.total_inventory_quantity: "#1A73E8"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stock Units
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_inventory.inventory_cost: "#E52592"
    show_title_inventory.inventory_cost: true
    title_placement_inventory.inventory_cost: below
    value_format_inventory.inventory_cost: ''
    show_comparison_inventory.inventory_cost: false
    defaults_version: 0
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 2
    col: 5
    width: 4
    height: 6
  - title: In Transit DC
    name: In Transit DC (3)
    model: google-scm-demo
    explore: order
    type: single_value
    fields: [order.total_sales]
    filters:
      order.order_category: Delivery Order
      order.status: In Transit
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
    single_value_title: Sell Value
    defaults_version: 1
    listen:
      Location Type: location.location_type
    row: 8
    col: 5
    width: 4
    height: 2
  - title: DC Inventory
    name: DC Inventory (2)
    model: google-scm-demo
    explore: order
    type: single_value
    fields: [order.total_sales]
    filters:
      order.order_category: Delivery Order
      order.status: Completed,Open
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
    single_value_title: Sell Value
    defaults_version: 1
    listen:
      Location Type: location.location_type
    row: 8
    col: 10
    width: 4
    height: 2
  - title: In Transit Sotres
    name: In Transit Sotres
    model: google-scm-demo
    explore: order
    type: single_value
    fields: [order.total_sales]
    filters:
      order.order_category: Sales Order
      order.status: In Transit
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
    single_value_title: Sell Value
    defaults_version: 1
    listen:
      Location Type: location.location_type
    row: 8
    col: 15
    width: 4
    height: 2
  - title: In Transit Stores
    name: In Transit Stores (2)
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, inventory.inventory_cost]
    filters:
      inventory.procurement_type: Stores
      order.status: In Transit
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '14'
    orientation: auto
    style_inventory.total_inventory_quantity: "#1A73E8"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stock Units
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_inventory.inventory_cost: "#E52592"
    show_title_inventory.inventory_cost: true
    title_placement_inventory.inventory_cost: below
    value_format_inventory.inventory_cost: ''
    show_comparison_inventory.inventory_cost: false
    defaults_version: 0
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 2
    col: 15
    width: 4
    height: 6
  - title: Store Inventory
    name: Store Inventory
    model: google-scm-demo
    explore: order
    type: single_value
    fields: [order.total_sales]
    filters:
      order.order_category: Sales Order
      order.status: Completed,Open
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
    single_value_title: Sell Value
    defaults_version: 1
    listen:
      Location Type: location.location_type
    row: 8
    col: 20
    width: 4
    height: 2
  - title: Sotre Inventory
    name: Sotre Inventory
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.total_inventory_quantity, inventory.inventory_cost]
    filters:
      inventory.procurement_type: Stores
      order.status: ''
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '14'
    orientation: auto
    style_inventory.total_inventory_quantity: "#1A73E8"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stock Units
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    style_inventory.inventory_cost: "#E52592"
    show_title_inventory.inventory_cost: true
    title_placement_inventory.inventory_cost: below
    value_format_inventory.inventory_cost: ''
    show_comparison_inventory.inventory_cost: false
    defaults_version: 0
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 2
    col: 20
    width: 4
    height: 6
  - title: Supplier Locations
    name: Supplier Locations
    model: google-scm-demo
    explore: inventory
    type: looker_bar
    fields: [location.city, inventory.total_inventory_quantity_in_number]
    filters:
      inventory.procurement_type: Supplier
    sorts: [inventory.total_inventory_quantity_in_number desc 0]
    limit: 10
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Inventory, orientation: bottom, series: [{axisId: inventory.total_inventory_quantity,
            id: inventory.total_inventory_quantity, name: Total Inventory Quantity}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Location
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "#"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 62
    col: 0
    width: 8
    height: 6
  - title: Store Locations
    name: Store Locations
    model: google-scm-demo
    explore: inventory
    type: looker_bar
    fields: [location.city, inventory.total_inventory_quantity_in_number]
    filters:
      inventory.procurement_type: Stores
    sorts: [inventory.total_inventory_quantity_in_number desc 0]
    limit: 10
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Inventory, orientation: bottom, series: [{axisId: inventory.total_inventory_quantity,
            id: inventory.total_inventory_quantity, name: Total Inventory Quantity}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Location
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "#"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 62
    col: 16
    width: 8
    height: 6
  - title: DC Locations
    name: DC Locations
    model: google-scm-demo
    explore: inventory
    type: looker_bar
    fields: [location.city, inventory.total_inventory_quantity_in_number]
    filters:
      inventory.procurement_type: DC
    sorts: [inventory.total_inventory_quantity_in_number desc 0]
    limit: 10
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Inventory, orientation: bottom, series: [{axisId: inventory.total_inventory_quantity,
            id: inventory.total_inventory_quantity, name: Total Inventory Quantity}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Location
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "#"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 62
    col: 8
    width: 8
    height: 6
  - title: Needed Products (Supplier)
    name: Needed Products (Supplier)
    model: google-scm-demo
    explore: inventory
    type: looker_grid
    fields: [inventory.product_uid, inventory.Alert, inventory.total_inventory_quantity_in_number]
    filters:
      inventory.procurement_type: Supplier
      inventory.total_inventory_quantity_in_number: '0'
    sorts: [inventory.total_inventory_quantity_in_number desc 0]
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
      inventory.product_uid: Product
      inventory.Alert: Alert
      inventory.total_inventory_quantity_in_number: Inventory
    series_cell_visualizations:
      inventory.total_inventory_quantity_in_number:
        is_active: true
        palette:
          palette_id: ca6e5558-a5bb-db14-1e76-a6e390676057
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ff100d"
          - "#E52592"
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 37
    col: 2
    width: 9
    height: 7
  - title: Needed Products (DC)
    name: Needed Products (DC)
    model: google-scm-demo
    explore: inventory
    type: looker_grid
    fields: [inventory.product_uid, inventory.Alert, inventory.total_inventory_quantity_in_number]
    filters:
      inventory.procurement_type: DC
      inventory.total_inventory_quantity_in_number: '0'
    sorts: [inventory.total_inventory_quantity_in_number desc 0]
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
      inventory.product_uid: Product
      inventory.Alert: Alert
      inventory.total_inventory_quantity_in_number: Inventory
    series_cell_visualizations:
      inventory.total_inventory_quantity_in_number:
        is_active: true
        palette:
          palette_id: ee293a86-144c-1eea-bd45-f48e2ceda70b
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ed290d"
          - "#1a73e8"
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 37
    col: 13
    width: 9
    height: 7
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
      type: advanced
      display: popover
    model: google-scm-demo
    explore: inventory
    listens_to_filters: []
    field: product.product_description
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
  - name: Location Type
    title: Location Type
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
    field: location.location_type
