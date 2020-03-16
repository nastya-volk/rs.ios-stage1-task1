#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    int sum = 0;
    for (int i = 0; i < [array count]; i++) {
        sum += [array[i] intValue];
    }
    int subSum = sum;
    NSMutableArray* arrayOfSubSums = [[NSMutableArray alloc] init];
    NSMutableArray* arrayOfMinMax = [[NSMutableArray alloc] init];
    for (int i = 0; i < [array count]; i++) {
        subSum = subSum - [array[i] intValue];
        [arrayOfSubSums addObject:@(subSum)];
        subSum = subSum + [array[i] intValue];
    }
    NSNumber *max=[arrayOfSubSums valueForKeyPath:@"@max.self"];
    NSNumber *min=[arrayOfSubSums valueForKeyPath:@"@min.self"];
    [arrayOfMinMax addObject:min];
    [arrayOfMinMax addObject:max];
    return arrayOfMinMax;
}

@end
