//
//  SimpleCalculator.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "SimpleCalculator.h"

@implementation SimpleCalculator

- (NSInteger) increaseNumberBy1:(NSInteger) number {
    
    NSInteger newInteger = ( number + 1 );
    
    return newInteger;
}

- (NSInteger) addNumber:(NSInteger) number1 toNumber:(NSInteger) number2 {
    
    NSInteger newInteger = ( number1 + number2 );
    
    return newInteger;
}

- (NSInteger) remainderOfNumber:(NSInteger) dividend dividedByNumber:(NSInteger) divisor {
    
    NSInteger newInteger = ( dividend % divisor );
    
    return newInteger;
}

@end
