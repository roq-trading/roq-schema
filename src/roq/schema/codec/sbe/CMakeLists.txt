set(TARGET_NAME ${PROJECT_NAME}-codec-sbe)

set(SOURCES api.xml)

set(TARGET_DIR ${SCHEMA_DIR}/codec/sbe)

install(FILES ${SOURCES} DESTINATION ${TARGET_DIR})
