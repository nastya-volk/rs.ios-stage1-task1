#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    NSMutableArray* arrayAnnasBill = [[NSMutableArray alloc] init];
    [arrayAnnasBill addObjectsFromArray:bill];
    //int brianDue = 0;
    int annDue = 0;
    int allDue = 0;
    int refund = 0;
    [arrayAnnasBill removeObjectAtIndex:index];
    for (int i = 0; i < [arrayAnnasBill count]; i++) {
        annDue += [arrayAnnasBill[i] intValue];
    }
    
    annDue = annDue / 2;
    //brianDue = allDue - annDue;
    int intSum = [sum intValue];
    if (annDue == intSum) {
        return @"Bon Appetit";
    }
    else {
        for (int i = 0; i < [bill count]; i++) {
            allDue += [bill[i] intValue];
        }
        refund = intSum - annDue;
        NSString* refundString = [NSString stringWithFormat:@"%i", refund];
        return refundString;
    }
}

@end
