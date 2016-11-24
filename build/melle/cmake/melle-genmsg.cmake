# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "melle: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imelle:/home/nima/Code/Ros/melle_ws/src/melle/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(melle_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nima/Code/Ros/melle_ws/src/melle/msg/AndroidSensorData.msg" NAME_WE)
add_custom_target(_melle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "melle" "/home/nima/Code/Ros/melle_ws/src/melle/msg/AndroidSensorData.msg" ""
)

get_filename_component(_filename "/home/nima/Code/Ros/melle_ws/src/melle/msg/ArduinoSensorData.msg" NAME_WE)
add_custom_target(_melle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "melle" "/home/nima/Code/Ros/melle_ws/src/melle/msg/ArduinoSensorData.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(melle
  "/home/nima/Code/Ros/melle_ws/src/melle/msg/AndroidSensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/melle
)
_generate_msg_cpp(melle
  "/home/nima/Code/Ros/melle_ws/src/melle/msg/ArduinoSensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/melle
)

### Generating Services

### Generating Module File
_generate_module_cpp(melle
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/melle
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(melle_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(melle_generate_messages melle_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nima/Code/Ros/melle_ws/src/melle/msg/AndroidSensorData.msg" NAME_WE)
add_dependencies(melle_generate_messages_cpp _melle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nima/Code/Ros/melle_ws/src/melle/msg/ArduinoSensorData.msg" NAME_WE)
add_dependencies(melle_generate_messages_cpp _melle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(melle_gencpp)
add_dependencies(melle_gencpp melle_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS melle_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(melle
  "/home/nima/Code/Ros/melle_ws/src/melle/msg/AndroidSensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/melle
)
_generate_msg_lisp(melle
  "/home/nima/Code/Ros/melle_ws/src/melle/msg/ArduinoSensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/melle
)

### Generating Services

### Generating Module File
_generate_module_lisp(melle
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/melle
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(melle_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(melle_generate_messages melle_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nima/Code/Ros/melle_ws/src/melle/msg/AndroidSensorData.msg" NAME_WE)
add_dependencies(melle_generate_messages_lisp _melle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nima/Code/Ros/melle_ws/src/melle/msg/ArduinoSensorData.msg" NAME_WE)
add_dependencies(melle_generate_messages_lisp _melle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(melle_genlisp)
add_dependencies(melle_genlisp melle_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS melle_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(melle
  "/home/nima/Code/Ros/melle_ws/src/melle/msg/AndroidSensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/melle
)
_generate_msg_py(melle
  "/home/nima/Code/Ros/melle_ws/src/melle/msg/ArduinoSensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/melle
)

### Generating Services

### Generating Module File
_generate_module_py(melle
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/melle
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(melle_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(melle_generate_messages melle_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nima/Code/Ros/melle_ws/src/melle/msg/AndroidSensorData.msg" NAME_WE)
add_dependencies(melle_generate_messages_py _melle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nima/Code/Ros/melle_ws/src/melle/msg/ArduinoSensorData.msg" NAME_WE)
add_dependencies(melle_generate_messages_py _melle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(melle_genpy)
add_dependencies(melle_genpy melle_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS melle_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/melle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/melle
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(melle_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/melle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/melle
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(melle_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/melle)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/melle\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/melle
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(melle_generate_messages_py std_msgs_generate_messages_py)
