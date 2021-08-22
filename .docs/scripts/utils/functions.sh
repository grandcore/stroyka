#!/bin/bash
function error_exit
{

#   ----------------------------------------------------------------
#   Function for exit due to fatal program error
#       Accepts 1 argument:
#           string containing descriptive error message
#   ---------------------------------------------------------------- 

    echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
    exit 1
}


function find_files
{
    #   ----------------------------------------------------------------
    #   Function for 
    #       Accepts :
    #          
    #   ---------------------------------------------------------------- 
    current_path=${pwd}
    new_path=$1
    cd ${new_path}
    find . -name "$2"
    cd ${current_path}
}


function containsElement () {
    #   ----------------------------------------------------------------
    #   Function for 
    #       Accepts : two arguments: 
    #       arg1 -- value, arg2 -- array 
    #          
    #   ---------------------------------------------------------------- 
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}