# include <stdio.h>
# include <stdlib.h>

// declare a function
int valueFunction() {
    int number = 5;
    return number;
}

// main function where the functions are called
int main() {
    // call the valueFunction
    int result = valueFunction();
    //display the results of the value function
    printf("the result is: %d \n", result);
    return 0;
}
