---
- dashboard: inventory_simulation
  title: Inventory Simulation
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: TDFsGFkmHYaC1A7hY6esl5
  elements:
  - title: Inventory Simulation for Periodic Review (R) and Order Up-to Level (S)
      Policy
    name: Inventory Simulation for Periodic Review (R) and Order Up-to Level (S) Policy
    model: google-scm-demo
    explore: inventory_simulation
    type: looker_line
    fields: [inventory_simulation.time, inventory_simulation.On_hand, inventory_simulation.S,
      inventory_simulation.Safety_stock, inventory_simulation.safety_cycle_stock]
    filters:
      inventory_simulation.alpha: ''
    sorts: [inventory_simulation.time]
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
    y_axes: [{label: Inventory Level, orientation: left, series: [{axisId: inventory_simulation.On_hand,
            id: inventory_simulation.On_hand, name: On Hand}, {axisId: inventory_simulation.S,
            id: inventory_simulation.S, name: Up to level S}, {axisId: inventory_simulation.Safety_stock,
            id: inventory_simulation.Safety_stock, name: Safety Stock}, {axisId: inventory_simulation.safety_cycle_stock,
            id: inventory_simulation.safety_cycle_stock, name: Safety Cycle Stock}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Week
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      inventory_simulation.S: Up to level S
    reference_lines: []
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
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
    note_state: collapsed
    note_display: hover
    note_text: |-
      <html>
      <style>
      table, th, td {
        border:1px solid black;
      }
      </style>
      <body>

      <h2>Inventory Thresholds</h2>

      <table style="width:105%">
        <tr>
          <th><b>Status</th>
          <th><b>On-hand Inventory Level</th>
        </tr>
        <tr>
          <td>Shortage</td>
          <td>l ≤ 0</td>
        </tr>
        <tr>
          <td>Under-Stock</td>
          <td>0 < l < Ss </td>
        </tr>
        <tr>
          <td>Perfect</td>
          <td>Ss ≤ l ≤ Cs +Ss </td>
        </tr>
        <tr>
          <td>Over-Stock</td>
          <td> Cs + Ss < l ≤ Cs +Ss +Is </td>
        </tr>
        <tr>
          <td>Excess</td>
          <td>Cs + Ss + Is < l </td>
        </tr>
      </table>
      </body>
      </html>
    listen:
      Product Uid: inventory_simulation.product_uid
      Location Uid: inventory_simulation.location_uid
      Service Level %: inventory_simulation.service_level
    row: 6
    col: 4
    width: 20
    height: 10
  - title: Cycle Stock
    name: Cycle Stock
    model: google-scm-demo
    explore: inventory_simulation
    type: marketplace_viz_liquid_fill_gauge::liquid_fill_gauge-marketplace
    fields: [inventory_simulation.cycle_stock]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    showComparison: false
    minValue: 0
    maxValue: 5000
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: false
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
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
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: |-
      <html>
      <style>
      table, th, td {
        border:1px solid black;
      }
      </style>
      <body>

      <h2>Inventory Thresholds</h2>

      <table style="width:105%">
        <tr>
          <th><b>Status</th>
          <th><b>On-hand Inventory Level</th>
        </tr>
        <tr>
          <td>Shortage</td>
          <td>l ≤ 0</td>
        </tr>
        <tr>
          <td>Under-Stock</td>
          <td>0 < l < Ss </td>
        </tr>
        <tr>
          <td>Perfect</td>
          <td>Ss ≤ l ≤ Cs +Ss </td>
        </tr>
        <tr>
          <td>Over-Stock</td>
          <td> Cs + Ss < l ≤ Cs +Ss +Is </td>
        </tr>
        <tr>
          <td>Excess</td>
          <td>Cs + Ss + Is < l </td>
        </tr>
      </table>
      </body>
      </html>
    listen:
      Product Uid: inventory_simulation.product_uid
      Location Uid: inventory_simulation.location_uid
      Week: inventory_simulation.time_dimension
      Service Level %: inventory_simulation.service_level
    row: 0
    col: 8
    width: 4
    height: 6
  - title: Safety Stock
    name: Safety Stock
    model: google-scm-demo
    explore: inventory_simulation
    type: marketplace_viz_liquid_fill_gauge::liquid_fill_gauge-marketplace
    fields: [inventory_simulation.Safety_stock]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    showComparison: false
    minValue: 0
    maxValue: 5000
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: false
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
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
      <html>
      <style>
      table, th, td {
        border:1px solid black;
      }
      </style>
      <body>

      <h2>Inventory Thresholds</h2>

      <table style="width:105%">
        <tr>
          <th><b>Status</th>
          <th><b>On-hand Inventory Level</th>
        </tr>
        <tr>
          <td>Shortage</td>
          <td>l ≤ 0</td>
        </tr>
        <tr>
          <td>Under-Stock</td>
          <td>0 < l < Ss </td>
        </tr>
        <tr>
          <td>Perfect</td>
          <td>Ss ≤ l ≤ Cs +Ss </td>
        </tr>
        <tr>
          <td>Over-Stock</td>
          <td> Cs + Ss < l ≤ Cs +Ss +Is </td>
        </tr>
        <tr>
          <td>Excess</td>
          <td>Cs + Ss + Is < l </td>
        </tr>
      </table>
      </body>
      </html>
    listen:
      Product Uid: inventory_simulation.product_uid
      Location Uid: inventory_simulation.location_uid
      Week: inventory_simulation.time_dimension
      Service Level %: inventory_simulation.service_level
    row: 0
    col: 4
    width: 4
    height: 6
  - title: Cycle Stock (Copy)
    name: Cycle Stock (Copy)
    model: google-scm-demo
    explore: inventory_simulation
    type: looker_google_map
    fields: [location.city, location.location, inventory_simulation.Safety_stock,
      inventory_simulation.safety_cycle_stock, inventory_simulation.On_hand, inventory_simulation.inventory_value,
      inventory_simulation.cycle_stock]
    sorts: [inventory_simulation.Safety_stock desc 0]
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
    map_position: custom
    map_zoom: 1.5
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
    showComparison: false
    minValue: 0
    maxValue: 5000
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: false
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
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
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: |-
      <html>
      <style>
      table, th, td {
        border:1px solid black;
      }
      </style>
      <body>

      <h2>Inventory Thresholds</h2>

      <table style="width:105%">
        <tr>
          <th><b>Status</th>
          <th><b>On-hand Inventory Level</th>
        </tr>
        <tr>
          <td>Shortage</td>
          <td>l ≤ 0</td>
        </tr>
        <tr>
          <td>Under-Stock</td>
          <td>0 < l < Ss </td>
        </tr>
        <tr>
          <td>Perfect</td>
          <td>Ss ≤ l ≤ Cs +Ss </td>
        </tr>
        <tr>
          <td>Over-Stock</td>
          <td> Cs + Ss < l ≤ Cs +Ss +Is </td>
        </tr>
        <tr>
          <td>Excess</td>
          <td>Cs + Ss + Is < l </td>
        </tr>
      </table>
      </body>
      </html>
    title_hidden: true
    listen:
      Product Uid: inventory_simulation.product_uid
      Location Uid: inventory_simulation.location_uid
      Week: inventory_simulation.time_dimension
      Service Level %: inventory_simulation.service_level
    row: 0
    col: 16
    width: 8
    height: 6
  - title: On Hand
    name: On Hand
    model: google-scm-demo
    explore: inventory_simulation
    type: marketplace_viz_liquid_fill_gauge::liquid_fill_gauge-marketplace
    fields: [inventory_simulation.On_hand]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    showComparison: false
    minValue: 0
    maxValue: 5000
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: false
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
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
      <html>
      <style>
      table, th, td {
        border:1px solid black;
      }
      </style>
      <body>

      <h2>Inventory Thresholds</h2>

      <table style="width:105%">
        <tr>
          <th><b>Status</th>
          <th><b>On-hand Inventory Level</th>
        </tr>
        <tr>
          <td>Shortage</td>
          <td>l ≤ 0</td>
        </tr>
        <tr>
          <td>Under-Stock</td>
          <td>0 < l < Ss </td>
        </tr>
        <tr>
          <td>Perfect</td>
          <td>Ss ≤ l ≤ Cs +Ss </td>
        </tr>
        <tr>
          <td>Over-Stock</td>
          <td> Cs + Ss < l ≤ Cs +Ss +Is </td>
        </tr>
        <tr>
          <td>Excess</td>
          <td>Cs + Ss + Is < l </td>
        </tr>
      </table>
      </body>
      </html>
    listen:
      Product Uid: inventory_simulation.product_uid
      Location Uid: inventory_simulation.location_uid
      Week: inventory_simulation.time_dimension
      Service Level %: inventory_simulation.service_level
    row: 0
    col: 12
    width: 4
    height: 6
  - title: In Transit Stock
    name: In Transit Stock
    model: google-scm-demo
    explore: inventory_simulation
    type: marketplace_viz_liquid_fill_gauge::liquid_fill_gauge-marketplace
    fields: [inventory_simulation.Ls]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    showComparison: false
    minValue: 0
    maxValue: 5000
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: false
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
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
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: |-
      <html>
      <style>
      table, th, td {
        border:1px solid black;
      }
      </style>
      <body>

      <h2>Inventory Thresholds</h2>

      <table style="width:105%">
        <tr>
          <th><b>Status</th>
          <th><b>On-hand Inventory Level</th>
        </tr>
        <tr>
          <td>Shortage</td>
          <td>l ≤ 0</td>
        </tr>
        <tr>
          <td>Under-Stock</td>
          <td>0 < l < Ss </td>
        </tr>
        <tr>
          <td>Perfect</td>
          <td>Ss ≤ l ≤ Cs +Ss </td>
        </tr>
        <tr>
          <td>Over-Stock</td>
          <td> Cs + Ss < l ≤ Cs +Ss +Is </td>
        </tr>
        <tr>
          <td>Excess</td>
          <td>Cs + Ss + Is < l </td>
        </tr>
      </table>
      </body>
      </html>
    listen:
      Product Uid: inventory_simulation.product_uid
      Location Uid: inventory_simulation.location_uid
      Week: inventory_simulation.time_dimension
      Service Level %: inventory_simulation.service_level
    row: 0
    col: 0
    width: 4
    height: 6
  - title: Inventory Cost
    name: Inventory Cost
    model: google-scm-demo
    explore: inventory_simulation
    type: marketplace_viz_liquid_fill_gauge::liquid_fill_gauge-marketplace
    fields: [store_level_cost2.total_inventory_cost]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 999750
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1801
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: false
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
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
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: |-
      <html>
      <style>
      table, th, td {
        border:1px solid black;
      }
      </style>
      <body>

      <h2>Inventory Thresholds</h2>

      <table style="width:105%">
        <tr>
          <th><b>Status</th>
          <th><b>On-hand Inventory Level</th>
        </tr>
        <tr>
          <td>Shortage</td>
          <td>l ≤ 0</td>
        </tr>
        <tr>
          <td>Under-Stock</td>
          <td>0 < l < Ss </td>
        </tr>
        <tr>
          <td>Perfect</td>
          <td>Ss ≤ l ≤ Cs +Ss </td>
        </tr>
        <tr>
          <td>Over-Stock</td>
          <td> Cs + Ss < l ≤ Cs +Ss +Is </td>
        </tr>
        <tr>
          <td>Excess</td>
          <td>Cs + Ss + Is < l </td>
        </tr>
      </table>
      </body>
      </html>
    listen:
      Service Level %: inventory_simulation.service_level
      Product Uid: inventory_simulation.product_uid
      Location Uid: inventory_simulation.location_uid
      Week: inventory_simulation.time_dimension
    row: 6
    col: 0
    width: 4
    height: 5
  - title: Fill Rate
    name: Fill Rate
    model: google-scm-demo
    explore: inventory_simulation
    type: marketplace_viz_liquid_fill_gauge::liquid_fill_gauge-marketplace
    fields: [store_level_cost2.total_fill_rate]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 999750
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1801
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: false
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
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
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: |-
      <html>
      <style>
      table, th, td {
        border:1px solid black;
      }
      </style>
      <body>

      <h2>Inventory Thresholds</h2>

      <table style="width:105%">
        <tr>
          <th><b>Status</th>
          <th><b>On-hand Inventory Level</th>
        </tr>
        <tr>
          <td>Shortage</td>
          <td>l ≤ 0</td>
        </tr>
        <tr>
          <td>Under-Stock</td>
          <td>0 < l < Ss </td>
        </tr>
        <tr>
          <td>Perfect</td>
          <td>Ss ≤ l ≤ Cs +Ss </td>
        </tr>
        <tr>
          <td>Over-Stock</td>
          <td> Cs + Ss < l ≤ Cs +Ss +Is </td>
        </tr>
        <tr>
          <td>Excess</td>
          <td>Cs + Ss + Is < l </td>
        </tr>
      </table>
      </body>
      </html>
    listen:
      Service Level %: inventory_simulation.service_level
      Product Uid: inventory_simulation.product_uid
      Location Uid: inventory_simulation.location_uid
      Week: inventory_simulation.time_dimension
    row: 11
    col: 0
    width: 4
    height: 5
  filters:
  - name: Service Level %
    title: Service Level %
    type: field_filter
    default_value: '87'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: google-scm-demo
    explore: inventory_simulation
    listens_to_filters: []
    field: inventory_simulation.service_level
  - name: Product Uid
    title: Product Uid
    type: field_filter
    default_value: P3394
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: google-scm-demo
    explore: inventory_simulation
    listens_to_filters: [Location Uid]
    field: inventory_simulation.product_uid
  - name: Location Uid
    title: Location Uid
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: google-scm-demo
    explore: inventory_simulation
    listens_to_filters: [Product Uid]
    field: inventory_simulation.location_uid
  - name: Week
    title: Week
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: google-scm-demo
    explore: inventory_simulation
    listens_to_filters: []
    field: inventory_simulation.time_dimension
