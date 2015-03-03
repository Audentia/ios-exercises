//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    NSNumber *timesTwo = [NSNumber numberWithDouble:[number doubleValue] * 2];
    return timesTwo;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *betweenNumbers = [NSMutableArray new];
    NSInteger low = otherNumber;
    NSInteger high = number;

    if (number < otherNumber) {
        low = number;
        high = otherNumber;
    }
    while (low <= high) {
        NSNumber *numberValues = [NSNumber numberWithLong:low];
        [betweenNumbers addObject:numberValues];
        low++;
    }
    return betweenNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSArray *sortedNumbers = [arrayOfNumbers sortedArrayUsingSelector:@selector(compare:)];
    NSInteger lowest = [sortedNumbers[0] longValue];
    
    return lowest;
}

@end
