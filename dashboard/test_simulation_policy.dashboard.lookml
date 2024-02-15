---
- dashboard: test_simulation_policy
  title: Test Simulation Policy
  layout: newspaper
  preferred_viewer: dashboards-next
  preferred_slug: C2AvnZHWpFGVhxIvv5kF3X
  elements:
  - title: Test Simulation Policy
    name: Test Simulation Policy
    model: google-scm-demo
    explore: rs_q_policy_prod
    type: looker_line
    fields: [rs_q_policy_prod.time, rs_q_policy_prod.demand_, rs_q_policy_prod.stock_on_hand_,
      rs_q_policy_prod.reorder_point_, rs_q_policy_prod.safety_stock_]
    sorts: [rs_q_policy_prod.demand_ desc 0]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 12
