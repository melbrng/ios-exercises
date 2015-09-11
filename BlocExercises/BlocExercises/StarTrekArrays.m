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

    NSArray *characterArray = [characterString componentsSeparatedByString:@";"];
    
    return characterArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSString *characterString = [characterArray componentsJoinedByString:@";"];
    
    return characterString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    //need a mutable copy to apply sortDescriptor
    NSMutableArray *sortCharacterArray = [characterArray mutableCopy];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    
    [sortCharacterArray sortUsingDescriptors:@[sortDescriptor]];
    
    return sortCharacterArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
  
    //need mutable copy to apply predicate
    NSMutableArray *worfCharacterArray = [characterArray mutableCopy];
    
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    
    [worfCharacterArray filterUsingPredicate:containsWorf];
    
    //if filtered instances of Worf
    if(worfCharacterArray.count > 0)
        
    {
        return YES;
    }
    
    else
    {
        return NO;
    }
}

@end
