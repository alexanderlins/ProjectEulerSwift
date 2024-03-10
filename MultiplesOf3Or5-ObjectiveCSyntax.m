#import <Foundation/Foundation.h>

@interface SumOf : NSObject
- (int)sumOfMultiplesOf:(int)v1 and:(int)v2 upTo:(int)range;
@end

@implementation SumOf

- (int)sumOfMultiplesOf:(int)v1 and:(int)v2 upTo:(int)range {
    int sum = 0;
    for (int i = 1; i < range; i++) {
        if (i % v1 == 0 || i % v2 == 0) {
            sum += i;
        }
    }
    return sum;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SumOf *calculator = [[SumOf alloc] init];
        int sum = [calculator sumOfMultiplesOf:3 and:5 upTo:1000];
        printf("Sum: %d\n", sum);
    }
    return 0;
}
