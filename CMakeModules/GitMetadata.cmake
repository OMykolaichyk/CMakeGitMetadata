#if .git folder not found - variable BRANCH is not changed
function( GET_GIT_BRANCH BRANCH )

if(EXISTS "${CMAKE_SOURCE_DIR}/.git")
  execute_process(
    COMMAND git rev-parse --abbrev-ref HEAD
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    OUTPUT_VARIABLE _branch
    OUTPUT_STRIP_TRAILING_WHITESPACE
  )
elseif(EXISTS "${CMAKE_SOURCE_DIR}/.git")
  SET(_branch "")
endif(EXISTS "${CMAKE_SOURCE_DIR}/.git")
  SET(${BRANCH} ${_branch} PARENT_SCOPE)
endfunction( GET_GIT_BRANCH )

#if .git folder not found - variable HASH is not changed
function( GET_GIT_COMMIT_HASH HASH )

if(EXISTS "${CMAKE_SOURCE_DIR}/.git")
  execute_process(
    COMMAND git log -1 --format=%h
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    OUTPUT_VARIABLE _hash
    OUTPUT_STRIP_TRAILING_WHITESPACE
  )
elseif(EXISTS "${CMAKE_SOURCE_DIR}/.git")
  SET(_hash "")
endif(EXISTS "${CMAKE_SOURCE_DIR}/.git")

  SET(${HASH} ${_hash} PARENT_SCOPE)
endfunction( GET_GIT_COMMIT_HASH )

#if .git folder not found - variable DATETIME is not changed
function( GET_GIT_COMMIT_DATETIME DATETIME )

if(EXISTS "${CMAKE_SOURCE_DIR}/.git")
  execute_process(
    COMMAND git log -1 --format=%ci
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    OUTPUT_VARIABLE _datetime
    OUTPUT_STRIP_TRAILING_WHITESPACE
  )
elseif(EXISTS "${CMAKE_SOURCE_DIR}/.git")
  SET(_datetime "")
endif(EXISTS "${CMAKE_SOURCE_DIR}/.git")
  SET(${DATETIME} ${_datetime} PARENT_SCOPE)
endfunction( GET_GIT_COMMIT_DATETIME )
