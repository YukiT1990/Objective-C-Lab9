//
//  Cook.h
//  Foodtruck
//
//  Created by Yuki Tsukada on 2021/03/03.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"

NS_ASSUME_NONNULL_BEGIN

// D. Adopt the protocol in the definition of a class you've created.
@interface Cook : NSObject <FoodTruckDelegate>;

// E. Implement how your delegate responds to the methods in the protocol.
-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end

NS_ASSUME_NONNULL_END
