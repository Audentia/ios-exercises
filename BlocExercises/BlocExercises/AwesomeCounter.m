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
        while (number <= otherNumber) {
            NSString *smallNumber = [NSString stringWithFormat:@"%ld", (long)number];
            [output appendString:smallNumber];
            number++;
        }
    } else {
        for (NSInteger i = otherNumber; i <= number; i++) {
            NSString *smallNumber = [NSString stringWithFormat:@"%ld", (long)i];
            [output appendString:smallNumber];
        }
    }
  
    
    return output;
}

@end
