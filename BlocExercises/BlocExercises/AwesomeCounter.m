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
    
    NSInteger number1;
    NSInteger number2;
    
    
    if (number < otherNumber) {
        
        number1 = number;
        number2 = otherNumber+1;
        
    } else {
        
        number1 = otherNumber;
        number2 = number+1;
        
    }
    
    
    for(NSInteger n = number1; n < number2 ; n++) {
        
        NSString *new = [NSString stringWithFormat:@"%ld",(long)n ];
        
        [numberString appendString:new];
        
    }
    
    return numberString;
}

@end
