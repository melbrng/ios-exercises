//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    
    NSString *itemToReturn = [self checkItemDollars:dollars];
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    
    NSUInteger cost = self.getsDiscount ? 18 : 24 ;
    
    return cost;
}

-(NSString *) checkItemDollars:(NSInteger)dollars{

    NSString *item;
    
    if (dollars == 4) {
       item = @"get out of my store";
        
    } else if(dollars == 5) {
        item = @"have some gum";
        
    }else if(dollars == 6) {
        item = @"have an apple";
        
    }else if(dollars == 1000) {
        item = @"have an Apple computer";
        
    }else if(dollars == 1000000000) {
        item = @"have The Big Apple";
        
    }
    
    return item;
}

@end
