#import <Foundation/Foundation.h>

int sumOfMultiplesOf(int v1, int v2, int range) {
   
    int sum = 0;
    int temp = 0;
    int counter = 0;
    
    for (temp=0; temp<=range-2; temp++) {
        counter++;
        if(counter % v1 == 0 || counter % v2 == 0) {
            sum += counter;
        }
    }
    
    return sum;
}

int main(int argc, const char * argv[]) {
    
    int sum = 0;
    
    @autoreleasepool {
        sum = sumOfMultiplesOf(3,5,1000);
        printf("%d\n", sum);
    }
    return 0;
}
