include_directories(
    ${CMAKE_SOURCE_DIR}/include
)

# Add an library for the example classes
add_library(example_google_test
    Reverse.cpp
    Palindrome.cpp
)
