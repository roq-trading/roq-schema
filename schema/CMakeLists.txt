add_subdirectory(fbs)
add_subdirectory(roq)
add_subdirectory(sbe)

set(TARGET_NAME ${PROJECT_NAME})

set(TARGET_DIR ${SCHEMA_DIR})

set(SOURCES meta.json)

install(FILES ${SOURCES} DESTINATION ${TARGET_DIR})
