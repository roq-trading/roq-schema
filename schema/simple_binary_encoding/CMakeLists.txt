set(TARGET_NAME ${PROJECT_NAME}-simple_binary_encoding)

set(TARGET_DIR ${SCHEMA_DIR})

set(SOURCES api.xml)

install(FILES ${SOURCES} DESTINATION ${TARGET_DIR})
