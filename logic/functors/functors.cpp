#include <cstdint>
#include <iostream>
#include <algorithm>
#include <string>

using namespace std;

extern "C" {

int32_t f(int32_t x) {
    return x + 1;
}

const char *g() {
    return "Hello world";
}


int32_t get_before(char *input, char *separator) {
	if(input == NULL || separator == NULL) {
		return 0;
	}

	std::string s = std::string(input);
	std::string delimiter = std::string(separator);
	int32_t location = s.find(delimiter);
	return location;
}

const char * get_behind(char *input, char *separator) {
	if(input == NULL || separator == NULL) {
		return "";
	}

	int position = get_before(input, separator)+1;
	std::string s = std::string(input);

	s = s.substr (position); 

	return s.c_str();
}

int32_t get_num_seperators(char *input, char *separator) {
	if(input == NULL || separator == NULL) {
		return 0;
	}

	std::string s = std::string(input);

	int32_t count = std::count(s.begin(), s.end(), separator[0]);

	return count;
}

}

/*
int main() {
	char* test = "Test<=;Str.in;xgAsdfJklOe";
	char* separator = ";";
	int res = get_num_seperators(test, separator);
	printf("res:%d\n", res);
}
*/