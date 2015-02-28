//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    NSArray *starTrekArray = [characterString componentsSeparatedByString:@";"];
    
    return starTrekArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *starTrekString = [characterArray componentsJoinedByString:@";"];
    
    return starTrekString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
   
    //my attempt with mutable arrays
    /*
    NSMutableArray *sortedCharacter = [@[characterArray] mutableCopy];
    NSSortDescriptor *sortAlphabetical = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    
    sortedCharacter = [sortedCharacter sortUsingDescriptors:@[sortAlphabetical]]; //This line gives me the error
    return sortedCharacter;
    */
    
    NSSortDescriptor *sortAlphabetical = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    characterArray = [characterArray sortedArrayUsingDescriptors:@[sortAlphabetical]];

    //even simpler way i discovered at the end
    /*
    characterArray = [characterArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    */
    
    return characterArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    //trying to iterate and find worf in each element of the array
    /*
    NSMutableArray *findWorf = [@[characterArray] mutableCopy];

    for (NSString *characters in findWorf) { //my fast enum
        NSString *currentChar = [findWorf[characters] componentsJoinedByString:@""]; //trying to take one element of the array and turn it into string, but not the entire array
     
        NSRange worfRange = [currentChar rangeOfString:@"worf" options:NSCaseInsensitiveSearch];
     if (wheresWorf.location == NSNotFound) {
        return NO;
     } else {
        return YES;
     }
    }*/
    
    NSString *isWorfHere = [characterArray componentsJoinedByString:@" "];
    NSRange wheresWorf = [isWorfHere rangeOfString:@"worf" options:NSCaseInsensitiveSearch];
    if (wheresWorf.location == NSNotFound) {
        return NO;
    } else {
        return YES;
    }

}

@end
