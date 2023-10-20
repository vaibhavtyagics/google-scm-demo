---
- dashboard: inventory
  title: Inventory
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: PdIDa1qYtdEZc6RWtfH1Q7
  elements:
  - title: Untitled
    name: Untitled
    model: google-scm-demo
    explore: inventory
    type: single_value
    fields: [order.total_delivered_quantity]
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
    single_value_title: Total Delivered Quantity
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    font_size_main: ''
    orientation: auto
    style_order.total_delivered_quantity: "#7CB342"
    show_title_order.total_delivered_quantity: true
    title_placement_order.total_delivered_quantity: below
    value_format_order.total_delivered_quantity: ''
    defaults_version: 1
    title_hidden: true
    listen:
      Product Category: product.product_category
      Product Type: product.product_type
      Country: location.country
      City: location.city
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Untitled
    name: Untitled (2)
    model: google-scm-demo
    explore: inventory
    type: single_value
    fields: [inventory.total_inventory_quantity]
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
    custom_color: "#079c98"
    single_value_title: Total Inventory Quantity
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    font_size_main: ''
    orientation: auto
    style_inventory.total_inventory_quantity: "#079c98"
    show_title_inventory.total_inventory_quantity: true
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    defaults_version: 1
    title_hidden: true
    listen:
      Product Category: product.product_category
      Product Type: product.product_type
      Country: location.country
      City: location.city
    row: 0
    col: 6
    width: 6
    height: 3
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
    map_marker_units: meters
    map_marker_radius_fixed: 1
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 0
    listen:
      Product Category: product.product_category
      Product Type: product.product_type
      Country: location.country
      City: location.city
    row: 9
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
      Product Category: product.product_category
      Product Type: product.product_type
      Country: location.country
      City: location.city
    row: 9
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
    map_marker_units: meters
    map_marker_radius_fixed: 20
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 0
    listen:
      Product Category: product.product_category
      Product Type: product.product_type
      Country: location.country
      City: location.city
    row: 9
    col: 16
    width: 8
    height: 8
  - title: Untitled
    name: Untitled (3)
    model: google-scm-demo
    explore: inventory
    type: single_value
    fields: [order.order_quality]
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
    single_value_title: Delivery Quality
    conditional_formatting: [{type: greater than, value: 85, background_color: "#1A73E8",
        font_color: "#7CB342", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Product Category: product.product_category
      Product Type: product.product_type
      Country: location.country
      City: location.city
    row: 0
    col: 12
    width: 6
    height: 3
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
      Product Category: product.product_category
      Product Type: product.product_type
      Country: location.country
      City: location.city
    row: 17
    col: 0
    width: 24
    height: 9
  - title: Supplier Inventory Bottom 50 (Current Week)
    name: Supplier Inventory Bottom 50 (Current Week)
    model: google-scm-demo
    explore: inventory
    type: looker_column
    fields: [product.product_type, inventory.product_uid, sum_of_inventory_quantity_2]
    filters:
      location.location_type: Supplier
      inventory.inventory_month: this week
    sorts: [sum_of_inventory_quantity_2]
    limit: 50
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_inventory_quantity
      based_on: inventory.inventory_quantity
      expression: ''
      label: Sum of Inventory Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_inventory_quantity_2
      based_on: inventory.inventory_quantity
      expression: ''
      label: Sum of Inventory Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
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
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_fields: []
    hidden_points_if_no: []
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
    map_marker_units: meters
    map_marker_radius_fixed: 1
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    listen:
      Product Category: product.product_category
      Product Type: product.product_type
      Country: location.country
      City: location.city
    row: 3
    col: 0
    width: 8
    height: 6
  - title: Stores Inventory Bottom 50 (Current Week)
    name: Stores Inventory Bottom 50 (Current Week)
    model: google-scm-demo
    explore: inventory
    type: looker_column
    fields: [product.product_type, inventory.product_uid, sum_of_inventory_quantity_2]
    filters:
      location.location_type: Stores
      inventory.inventory_month: this week
    sorts: [sum_of_inventory_quantity_2]
    limit: 50
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_inventory_quantity
      based_on: inventory.inventory_quantity
      expression: ''
      label: Sum of Inventory Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_inventory_quantity_2
      based_on: inventory.inventory_quantity
      expression: ''
      label: Sum of Inventory Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
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
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      sum_of_inventory_quantity_2: "#7CB342"
    hidden_fields: []
    hidden_points_if_no: []
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
    map_marker_units: meters
    map_marker_radius_fixed: 1
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    listen:
      Product Category: product.product_category
      Product Type: product.product_type
      Country: location.country
      City: location.city
    row: 3
    col: 16
    width: 8
    height: 6
  - title: DC Inventory Bottom 50 (Current Week)
    name: DC Inventory Bottom 50 (Current Week)
    model: google-scm-demo
    explore: inventory
    type: looker_column
    fields: [product.product_type, inventory.product_uid, sum_of_inventory_quantity_2]
    filters:
      location.location_type: DC
      inventory.inventory_month: this week
    sorts: [sum_of_inventory_quantity_2]
    limit: 50
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_inventory_quantity
      based_on: inventory.inventory_quantity
      expression: ''
      label: Sum of Inventory Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_inventory_quantity_2
      based_on: inventory.inventory_quantity
      expression: ''
      label: Sum of Inventory Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
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
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      sum_of_inventory_quantity_2: "#E52592"
    hidden_fields: []
    hidden_points_if_no: []
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
    map_marker_units: meters
    map_marker_radius_fixed: 1
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    listen:
      Product Category: product.product_category
      Product Type: product.product_type
      Country: location.country
      City: location.city
    row: 3
    col: 8
    width: 8
    height: 6
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
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    title_hidden: true
    listen:
      Product Category: product.product_category
      Product Type: product.product_type
      Country: location.country
      City: location.city
    row: 26
    col: 0
    width: 24
    height: 9
  - title: Untitled
    name: Untitled (4)
    model: google-scm-demo
    explore: inventory
    type: single_value
    fields: [product.total_safety_stock]
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
    single_value_title: Safety Stocks
    defaults_version: 1
    listen:
      Product Category: product.product_category
      Product Type: product.product_type
      Country: location.country
      City: location.city
    row: 0
    col: 18
    width: 6
    height: 3
  filters:
  - name: Product Category
    title: Product Category
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
  - name: Product Type
    title: Product Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google-scm-demo
    explore: inventory
    listens_to_filters: [Product Category]
    field: product.product_type
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
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: google-scm-demo
    explore: inventory
    listens_to_filters: [Country]
    field: location.city
