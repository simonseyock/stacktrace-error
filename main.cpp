#include <boost/stacktrace.hpp>
#include <iostream>

int main() {
    std::cout << boost::stacktrace::stacktrace();
    return 0;
}