cmake_minimum_required(VERSION 3.8)
project(plansys2_problem5)

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(rclcpp_action REQUIRED)
find_package(plansys2_msgs REQUIRED)
find_package(plansys2_executor REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)

set(CMAKE_CXX_STANDARD 17)

set(dependencies
    rclcpp
    rclcpp_action
    plansys2_msgs
    plansys2_executor
)

add_executable(move_robot_action_node src/move_robot_action_node.cpp)
ament_target_dependencies(move_robot_action_node ${dependencies})
# Mostafa Part START
## load_box_action_node
add_executable(load_box_action_node src/load_box_action_node.cpp)
ament_target_dependencies(load_box_action_node ${dependencies})
## unload_box_action_node
add_executable(unload_box_action_node src/unload_box_action_node.cpp)
ament_target_dependencies(unload_box_action_node ${dependencies})
## pick_up_item_from_location_action_node
add_executable(pick_up_item_from_location_action_node src/pick_up_item_from_location_action_node.cpp)
ament_target_dependencies(pick_up_item_from_location_action_node ${dependencies})
## put_item_in_box_action_node
add_executable(put_item_in_box_action_node src/put_item_in_box_action_node.cpp)
ament_target_dependencies(put_item_in_box_action_node ${dependencies})
# Mostafa Part END

# add_executable(charge_action_node src/charge_action_node.cpp)
# ament_target_dependencies(charge_action_node ${dependencies})

# add_executable(ask_charge_action_node src/ask_charge_action_node.cpp)
# ament_target_dependencies(ask_charge_action_node ${dependencies})


install(DIRECTORY launch pddl DESTINATION share/${PROJECT_NAME})

install(TARGETS
  move_robot_action_node
  #charge_action_node
  #ask_charge_action_node
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION lib/${PROJECT_NAME}
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
