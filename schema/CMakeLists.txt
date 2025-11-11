add_subdirectory(capn_proto)
add_subdirectory(flatbuffers)
add_subdirectory(protocol_buffers)
add_subdirectory(roq)
add_subdirectory(simple_binary_encoding)

set(TARGET_NAME ${PROJECT_NAME})

set(TARGET_DIR ${SCHEMA_DIR})

set(SOURCES meta.json)

install(FILES ${SOURCES} DESTINATION ${TARGET_DIR})
