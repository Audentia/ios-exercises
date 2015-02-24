//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *favCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return favCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSRange findCheese = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    if (findCheese.location == NSNotFound) {
        return cheeseName;
    } else {
        NSString *deleteCheese = [cheeseName stringByReplacingCharactersInRange:findCheese withString:@""];
        return deleteCheese;
    }
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        NSString *numCheese = [NSString stringWithFormat:@"%lu cheese", (unsigned long)cheeseCount];
        return numCheese;
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        NSString *numCheese = [NSString stringWithFormat:@"%lu cheeses", (unsigned long)cheeseCount];
        return numCheese;
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
}

@end
