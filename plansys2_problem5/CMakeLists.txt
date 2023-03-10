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
#action2
add_executable(move_robot_action_node2 src/move_robot_action_node.cpp)
ament_target_dependencies(move_robot_action_node2 ${dependencies})


# Mostafa Part START
## load_box_action_node
add_executable(load_box_action_node src/load_box_action_node.cpp)
ament_target_dependencies(load_box_action_node ${dependencies})
# action2
add_executable(load_box_action_node2 src/load_box_action_node.cpp)
ament_target_dependencies(load_box_action_node2 ${dependencies})
###########################################
## unload_box_action_node
add_executable(unload_box_action_node src/unload_box_action_node.cpp)
ament_target_dependencies(unload_box_action_node ${dependencies})
#action2
add_executable(unload_box_action_node2 src/unload_box_action_node.cpp)
ament_target_dependencies(unload_box_action_node2 ${dependencies})
###########################################
## pick_up_item_from_location_action_node
add_executable(pick_up_item_from_location_action_node src/pick_up_item_from_location_action_node.cpp)
ament_target_dependencies(pick_up_item_from_location_action_node ${dependencies})
# action2
add_executable(pick_up_item_from_location_action_node2 src/pick_up_item_from_location_action_node.cpp)
ament_target_dependencies(pick_up_item_from_location_action_node2 ${dependencies})
#############################
## put_item_in_box_action_node
add_executable(put_item_in_box_action_node src/put_item_in_box_action_node.cpp)
ament_target_dependencies(put_item_in_box_action_node ${dependencies})
# action 2
add_executable(put_item_in_box_action_node2 src/put_item_in_box_action_node.cpp)
ament_target_dependencies(put_item_in_box_action_node2 ${dependencies})
# Mostafa Part END
#pick_item_from_box_action_node
add_executable(pick_item_from_box_action_node src/pick_item_from_box_action_node.cpp)
ament_target_dependencies(pick_item_from_box_action_node ${dependencies})
#action2
add_executable(pick_item_from_box_action_node2 src/pick_item_from_box_action_node.cpp)
ament_target_dependencies(pick_item_from_box_action_node2 ${dependencies})
#########
# pickdown_food_action_node
add_executable(pickdown_food_action_node src/pickdown_food_action_node.cpp)
ament_target_dependencies(pickdown_food_action_node ${dependencies})
# action2
add_executable(pickdown_food_action_node2 src/pickdown_food_action_node.cpp)
ament_target_dependencies(pickdown_food_action_node2 ${dependencies})
##########
# pickdown_medicine_action_node
add_executable(pickdown_medicine_action_node src/pickdown_medicine_action_node.cpp)
ament_target_dependencies(pickdown_medicine_action_node ${dependencies})
# action2
add_executable(pickdown_medicine_action_node2 src/pickdown_medicine_action_node.cpp)
ament_target_dependencies(pickdown_medicine_action_node2 ${dependencies})
##########
add_executable(pickdown_tool_action_node src/pickdown_tool_action_node.cpp)
ament_target_dependencies(pickdown_tool_action_node ${dependencies})
#### action 2
add_executable(pickdown_tool_action_node2 src/pickdown_tool_action_node.cpp)
ament_target_dependencies(pickdown_tool_action_node2 ${dependencies})



install(DIRECTORY launch pddl DESTINATION share/${PROJECT_NAME})

install(TARGETS
  move_robot_action_node
  pick_item_from_box_action_node
  pickdown_food_action_node
  pickdown_medicine_action_node
  pickdown_tool_action_node
  load_box_action_node
  unload_box_action_node
  pick_up_item_from_location_action_node
  put_item_in_box_action_node
  ### Action2
  move_robot_action_node2
  pick_item_from_box_action_node2
  pickdown_food_action_node2
  pickdown_medicine_action_node2
  pickdown_tool_action_node2
  load_box_action_node2
  unload_box_action_node2
  pick_up_item_from_location_action_node2
  put_item_in_box_action_node2
  ###
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
