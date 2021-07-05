#include <stdio.h>
#include<stdlib.h>
#include <string.h>
#include <cstdint>

extern "C" {

int32_t f(int32_t x) {
    return x + 1;
}

const char *get_before_underscore(char *input) {
	char* input2 = (char*) malloc(strlen(input)*sizeof(char));
	strcpy(input2, input);
	
	const char deli = '_';
	char * const separate_at = strchr(input2, deli);

	if(separate_at != NULL) {
		*separate_at = '\0';
	}

	return input2;
	
}

const char *get_behind_underscore(char *input) {
	char* input2 = (char*) malloc(strlen(input)*sizeof(char));
	strcpy(input2, input);
	
	const char deli = '_';
	char * const separate_at = strchr(input2, deli);

	if(separate_at != NULL) {
		return separate_at+1;
	}

	return "";
	
}

const char *get_before_seperator(char *input) {
	char* input2 = (char*) malloc(strlen(input)*sizeof(char));
	strcpy(input2, input);
	
	const char deli = '~';
	char * const separate_at = strchr(input2, deli);

	if(separate_at != NULL) {
		*separate_at = '\0';
	}

	return input2;
	
}

const char *get_behind_seperator(char *input) {
	char* input2 = (char*) malloc(strlen(input)*sizeof(char));
	strcpy(input2, input);
	
	const char deli = '~';
	char * const separate_at = strchr(input2, deli);

	if(separate_at != NULL) {
		return separate_at+1;
	}

	return "";
	
}

const char *remove_one_zero(char * strInput)
{

	char* str = (char*) malloc(strlen(strInput)*sizeof(char));
	strcpy(str, strInput);

    int i, j;
    int len, removeLen;
    int found = 0;

    len = strlen(str);
	const char * toRemove = "0_";

    removeLen = strlen(toRemove);

    for(i=0; i<len; i++)
    {
        found = 1;
        for(j=0; j<removeLen; j++)
        {
            if(str[i+j] != toRemove[j])
            {
                found = 0;
                break;
            }
        }

        // If word has been found then remove it by shifting characters
        if(found == 1)
        {
            for(j=i; j<=len-removeLen; j++)
            {
                str[j] = str[j + removeLen];
            }

            // Terminate from loop so only first occurrence is removed
            break;
        }
    }

	// printf("before:%s\n", strInput);
	// printf("after:%s\n", str);

	return str;
}


}