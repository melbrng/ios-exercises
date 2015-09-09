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
    
    NSString *favoriteCheeseString = [NSString stringWithFormat:@"My favorite cheese is %@.",cheeseName];
    return favoriteCheeseString;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {

    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        
        NSRange cheeseRange = [[cheeseName lowercaseString] rangeOfString:@" cheese"];
        NSString *newCheeseName =[cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return newCheeseName;
        
    } else {
        
        return cheeseName;
        
    }

}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {

        NSString *returnString = [NSString stringWithFormat:@"%ld cheese",cheeseCount];
        return returnString;
        
    } else {
        
        NSString *returnString = [NSString stringWithFormat:@"%ld cheeses",cheeseCount];
        return returnString;
    }

}

@end
