  plugins:
    - {name: static,                  type: "costmap_2d::StaticLayer"}
    - {name: obstacles,               type: "costmap_2d::ObstacleLayer"}
    - {name: inflation,               type: "costmap_2d::InflationLayer"}

  static:
    map_topic: /map
    subscribe_to_updates: true

  obstacles:
    observation_sources: laser
    laser: {sensor_frame: laser, data_type: LaserScan, topic: /scan, marking: true, clearing: true}

  inflation:
    inflation_radius: 0.5
    cost_scaling_factor: 10.0
