#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {
    NSMutableArray* parsedArray = [[NSMutableArray alloc] init];
    NSString *stringForArray;
    int min = 0;
    int max = 0;
    int maxForRange = 0;
    int count = 0;
    for (int i = min; i < string.length; i++) {
        if ([string characterAtIndex:i] == '<' || [string characterAtIndex:i] == '(' || [string characterAtIndex:i] == '[') {
            
            if ([string characterAtIndex:i] == '<') {
                i += 1;
                min = i;
                count++;
                    while ([string characterAtIndex:i] != '>') {
                        if ([string characterAtIndex:i] == '<') {
                            i += 1;
                            count++;
                            max++;
                            while (count != 0) {
                                    max++;
                                    i++;
                              
                                if ([string characterAtIndex:i] == '>') {
                                    count--;
                                   
                                }
                            }
                        }
                        else {
                        max++;
                        i++;
                        }
                    }
            }
            
            
            
            if ([string characterAtIndex:i] == '(') {
                i += 1;
                min = i;
                while ([string characterAtIndex:i] != ')') {
                    max++;
                    i++;
                }
            }
            if ([string characterAtIndex:i] == '[') {
                i += 1;
                min = i;
                while ([string characterAtIndex:i] != ']') {
                    max++;
                    i++;
                }
            }
            i = min - 1;
            maxForRange = min + max - 1;
            stringForArray = [string substringWithRange:NSMakeRange(min, max)];
            max = 0;
            maxForRange = 0;
            [parsedArray addObject:stringForArray];
        }
        
    }
    NSLog(@"NSArray ********************************************array = \n%@", parsedArray);
    return parsedArray;
}

@end
