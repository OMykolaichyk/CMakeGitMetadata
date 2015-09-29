project(CMakeGitMetadata)
cmake_minimum_required(VERSION 2.6)

SET(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/CMakeModules)

include(GitMetadata)
GET_GIT_BRANCH(GIT_BRANCH)
GET_GIT_COMMIT_HASH(GIT_COMMIT_HASH)
GET_GIT_COMMIT_DATETIME(GIT_COMMIT_DATETIME)

message(STATUS "Git current branch: ${GIT_BRANCH}")
message(STATUS "Git commit hash: ${GIT_COMMIT_HASH}")
message(STATUS "Git commit datetime: ${GIT_COMMIT_DATETIME}")
message(STATUS "Generating gitmetadata.h")


configure_file(
  ${CMAKE_SOURCE_DIR}/gitmetadata/gitmetadata.h.in
  ${CMAKE_BINARY_DIR}/gitmetadata/gitmetadata.h
)

INCLUDE_DIRECTORIES(${CMAKE_BINARY_DIR}/gitmetadata/)

add_subdirectory(src)
