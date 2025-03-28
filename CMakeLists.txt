cmake_minimum_required(VERSION 4.0)

project(roq-schema)

include(GNUInstallDirs)

set(SCHEMA_DIR ${CMAKE_INSTALL_DATADIR}/roq/schema)

add_subdirectory(${CMAKE_SOURCE_DIR}/schema)
