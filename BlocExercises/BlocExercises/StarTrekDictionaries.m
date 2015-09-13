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
    
    NSString *favoriteDrink = [characterDictionary valueForKey:@"favorite drink"];
    
    return favoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSMutableArray *drinkArray = [[NSMutableArray alloc]init];
    
    for(NSDictionary *characterDictionary in charactersArray)
    {
        NSString *favoriteDrink = [characterDictionary valueForKey:@"favorite drink"];
        
        [drinkArray addObject:favoriteDrink];

    }
    
    return drinkArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {

    NSString *quoteValue = [characterDictionary valueForKey:@"quote"];
    
    NSMutableDictionary *quoteDictionary = [characterDictionary mutableCopy];
    
    if(!( quoteValue ))
    {
        [quoteDictionary setObject:@"quote" forKey:@""];
    }
    
    return quoteDictionary;
}

@end
