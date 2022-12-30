# Copyright 2019 Intelligent Robotics Lab
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import os

from ament_index_python.packages import get_package_share_directory

from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, IncludeLaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node


def generate_launch_description():
    # Get the launch directory
    example_dir = get_package_share_directory('plansys2_problem5')
    namespace = LaunchConfiguration('namespace')

    declare_namespace_cmd = DeclareLaunchArgument(
        'namespace',
        default_value='',
        description='Namespace')

    plansys2_cmd = IncludeLaunchDescription(
        PythonLaunchDescriptionSource(os.path.join(
            get_package_share_directory('plansys2_bringup'),
            'launch',
            'plansys2_bringup_launch_monolithic.py')),
        launch_arguments={
          'model_file': example_dir + '/pddl/domain4.pddl',
          'namespace': namespace
          }.items())

    move_robot_cmd = Node(
        package='plansys2_problem5',
        executable='move_robot_action_node',
        name='move_robot_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    move_robot_cmd2 = Node(
        package='plansys2_problem5',
        executable='move_robot_action_node2',
        name='move_robot_action_node2',
        namespace=namespace,
        output='screen',
        parameters=[])
    
    load_box_cmd = Node(
        package='plansys2_problem5',
        executable='load_box_action_node',
        name='load_box_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])
    
    unload_box_cmd = Node(
        package='plansys2_problem5',
        executable='unload_box_action_node',
        name='unload_box_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])
    pickup_item_from_location_cmd = Node(
        package='plansys2_problem5',
        executable='pick_up_item_from_location_action_node',
        name='pick_up_item_from_location_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])
    put_item_in_box_cmd = Node(
        package='plansys2_problem5',
        executable='put_item_in_box_action_node',
        name='put_item_in_box_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])
    ## END Mostafa Part
    pick_item_from_box_cmd = Node(
        package='plansys2_problem5',
        executable='pick_item_from_box_action_node',
        name='pick_item_from_box_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    pickdown_food_cmd = Node(
        package='plansys2_problem5',
        executable='pickdown_food_action_node',
        name='pickdown_food_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    pickdown_medicine_cmd = Node(
        package='plansys2_problem5',
        executable='pickdown_medicine_action_node',
        name='pickdown_medicine_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    pickdown_tool_cmd = Node(
        package='plansys2_problem5',
        executable='pickdown_tool_action_node',
        name='pickdown_tool_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    ld = LaunchDescription()

    ld.add_action(declare_namespace_cmd)

    # Declare the launch options
    ld.add_action(plansys2_cmd)
    # to be modified
    ld.add_action(move_robot_cmd)
    ld.add_action(move_robot_cmd2)
    ld.add_action(load_box_cmd)
    ld.add_action(unload_box_cmd)
    ld.add_action(pickup_item_from_location_cmd)
    ld.add_action(put_item_in_box_cmd)

    ld.add_action(pick_item_from_box_cmd)
    ld.add_action(pickdown_food_cmd)
    ld.add_action(pickdown_medicine_cmd)
    ld.add_action(pickdown_tool_cmd)
 

    return ld
