//
//  ExcellentCook.h
//  Foodtruck
//
//  Created by Yuki Tsukada on 2021/03/03.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"

NS_ASSUME_NONNULL_BEGIN

@interface ExcellentCook : NSObject <FoodTruckDelegate>;

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end

NS_ASSUME_NONNULL_END
