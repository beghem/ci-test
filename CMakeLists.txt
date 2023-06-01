cmake_minimum_required(VERSION 3.5)

# Set the project name
project (google_test_example)

add_subdirectory(src)

add_subdirectory(3rd_party/google-test)
add_subdirectory(test)
