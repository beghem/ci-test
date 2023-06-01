# enable CTest testing
enable_testing()

# Add a testing executable
add_executable(unit_tests unit_tests.cpp)

target_link_libraries(unit_tests
    example_google_test
    GTest::GTest
    GTest::Main
)

target_include_directories(unit_tests
    PUBLIC
        ${CMAKE_SOURCE_DIR}/include
)

add_test(test_all unit_tests --gtest_output=xml)
