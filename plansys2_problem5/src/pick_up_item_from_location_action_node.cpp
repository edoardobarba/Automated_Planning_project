// Copyright 2019 Intelligent Robotics Lab
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <memory>
#include <algorithm>

#include "plansys2_executor/ActionExecutorClient.hpp"

#include "rclcpp/rclcpp.hpp"
#include "rclcpp_action/rclcpp_action.hpp"

using namespace std::chrono_literals;
class Pickup_Item_From_Location : public plansys2::ActionExecutorClient// name of the class 
{
public:
  Pickup_Item_From_Location()// changed here
  : plansys2::ActionExecutorClient("pickup_item_from_location", 400ms)// changed here
  {
    progress_ = 0.0;
  }

private:
  void do_work()
  {
    if (progress_ < 1.0) {
      progress_ += 0.17;
      send_feedback(progress_, "Pickup Item From Location running");// changed here
    } else {
      finish(true, 1.0, "Pickup Item From Location completed");// changed here

      progress_ = 0.0;
      std::cout << std::endl;
    }

    std::cout << "\r\e[K" << std::flush;
    std::cout << "Picking up item from location ... [" << std::min(100.0, progress_ * 100.0) << "%]  " <<
      std::flush;
  }

  float progress_;
};

int main(int argc, char ** argv)
{
  rclcpp::init(argc, argv);
  auto node = std::make_shared<Pickup_Item_From_Location>();// changed here

  node->set_parameter(rclcpp::Parameter("action_name", "pickup_item_from_location"));// changed here
  node->trigger_transition(lifecycle_msgs::msg::Transition::TRANSITION_CONFIGURE);

  rclcpp::spin(node->get_node_base_interface());

  rclcpp::shutdown();

  return 0;
}
