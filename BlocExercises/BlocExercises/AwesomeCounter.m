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
    
    NSMutableString *numberString =[[NSMutableString alloc]init];
    
    NSInteger minimumValue;
    NSInteger maximumValue;
    
    //assign the minimum and maximum numeric values from given numbers
    //increase maximum value by 1 for inclusion in for loop
    if (number < otherNumber)
    {
        
        minimumValue = number;
        maximumValue = ( otherNumber+1 );
        
    }
    
    else
    {
        
        minimumValue = otherNumber;
        maximumValue = ( number+1 );
        
    }
    
    //create a string of ordered values in ascending order
    for(NSInteger n = minimumValue; n < maximumValue ; n++) {
        
        NSString *new = [NSString stringWithFormat:@"%ld",(long)n ];
        
        [numberString appendString:new];
        
    }
    
    return numberString;
}

@end
