//
//  FoodTruck.h
//  FoodTruck
//.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FoodTruck;

@protocol FoodTruckDelegate <NSObject>

// A. Create a Protocol that defines what messages the delegate can receive.
-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end


@interface FoodTruck : NSObject

// They are moved from FoodTruck.m to make them public
@property (nonatomic, assign) float earnings;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *foodType;



// B. Add a delegate property to your delegator.
@property (nonatomic, weak) id<FoodTruckDelegate> delegate;

-(instancetype)initWithName:(NSString *)pun andFoodType:(NSString *)foodType;

-(void)serve:(int)orders;
-(void)cashOut;

@end
