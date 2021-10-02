macro(cbp_ci_build_option)
  option(CI_BUILD "CI, extra flags will be set" OFF)
  if(CI_BUILD)
    message(STATUS "CI build enabled")
    if(CMAKE_C_COMPILER_ID STREQUAL "MSVC")
      add_compile_options(/WX)
    else()
      add_compile_options(-Werror)
    endif()
  endif()
endmacro()
