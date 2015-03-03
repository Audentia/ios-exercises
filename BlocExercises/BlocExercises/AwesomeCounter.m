//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableString *output = [NSMutableString stringWithString:@""];
    if (number < otherNumber) {
        NSInteger low = number;
        NSInteger high = otherNumber;
        while (low <= high) {
            NSString *smallNumber = [NSString stringWithFormat:@"%ld", (long)low];
            [output appendString:smallNumber];
            low++;
        }
        
    } else {
        NSInteger low = otherNumber;
        NSInteger high = number;
        while (low <= high) {
            NSString *smallNumber = [NSString stringWithFormat:@"%ld", (long)low];
            [output appendString:smallNumber];
            low++;
        }
    }
    
    return output;
}

@end
