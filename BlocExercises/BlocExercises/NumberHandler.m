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
    
    int x = [number intValue];
    
    int y = ( x * 2 );
    
    NSNumber *returnDouble = [NSNumber numberWithInt:y];
    
    return returnDouble;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *numberArray = [[NSMutableArray alloc]init];
    
    for(NSInteger n = number; n <= otherNumber ; n++) {
        
        NSNumber *newNumber = [NSNumber numberWithInteger:n];
        
        [numberArray addObject:newNumber];
        
    }
    
    return numberArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {

    NSMutableArray *sortedArray = [arrayOfNumbers mutableCopy];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:NO];
    
    [sortedArray sortUsingDescriptors:@[sortDescriptor]];
    
    NSNumber *last = [sortedArray lastObject];
    
    return [last integerValue];
}

@end
