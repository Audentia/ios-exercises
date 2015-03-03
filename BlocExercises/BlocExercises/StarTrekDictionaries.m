//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    return [characterDictionary objectForKey:@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    //go over every dictionary in the array, grab favorite drink for each one, return it as an array
    //for loop goes over everything
    //method of array get certain object and return to another array
    //valueForKey: Returns an array containing the results of invoking valueForKey: using key on each of the array's objects.
    
    return @[];
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    //put a quote into the dictionary, convert it do mutable, then return it
    //any quote will do
    return @{};
}

@end
