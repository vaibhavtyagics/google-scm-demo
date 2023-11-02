---
- dashboard: inventory_visibility
  title: Inventory Visibility
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: PdIDa1qYtdEZc6RWtfH1Q7
  elements:
  - title: Supplier Inventory KPI
    name: Supplier Inventory KPI
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [order.order_backlog, order.supplier_quality_index, order.backorder_rate,
      order.return_rate]
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
    style_order.order_backlog: "#F9AB00"
    show_title_order.order_backlog: true
    title_placement_order.order_backlog: below
    value_format_order.order_backlog: ''
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
    style_inventory.total_inventory_quantity: "#079c98"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total stocks - Supplier
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
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
    single_value_title: Total Stocks -  Supplier
    defaults_version: 0
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      Order Backlog:
      The number of customer orders that are pending and have not been fulfilled within the expected time frame.

      <br>
      <br>

      Supplier Quality Index:
      Measures the quality of products received from suppliers by calculating the percentage of defective units.

      <br>
      <br>

      Backorder Rate:
      Measures the percentage of orders that couldn't be fulfilled immediately and were put on backorder.

      <br>
      <br>

      Return Rate:
      A higher return rate may indicate issues such as product defects, inaccurate product descriptions, or dissatisfaction with the product. Monitoring the return rate can help businesses identify areas for improvement in product quality, customer service, and marketing.
      </div>
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
    height: 11
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
    note_state: collapsed
    note_display: hover
    note_text: "<div style=\"text-align: justify;\">\n<p>Supplier Inventory Footprint\
      \ offers a comprehensive map view of our supplier inventory footprint, allowing\
      \ us to visualize the geographical distribution of the suppliers and the associated\
      \ inventory quantities. It's a powerful tool for understanding the supply chain's\
      \ spatial dynamics and identifying regions with varying inventory levels.</p>\n\
      \n<p>The tile presents an interactive map with location pins representing supplier\
      \ sites. Each location pin is color-coded, with a gradient ranging from green\
      \ to red, reflecting the inventory quantity at that specific location.</p> \n\
      \n<p>Locations with higher inventory quantities are depicted in green, while\
      \ those with lower quantities gradually shift to red, providing an intuitive\
      \ and immediate understanding of inventory levels.</p>\n</div>"
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
      Location Type: location.location_type
    row: 53
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      <p>DC Inventory Footprint provides an interactive map view of the Distribution Centers, showcasing their locations and the corresponding inventory quantities. It's an invaluable tool for visualizing the spatial distribution of inventory in our distribution network and gaining insights into stock levels across different regions.</p>

      <p>The map view presents an interactive map featuring location pins that represent our distribution centers. Each pin is color-coded, with a gradient ranging from green to red, reflecting the inventory quantity at each specific distribution center. </p>

      <p>Centers with higher inventory quantities are depicted in green, while those with lower quantities gradually transition to red, making it easy to discern inventory levels at a glance.</p>
      </div>
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
      Location Type: location.location_type
    row: 53
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      <p>Stores Inventory Footprint offers an interactive map view of the stores, presenting their locations and the associated inventory quantities for gaining insights into the geographical distribution of inventory across the retail network and for identifying stores with varying stock levels.</p>

      <p>The map view features an interactive map displaying location pins that represent your stores. Each pin is color-coded, with a gradient ranging from green to red, signifying the inventory quantity at each specific store. </p>

      <p>Stores with higher inventory quantities are represented in green, while those with lower quantities gradually shift to red. This intuitive color gradient enables us to quickly assess inventory levels at each store.</p>
      </div>
    listen:
      Country: location.country
      Industry: product.product_category
      Category: product.product_type
      Location ID: location.location_id
      Product: product.product_id
      Location Type: location.location_type
    row: 53
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
    row: 76
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
    row: 76
    col: 11
    width: 13
    height: 8
  - title: In Transit DC KPI
    name: In Transit DC KPI
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [order.lead_time, order.order_quality, inventory.shrinkage, order.cycle_time]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '14'
    orientation: auto
    style_order.lead_time: "#A8A116"
    show_title_order.lead_time: true
    title_override_order.lead_time: Average Lead Time
    title_placement_order.lead_time: below
    value_format_order.lead_time: "#.##"
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
    title_override_order.cycle_time: Order Cycle Time
    title_placement_order.cycle_time: below
    value_format_order.cycle_time: ''
    show_comparison_order.cycle_time: false
    style_inventory.total_inventory_quantity: "#12B5CB"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stocks - DC
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
    show_comparison_order.lead_time: false
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      Average Lead Time:
      Measures the average time it takes for an order to be fulfilled from the moment it's placed until it's received.

      <br>
      <br>

      Fill Rate:
      Measures the percentage of orders that were successfully fulfilled.

      <br>
      <br>

      Shrinkage:
      Shrinkage measures inventory that cannot be accounted for. The “reasonable” causes (accidental damage, miscounting) still indicate potential errors in processes that must be corrected, while theft and/or fraud are among the most serious issues a merchant can face and must be investigated and rectified ASAP.

      <br>
      <br>

      Order Cycle Time:
      The average duration it takes for a business to process and fulfill a customer order, from the point of order placement to the moment of delivery. A shorter Order Cycle Time generally indicates a more responsive and agile supply chain.
      </div>
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
    height: 11
  - title: In Transit Stores KPI
    name: In Transit Stores KPI
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.shrinkage_category, order.total_sales, order.cycle_time, order.average_lead_time]
    filters:
      inventory.procurement_type: ''
      order.status: In Transit
    sorts: [order.total_sales desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '14'
    orientation: auto
    style_inventory.shrinkage_category: "#EA4335"
    show_title_inventory.shrinkage_category: true
    title_override_inventory.shrinkage_category: Shrinkage
    title_placement_inventory.shrinkage_category: below
    value_format_inventory.shrinkage_category: ''
    style_order.total_sales: "#7CB342"
    show_title_order.total_sales: true
    title_override_order.total_sales: Cost per Shipped Unit
    title_placement_order.total_sales: below
    value_format_order.total_sales: ''
    show_comparison_order.total_sales: false
    style_order.cycle_time: "#079c98"
    show_title_order.cycle_time: true
    title_override_order.cycle_time: Order Cycle Time
    title_placement_order.cycle_time: below
    value_format_order.cycle_time: ''
    show_comparison_order.cycle_time: false
    style_order.average_lead_time: "#80868B"
    show_title_order.average_lead_time: true
    title_placement_order.average_lead_time: below
    value_format_order.average_lead_time: ''
    show_comparison_order.average_lead_time: false
    style_order.backorder_rate_fr: "#3A4245"
    show_title_order.backorder_rate_fr: true
    title_override_order.backorder_rate_fr: Backorder Rate
    title_placement_order.backorder_rate_fr: below
    value_format_order.backorder_rate_fr: ''
    show_comparison_order.backorder_rate_fr: false
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
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      Shrinkage:
      Shrinkage measures inventory that cannot be accounted for. The “reasonable” causes (accidental damage, miscounting) still indicate potential errors in processes that must be corrected, while theft and/or fraud are among the most serious issues a merchant can face and must be investigated and rectified ASAP.

      <br>
      <br>

      Cost per Shipped Unit:
      Assesses the average cost incurred by a business for shipping each unit of product to customers. It encompasses various expenses associated with the transportation and delivery of goods

      <br>
      <br>




      Order Cycle Time:
      The average duration it takes for a business to process and fulfill a customer order, from the point of order placement to the moment of delivery. A shorter Order Cycle Time generally indicates a more responsive and agile supply chain.
      <br>
      <br>
      Average Lead Time:
      Measures the average time it takes for an order to be fulfilled from the moment it's placed until it's received.
      </div>
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
    height: 11
  - title: Store Inventory KPI
    name: Store Inventory KPI
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.inventory_health_index, inventory.dsi, inventory.stocks_cover,
      order.stocks_to_sales_ration]
    filters:
      inventory.procurement_type: Stores
      order.status: ''
    sorts: [inventory.inventory_health_index]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '14'
    orientation: auto
    style_inventory.inventory_health_index: "#1A73E8"
    show_title_inventory.inventory_health_index: true
    title_placement_inventory.inventory_health_index: below
    value_format_inventory.inventory_health_index: ''
    style_inventory.stocks_cover: "#A8A116"
    show_title_inventory.stocks_cover: true
    title_placement_inventory.stocks_cover: below
    value_format_inventory.stocks_cover: ''
    show_comparison_inventory.stocks_cover: false
    style_inventory.dsi: "#F9AB00"
    show_title_inventory.dsi: true
    title_override_inventory.dsi: Days Sales of Inventory
    title_placement_inventory.dsi: below
    value_format_inventory.dsi: ''
    show_comparison_inventory.dsi: false
    style_order.stocks_to_sales_ration: "#3A4245"
    show_title_order.stocks_to_sales_ration: true
    title_override_order.stocks_to_sales_ration: Stocks to Sales Ratio
    title_placement_order.stocks_to_sales_ration: above
    value_format_order.stocks_to_sales_ration: ''
    show_comparison_order.stocks_to_sales_ration: false
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      Inventory Health Index:
      Assesses the health of your inventory by quantifying the proportion of slow-moving or stagnant inventory.

      <br>
      <br>

      Stocks Cover (Days of Supply):
      Indicates the number of days your current inventory will last based on your average daily usage. Helps in managing stockouts and overstock situations.

      <br>
      <br>



      Days Sales of Inventory (DSI):
      Indicates how long it takes to sell the average inventory on hand.

      <br>
      <br>

      Stocks to Sales Ratio:
      stock to sales ratio, compares the average inventory value to the average sales value and is one measure of a company's inventory level health.
      </div>
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
    height: 11
  - title: DC inventory KPI
    name: DC inventory KPI
    model: google-scm-demo
    explore: inventory
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [inventory.inventory_turnover, inventory.dsi, inventory.inventory_health_index,
      inventory.inventory_accuracy]
    filters:
      inventory.procurement_type: DC
      order.status: Completed
    sorts: [inventory.inventory_turnover desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '14'
    orientation: auto
    style_inventory.inventory_health_index: "#7CB342"
    show_title_inventory.inventory_health_index: true
    title_placement_inventory.inventory_health_index: below
    value_format_inventory.inventory_health_index: ''
    style_inventory.inventory_accuracy: "#079c98"
    show_title_inventory.inventory_accuracy: true
    title_placement_inventory.inventory_accuracy: below
    value_format_inventory.inventory_accuracy: ''
    show_comparison_inventory.inventory_accuracy: false
    style_inventory.inventory_turnover: "#3A4245"
    show_title_inventory.inventory_turnover: true
    title_placement_inventory.inventory_turnover: below
    value_format_inventory.inventory_turnover: ''
    show_comparison_inventory.inventory_turnover: false
    style_inventory.dsi: "#1A73E8"
    show_title_inventory.dsi: true
    title_override_inventory.dsi: Days Sales of Inventory
    title_placement_inventory.dsi: below
    value_format_inventory.dsi: ''
    show_comparison_inventory.dsi: false
    style_inventory.total_inventory_quantity: "#079c98"
    show_title_inventory.total_inventory_quantity: true
    title_override_inventory.total_inventory_quantity: Total Stocks -  DC
    title_placement_inventory.total_inventory_quantity: below
    value_format_inventory.total_inventory_quantity: ''
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      Inventory Health Index:
      Assesses the health of your inventory by quantifying the proportion of slow-moving or stagnant inventory.

      <br>
      <br>

      Inventory Accuracy:
      Measures the accuracy of recorded inventory levels compared to physical counts.

      <br>
      <br>

      Inventory Turn Over:
      Measures how efficiently inventory is being managed. A higher turnover ratio indicates better inventory optimization.

      <br>
      <br>

      Days Sales of Inventory:
      Indicates how long it takes to sell the average inventory on hand.
      </div>
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
    height: 11
  - name: Stock Level Summary (At Rest)
    type: text
    title_text: Stock Level Summary (At Rest)
    subtitle_text: What's our overall stock positioning accross facilities?
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Inventory Flow"}],"id":1698220667387,"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Daily inventory movement at DC
    name: Daily inventory movement at DC
    model: google-scm-demo
    explore: inventory
    type: looker_grid
    fields: [forecast.forecast_date, forecast.projected_inventory, forecast.total_forecast_quantity,
      forecast.valuation_table, forecast.total_requested_quantity_po]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      forecast.projected_inventory:
        is_active: true
      forecast.total_forecast_quantity:
        is_active: true
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
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      Shows Day level view of Projected sales, Projected Inventory, Valuation and Incoming arrivals.
      </div>
    listen:
      Location Type: location.location_type
    row: 43
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
    row: 30
    col: 0
    width: 4
    height: 6
  - name: Lead Time (2 week window)
    type: text
    title_text: Lead Time (2 week window)
    subtitle_text: ''
    body_text: ''
    row: 29
    col: 0
    width: 24
    height: 1
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
    row: 30
    col: 10
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
    row: 30
    col: 20
    width: 4
    height: 6
  - title: Supplier Inventory
    name: Supplier Inventory
    model: google-scm-demo
    explore: inventory
    type: looker_bar
    fields: [inventory.inventory_status, inventory.count_inventory]
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
    y_axes: [{label: Inventory, orientation: bottom, series: [{axisId: inventory.count_inventory,
            id: At-Stock - inventory.count_inventory, name: At-Stock}, {axisId: inventory.count_inventory,
            id: Out-of-Stock - inventory.count_inventory, name: Out-of-Stock}, {axisId: inventory.count_inventory,
            id: Over-Stock - inventory.count_inventory, name: Over-Stock}, {axisId: inventory.count_inventory,
            id: Under-Stock - inventory.count_inventory, name: Under-Stock}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Stocks
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Over-Stock - inventory.count: "#F9AB00"
      At-Stock - inventory.count: "#12B5CB"
      Under-Stock - inventory.count: "#E8710A"
      Out-of-Stock - inventory.count: "#EA4335"
      Over-Stock - inventory.count_inventory: "#F9AB00"
      At-Stock - inventory.count_inventory: "#12B5CB"
      Under-Stock - inventory.count_inventory: "#E8710A"
      Out-of-Stock - inventory.count_inventory: "#EA4335"
    hidden_pivots: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      <p>Supplier Inventory helps us monitor product stock levels at Supplier Level to ensure efficient inventory management.This helps us to quickly identify and address stock imbalances to optimize inventory levels and meet customer demands. It has four segments, categorized on basis of Safety Stocks defined for each product: </p>

      <li>Over-Stock: Products with quantities exceeding safety stock levels by more than 50%.</li>
      <li>At-Stock: Products with quantities within safety stock levels.</li>
      <li>Under-Stock: Products with quantities below safety stock levels.</li>
      <li>Out-of-Stock: Products with no stock on hand.</li>
      </div>
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 12
    col: 0
    width: 8
    height: 6
  - title: 'DC Inventory '
    name: 'DC Inventory '
    model: google-scm-demo
    explore: inventory
    type: looker_bar
    fields: [inventory.inventory_status, inventory.count_inventory]
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
    y_axes: [{label: Inventory, orientation: bottom, series: [{axisId: inventory.count_inventory,
            id: At-Stock - inventory.count_inventory, name: At-Stock}, {axisId: inventory.count_inventory,
            id: Out-of-Stock - inventory.count_inventory, name: Out-of-Stock}, {axisId: inventory.count_inventory,
            id: Over-Stock - inventory.count_inventory, name: Over-Stock}, {axisId: inventory.count_inventory,
            id: Under-Stock - inventory.count_inventory, name: Under-Stock}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Stocks
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Over-Stock - inventory.count: "#F9AB00"
      At-Stock - inventory.count: "#12B5CB"
      Under-Stock - inventory.count: "#E8710A"
      Out-of-Stock - inventory.count: "#EA4335"
      Over-Stock - inventory.count_inventory: "#F9AB00"
      Out-of-Stock - inventory.count_inventory: "#EA4335"
      At-Stock - inventory.count_inventory: "#12B5CB"
    hidden_pivots: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      <p>DC Inventory helps us monitor product stock levels at various DCs to ensure efficient inventory management. This helps us to quickly identify and address stock imbalances to optimize inventory levels and meet customer demands. It has four segments, categorized on basis of Safety Stocks defined for each product:</p>

      <li>Over-Stock: Products with quantities exceeding safety stock levels by more than 50%.</li>
      <li>At-Stock: Products with quantities within safety stock levels.</li>
      <li>Under-Stock: Products with quantities below safety stock levels.</li>
      <li>Out-of-Stock: Products with no stock on hand.</li>
      </div>
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 12
    col: 8
    width: 8
    height: 6
  - title: 'Stores Inventory  '
    name: 'Stores Inventory  '
    model: google-scm-demo
    explore: inventory
    type: looker_bar
    fields: [inventory.inventory_status, inventory.count_inventory]
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
    y_axes: [{label: Inventory, orientation: bottom, series: [{axisId: inventory.count_inventory,
            id: At-Stock - inventory.count_inventory, name: At-Stock}, {axisId: inventory.count_inventory,
            id: Out-of-Stock - inventory.count_inventory, name: Out-of-Stock}, {axisId: inventory.count_inventory,
            id: Over-Stock - inventory.count_inventory, name: Over-Stock}, {axisId: inventory.count_inventory,
            id: Under-Stock - inventory.count_inventory, name: Under-Stock}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Stocks
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Over-Stock - inventory.count: "#F9AB00"
      At-Stock - inventory.count: "#12B5CB"
      Under-Stock - inventory.count: "#E8710A"
      Out-of-Stock - inventory.count: "#EA4335"
      At-Stock - inventory.count_inventory: "#12B5CB"
      Out-of-Stock - inventory.count_inventory: "#EA4335"
      Over-Stock - inventory.count_inventory: "#F9AB00"
    hidden_pivots: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      <p>Stores Inventory helps us monitor product stock levels at various Stores to ensure efficient inventory management. This helps us to quickly identify and address stock imbalances to optimize inventory levels and meet customer demands. It has four segments, categorized on basis of Safety Stocks defined for each product: </p>

      <li>Over-Stock: Products with quantities exceeding safety stock levels by more than 50%.</li>
      <li>At-Stock: Products with quantities within safety stock levels.</li>
      <li>Under-Stock: Products with quantities below safety stock levels.</li>
      <li>Out-of-Stock: Products with no stock on hand.</li>
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 12
    col: 16
    width: 8
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">

      <p>Total Stock Units - refers to the overall quantity or sum of available products or items at Supplier level</p>

      <p>Inventory Cost - the expenses associated with acquiring, storing, and managing goods within a supply chain at Supplier level </p>

      </div>
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: left;">
      Sell Value in Supplier Inventory refers to the monetary worth assigned to products or goods available for sale, representing the potential revenue generated upon their sale
      </div>
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      <p>Inventory cost, in the context of DC (Distribution Center), refers to the total expenses associated with acquiring, storing, and managing goods within the distribution facility.</p>

      <p>Total Quantity, in the context of DC (Distribution Center) Inventory, refers to the overall sum or aggregate quantity of goods or products available in the warehouse at a given point in time. </p>
      </div>
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 2
    col: 10
    width: 4
    height: 6
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: left;">
      Sell Value in DC (Distribution Center) Inventory refers to the monetary worth assigned to goods available for sale, reflecting their market value or predetermined pricing
      </div>
    listen:
      Location Type: location.location_type
    row: 8
    col: 10
    width: 4
    height: 2
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: left;">
      Sell value in store inventory refers to the total monetary worth of products available for sale, reflecting their market value or retail price.
      </div>
    listen:
      Location Type: location.location_type
    row: 8
    col: 20
    width: 4
    height: 2
  - title: Store Inventory
    name: Store Inventory (2)
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
    note_state: collapsed
    note_display: hover
    note_text: |
      <div style="text-align: justify;">
      <p>Inventory cost refers to the total expenses incurred in acquiring, storing, and managing goods within a store's inventory, encompassing purchase costs, storage expenses, and associated carrying costs.</p>

      <p> Total Quantity refers to the overall sum or aggregate amount of a specific item or product stocked in a store's inventory at a given point in time.</p>
      </div>
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 2
    col: 20
    width: 4
    height: 6
  - title: Supplier Locations with highest inventory
    name: Supplier Locations with highest inventory
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      <p>Supplier Locations features a bar chart  that showcases the top 10 cities having Suppliers with the most significant inventory quantities. The visualization provides a clear overview of the cities that are leading in terms of inventory holdings on a Supplier Level. </p>

      <p>It's a valuable tool for understanding the geographical distribution of your inventory and identifying cities where stock levels are particularly high.</p>
      </div>
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 61
    col: 0
    width: 8
    height: 6
  - title: Store Locations with highest inventory
    name: Store Locations with highest inventory
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      <p>Stores Locations features a bar chart  that showcases the top 10 cities having stores with the most significant inventory quantities. The visualization provides a clear overview of the cities that are leading in terms of inventory holdings. </p>

      <p>It's a valuable tool for understanding the geographical distribution of your inventory and identifying cities where stock levels are particularly high.</p>
      </div>
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 61
    col: 16
    width: 8
    height: 6
  - title: DC Locations with highest inventory
    name: DC Locations with highest inventory
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      <p>DC Locations features a bar chart  that showcases the top 10 cities having Distribution Centres with the most significant inventory quantities. The visualization provides a clear overview of the cities that are leading in terms of inventory holdings at various DCs. </p>

      <p>It's a valuable tool for understanding the geographical distribution of your inventory across the DCs and identifying cities where stock levels are particularly high.</p>
      </diiv>
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 61
    col: 8
    width: 8
    height: 6
  - title: Needed Products (Supplier)
    name: Needed Products (Supplier)
    model: google-scm-demo
    explore: inventory
    type: looker_grid
    fields: [inventory.product_uid, inventory.Alert, inventory.total_inventory_quantity_in_number,
      product.product_type, product.product_description]
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
    column_order: ["$$$_row_numbers_$$$", inventory.product_uid, product.product_type,
      product.product_description, inventory.Alert, inventory.total_inventory_quantity_in_number]
    note_state: collapsed
    note_display: hover
    note_text: "<div style=\"text-align: justify;\">\nNeeded Products (Supplier) is\
      \ designed to provide immediate visibility into products at Supplier Level that\
      \ are in urgent need of restocking. It's a crucial tool for inventory management,\
      \ ensuring that you can prevent stockouts and maintain a high level of customer\
      \ satisfaction. \n</div>"
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 36
    col: 0
    width: 12
    height: 7
  - title: Needed Products (DC)
    name: Needed Products (DC)
    model: google-scm-demo
    explore: inventory
    type: looker_grid
    fields: [inventory.product_uid, inventory.Alert, inventory.total_inventory_quantity_in_number,
      product.product_type, product.product_description]
    filters:
      inventory.procurement_type: DC
      inventory.total_inventory_quantity_in_number: '0'
    sorts: [product.product_description]
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
    column_order: ["$$$_row_numbers_$$$", inventory.product_uid, product.product_type,
      inventory.Alert, product.product_description, inventory.total_inventory_quantity_in_number]
    note_state: collapsed
    note_display: hover
    note_text: "<div style=\"text-align: justify;\">\nNeeded Products (DC) is designed\
      \ to provide immediate visibility into products at DC Level that are in urgent\
      \ need of restocking. It's a crucial tool for inventory management, ensuring\
      \ that you can prevent stockouts and maintain a high level of customer satisfaction.\
      \ \n</div>"
    listen:
      Inventory Date: inventory.inventory_date
      Location Type: location.location_type
    row: 36
    col: 12
    width: 12
    height: 7
  - title: In Transit Store
    name: In Transit Store
    model: google-scm-demo
    explore: order
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [order.total_requested_quantity, product.total_product_cost]
    filters:
      order.order_category: Sales Order
      order.status: In Transit
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${product.total_product_cost}*${order.total_requested_quantity}"
      label: Inventory Cost
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: inventory_cost
      _type_hint: number
    hidden_fields: [product.total_product_cost]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '14'
    orientation: auto
    style_order.total_requested_quantity: "#1A73E8"
    show_title_order.total_requested_quantity: true
    title_override_order.total_requested_quantity: Total Stock Units
    title_placement_order.total_requested_quantity: below
    value_format_order.total_requested_quantity: ''
    style_inventory_cost: "#E52592"
    title_placement_inventory_cost: below
    value_format_inventory_cost: "$ 0,,, \\M"
    style_product.total_product_cost: "#E52592"
    show_title_product.total_product_cost: true
    title_override_product.total_product_cost: Inventory Cost
    title_placement_product.total_product_cost: below
    value_format_product.total_product_cost: ''
    show_comparison_product.total_product_cost: false
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      <p>Total Stock Units - refers to the overall quantity or sum of available products or items that are shipped to DC.</p>

      <p>Inventory Cost - the cost of the goods in transit.</p>
      </div>
    listen: {}
    row: 2
    col: 15
    width: 4
    height: 6
  - title: In Transit DC
    name: In Transit DC
    model: google-scm-demo
    explore: order
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [order.total_requested_quantity, product.total_product_cost]
    filters:
      order.order_category: Delivery Order
      order.status: In Transit
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${product.total_product_cost}*${order.total_requested_quantity}"
      label: Inventory Cost
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: inventory_cost
      _type_hint: number
    hidden_fields: [product.total_product_cost]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '14'
    orientation: auto
    style_order.total_requested_quantity: "#1A73E8"
    show_title_order.total_requested_quantity: true
    title_override_order.total_requested_quantity: Total Stock Units
    title_placement_order.total_requested_quantity: below
    value_format_order.total_requested_quantity: ''
    style_inventory_cost: "#E52592"
    title_placement_inventory_cost: below
    value_format_inventory_cost: "$ 0,,, \\M"
    style_product.total_product_cost: "#E52592"
    show_title_product.total_product_cost: true
    title_override_product.total_product_cost: Inventory Cost
    title_placement_product.total_product_cost: below
    value_format_product.total_product_cost: "$ 0, \\K"
    show_comparison_product.total_product_cost: false
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      <p>Total Stock Units - refers to the overall quantity or sum of available products or items that are shipped to Stores.</p>

      <p>Inventory Cost - the cost of the goods in transit.</p>
      </div>
    listen: {}
    row: 2
    col: 5
    width: 4
    height: 6
  - title: In Transit Store Sell Value
    name: In Transit Store Sell Value
    model: google-scm-demo
    explore: order
    type: single_value
    fields: [order.intransit_sell_value]
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: left;">
      Sell Value in In Transit Stores refers to the monetary worth assigned to products or goods available for sale, representing the potential revenue generated upon their sale
      </div>
    listen: {}
    row: 8
    col: 15
    width: 4
    height: 2
  - title: In Transit DC Sell Value
    name: In Transit DC Sell Value
    model: google-scm-demo
    explore: order
    type: single_value
    fields: [order.intransit_sell_value]
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: left;">
      Sell Value in In Transit DC refers to the monetary worth assigned to products or goods available for sale, representing the potential revenue generated upon their sale
      </div>
    listen: {}
    row: 8
    col: 5
    width: 4
    height: 2
  - title: In Transit DC Lead Time
    name: In Transit DC Lead Time
    model: google-scm-demo
    explore: order
    type: looker_line
    fields: [date.date_date, order.in_transit_lead_time]
    fill_fields: [date.date_date]
    filters:
      order.order_category: Delivery Order
      order.status: In Transit
      order.order_creation_date_date: 14 days
    sorts: [date.date_date desc]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '0'
    series_colors:
      order.in_transit_lead_time: "#9334E6"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      Lead Time, in the supply chain context, refers to the duration between the initiation of an order and the actual receipt of the ordered goods, encompassing the time required for processing, production, and transportation.
      </div>
    listen: {}
    row: 30
    col: 5
    width: 4
    height: 6
  - title: In Transit Stores Lead Time
    name: In Transit Stores Lead Time
    model: google-scm-demo
    explore: order
    type: looker_line
    fields: [date.date_date, order.in_transit_lead_time]
    fill_fields: [date.date_date]
    filters:
      order.order_category: Sales Order
      order.status: In Transit
      order.order_creation_date_date: 14 days
    sorts: [date.date_date desc]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '0'
    series_colors:
      order.in_transit_lead_time: "#9334E6"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: |-
      <div style="text-align: justify;">
      Lead Time, in the supply chain context, refers to the duration between the initiation of an order and the actual receipt of the ordered goods, encompassing the time required for processing, production, and transportation.
      </div>
    listen: {}
    row: 30
    col: 15
    width: 4
    height: 6
  - title: DC Inventory KPI
    name: DC Inventory KPI
    model: google-scm-demo
    explore: inventory
    type: looker_grid
    fields: [product.product_uid, product.product_description, inventory.total_inventory_quantity_in_number,
      total_returned_quantity, soft_served, out_of_stock]
    filters:
      inventory.procurement_type: DC
    sorts: [product.product_uid]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: coalesce(${total_returned_quantity}, 0)/coalesce(${inventory.total_inventory_quantity_in_number},
        0)
      label: Return Rate
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: return_rate
      _type_hint: number
    - category: dimension
      expression: "${inventory.inventory_quantity} <= 0"
      label: Out of Stock
      value_format:
      value_format_name:
      dimension: out_of_stock
      _kind_hint: dimension
      _type_hint: yesno
    - category: measure
      expression:
      label: Total Returned Quantity
      value_format:
      value_format_name:
      based_on: order.returned_quantity
      _kind_hint: measure
      measure: total_returned_quantity
      type: sum
      _type_hint: number
    - category: measure
      expression:
      label: Soft Served
      value_format:
      value_format_name:
      based_on: order.delivered_quantity
      _kind_hint: measure
      measure: soft_served
      type: sum
      _type_hint: number
      filters:
        order.order_category: Delivery Order
    - category: table_calculation
      expression: "${inventory.total_inventory_quantity_in_number}-${soft_served}"
      label: On Hand
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: on_hand
      _type_hint: number
    - category: table_calculation
      expression: abs((${soft_served}-${total_returned_quantity})/(${on_hand}+${soft_served}))
      label: Sell Rate
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: sell_rate
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", product.product_uid, product.product_description,
      inventory.total_inventory_quantity_in_number, soft_served, on_hand, total_returned_quantity,
      return_rate, sell_rate, out_of_stock]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      inventory.total_inventory_quantity: Physically Available
      inventory.total_inventory_quantity_in_number: Physically Available
      total_returned_quantity: Returned
      product.product_description: Product Name
      out_of_stock: Out of Stock
    series_column_widths:
      product.product_description: 927
      inventory.total_inventory_quantity_in_number: 111
    series_cell_visualizations:
      inventory.total_inventory_quantity:
        is_active: true
      total_returned_quantity:
        is_active: false
        value_display: true
      inventory.total_inventory_quantity_in_number:
        is_active: false
      sell_rate:
        is_active: false
    series_text_format:
      out_of_stock: {}
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#81BE56",
        font_color: !!null '', color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          palette_id: e26878fa-802e-47d9-9478-62fb4307f763, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [sell_rate]}, {type: along a scale..., value: !!null '',
        background_color: "#81BE56", font_color: !!null '', color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          custom: {id: 3de49d00-ba28-08e3-1dd0-6f349b413a79, label: Custom, type: continuous,
            stops: [{color: "#FFFFFF", offset: 0}, {color: "#E52592", offset: 100}]},
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: true, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [return_rate]}]
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: "<h4>Physcially Available</h4> \n<p>The value is the sum of all units\
      \ that are physically available in the warehouse. It includes items that are\
      \ \"soft reserved.\" The value of this KPI is updated whenever inventory data\
      \ is uploaded into the system. When items are shipped out of warehouses, the\
      \ number of those items is deducted from the KPI value.</p>\n<p>--------------------------------------------------</p>\n\
      \n<h4>Soft Served</h4>\n<p>When items are soft reserved, the number of those\
      \ items is added to the value of this KPI, to ensure that the same items aren't\
      \ double booked against two different orders. After soft-reserved items are\
      \ shipped, the number of those items is deducted from the KPI value.</p> \n\
      <p>--------------------------------------------------</p>\n\n<h4>On Hand</h4>\
      \ \n<p>When a fulfillment optimization runs, the Onhand inventory KPI value\
      \ is the inventory value that is considered.</p>\n<p>--------------------------------------------------</p>\n\
      \n<h4>Returned</h4>\n<p>The value is the number of product units that have been\
      \ returned to the warehouse after they were sold to customers.</p>\n<p>--------------------------------------------------</p>\n\
      \n<h4>Return Rate</h4>\n<p>The value is the return rate of product units that\
      \ have been returned to the warehouse after they were sold to customers.</p>\n\
      <p>--------------------------------------------------</p>\n\n<h4>Sell Rate</h4>\n\
      <p>The value is the rate at which items are sold to customers.</p>\n<p>--------------------------------------------------</p>\n\
      \n<h4>Out of Stock</h4>\n<p>The value is the number of units of products that\
      \ must be replenished to fulfill demand.</p>\n<p>--------------------------------------------------</p>"
    listen:
      Inventory Date: inventory.inventory_date
    row: 67
    col: 0
    width: 24
    height: 9
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
    default_value: ''
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
