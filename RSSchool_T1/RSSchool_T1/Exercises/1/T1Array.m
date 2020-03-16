#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSMutableArray * happyArray = [[NSMutableArray alloc] init];
    [happyArray addObjectsFromArray:sadArray];
    for (int i = 0; i + 2 < [happyArray count]; i++) {
        if ([happyArray[i + 1] intValue] > [happyArray[i] intValue] + [happyArray[i + 2] intValue]) {
            [happyArray removeObjectAtIndex: i + 1];
            if (i - 2 > 0) {
                if ([happyArray[i] intValue] > [happyArray[i - 1] intValue] + [happyArray[i + 1] intValue]) {
                    [happyArray removeObjectAtIndex: i];
                    i = i - 3;
                }
            }
        }
    }
    return happyArray;
}

@end
