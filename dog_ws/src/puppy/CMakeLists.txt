cmake_minimum_required(VERSION 3.0.2)
project(puppy)

find_package(catkin REQUIRED COMPONENTS roscpp genmsg)

add_message_files(FILES PuppyHealth.msg)

add_service_files(FILES HumanActions.srv)

generate_messages()

catkin_package(CATKIN_DEPENDS roscpp)

include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(pub src/HealthPub.cpp)
target_link_libraries(pub ${catkin_LIBRARIES})
add_dependencies(pub ${${PROJECT_NAME}_EXPORTED_TARGETS})

add_executable(mon src/HealthMonitor.cpp)
target_link_libraries(mon ${catkin_LIBRARIES})
add_dependencies(mon ${${PROJECT_NAME}_EXPORTED_TARGETS})

add_executable(hasClient src/HumanActionSimClient.cpp)
target_link_libraries(hasClient ${catkin_LIBRARIES})
add_dependencies(hasClient ${${PROJECT_NAME}_EXPORTED_TARGETS})

add_executable(hasServer src/HumanActionSimServer.cpp)
target_link_libraries(hasServer ${catkin_LIBRARIES})
add_dependencies(hasServer ${${PROJECT_NAME}_EXPORTED_TARGETS})

