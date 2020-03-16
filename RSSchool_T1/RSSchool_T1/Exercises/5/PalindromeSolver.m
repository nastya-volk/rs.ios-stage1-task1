#import "PalindromeSolver.h"

@implementation PalindromeSolver

// Complete the highestValuePalindrome function below.
- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    int count = 0;
    for (int i = 0; i < s.length; i++) {
        
        NSString *symb = [s substringWithRange:NSMakeRange(i, 1)];
        
        [array addObject:symb];
        NSLog(@"NSArray *array = \n%@", array);
    }

    
    long prev = 0;

    for (int i = ([n intValue] / 2); i >= 0; i -= 1) {

        NSInteger leftitem = [[array objectAtIndex: i] integerValue];
        NSInteger rightitem = [[array objectAtIndex: ([n intValue] - i - 1) ] integerValue];
        
        
        if (leftitem != rightitem) {
            prev = MAX(prev, MAX(leftitem, rightitem));

            array[i] = [NSString stringWithFormat:@"%ld", prev];
            array[([n intValue] - i - 1)] = [NSString stringWithFormat:@"%ld", prev];
            if (leftitem != prev) {
                count++;
            }
            if (rightitem != prev) {
                count++;
            }

        }

    }
    /*
    if (changeCount != k || (s.length / 2) != 0) {
        return @"-1";
    }
    else {
        return [array componentsJoinedByString:@""];
    }
     */
    if (count == [k intValue]) {
        return [array componentsJoinedByString:@""];
        
    }
    else {
        return @"-1";
    }
    
}

@end
