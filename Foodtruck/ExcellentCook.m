//
//  ExcellentCook.m
//  Foodtruck
//
//  Created by Yuki Tsukada on 2021/03/03.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "ExcellentCook.h"

@implementation ExcellentCook

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if ([truck.foodType  isEqual: @"bao"]) {
        return 7;
    } else if ([truck.foodType  isEqual: @"shortbread"]) {
        return 8;
    } else {
        return 10;
    }
}

@end
