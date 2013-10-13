include(RunCMake)

run_cmake(not_a_cxx_feature)
run_cmake(no_matching_cxx_feature)
if (NOT NO_UNKNOWN_COMPILER_TEST)
  set(RunCMake_TEST_OPTIONS "-DCMAKE_CXX_COMPILER_ID=UnknownCompiler")
  run_cmake(unknown_compiler)
endif()
