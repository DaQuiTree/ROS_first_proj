# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "puppy: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ipuppy:/home/houzy/dog_ws/src/puppy/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(puppy_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/houzy/dog_ws/src/puppy/srv/HumanActions.srv" NAME_WE)
add_custom_target(_puppy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "puppy" "/home/houzy/dog_ws/src/puppy/srv/HumanActions.srv" ""
)

get_filename_component(_filename "/home/houzy/dog_ws/src/puppy/msg/PuppyHealth.msg" NAME_WE)
add_custom_target(_puppy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "puppy" "/home/houzy/dog_ws/src/puppy/msg/PuppyHealth.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(puppy
  "/home/houzy/dog_ws/src/puppy/msg/PuppyHealth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/puppy
)

### Generating Services
_generate_srv_cpp(puppy
  "/home/houzy/dog_ws/src/puppy/srv/HumanActions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/puppy
)

### Generating Module File
_generate_module_cpp(puppy
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/puppy
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(puppy_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(puppy_generate_messages puppy_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/houzy/dog_ws/src/puppy/srv/HumanActions.srv" NAME_WE)
add_dependencies(puppy_generate_messages_cpp _puppy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/houzy/dog_ws/src/puppy/msg/PuppyHealth.msg" NAME_WE)
add_dependencies(puppy_generate_messages_cpp _puppy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(puppy_gencpp)
add_dependencies(puppy_gencpp puppy_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS puppy_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(puppy
  "/home/houzy/dog_ws/src/puppy/msg/PuppyHealth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/puppy
)

### Generating Services
_generate_srv_eus(puppy
  "/home/houzy/dog_ws/src/puppy/srv/HumanActions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/puppy
)

### Generating Module File
_generate_module_eus(puppy
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/puppy
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(puppy_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(puppy_generate_messages puppy_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/houzy/dog_ws/src/puppy/srv/HumanActions.srv" NAME_WE)
add_dependencies(puppy_generate_messages_eus _puppy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/houzy/dog_ws/src/puppy/msg/PuppyHealth.msg" NAME_WE)
add_dependencies(puppy_generate_messages_eus _puppy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(puppy_geneus)
add_dependencies(puppy_geneus puppy_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS puppy_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(puppy
  "/home/houzy/dog_ws/src/puppy/msg/PuppyHealth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/puppy
)

### Generating Services
_generate_srv_lisp(puppy
  "/home/houzy/dog_ws/src/puppy/srv/HumanActions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/puppy
)

### Generating Module File
_generate_module_lisp(puppy
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/puppy
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(puppy_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(puppy_generate_messages puppy_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/houzy/dog_ws/src/puppy/srv/HumanActions.srv" NAME_WE)
add_dependencies(puppy_generate_messages_lisp _puppy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/houzy/dog_ws/src/puppy/msg/PuppyHealth.msg" NAME_WE)
add_dependencies(puppy_generate_messages_lisp _puppy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(puppy_genlisp)
add_dependencies(puppy_genlisp puppy_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS puppy_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(puppy
  "/home/houzy/dog_ws/src/puppy/msg/PuppyHealth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/puppy
)

### Generating Services
_generate_srv_nodejs(puppy
  "/home/houzy/dog_ws/src/puppy/srv/HumanActions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/puppy
)

### Generating Module File
_generate_module_nodejs(puppy
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/puppy
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(puppy_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(puppy_generate_messages puppy_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/houzy/dog_ws/src/puppy/srv/HumanActions.srv" NAME_WE)
add_dependencies(puppy_generate_messages_nodejs _puppy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/houzy/dog_ws/src/puppy/msg/PuppyHealth.msg" NAME_WE)
add_dependencies(puppy_generate_messages_nodejs _puppy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(puppy_gennodejs)
add_dependencies(puppy_gennodejs puppy_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS puppy_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(puppy
  "/home/houzy/dog_ws/src/puppy/msg/PuppyHealth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/puppy
)

### Generating Services
_generate_srv_py(puppy
  "/home/houzy/dog_ws/src/puppy/srv/HumanActions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/puppy
)

### Generating Module File
_generate_module_py(puppy
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/puppy
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(puppy_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(puppy_generate_messages puppy_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/houzy/dog_ws/src/puppy/srv/HumanActions.srv" NAME_WE)
add_dependencies(puppy_generate_messages_py _puppy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/houzy/dog_ws/src/puppy/msg/PuppyHealth.msg" NAME_WE)
add_dependencies(puppy_generate_messages_py _puppy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(puppy_genpy)
add_dependencies(puppy_genpy puppy_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS puppy_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/puppy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/puppy
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/puppy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/puppy
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/puppy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/puppy
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/puppy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/puppy
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/puppy)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/puppy\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/puppy
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
