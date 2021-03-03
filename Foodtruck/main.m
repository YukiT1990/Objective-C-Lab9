//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "ExcellentCook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        FoodTruck *truckC = [[FoodTruck alloc] initWithName:@"Piyorin Cake Cafe" andFoodType:@"cake"];
        
        // create instances of your delegate class
        // set truckA and truckB's delegate to your new instance.
        Cook *newCook = [Cook new];
        ExcellentCook *professionalCook = [ExcellentCook new];
        
        // F. Connect your delegator and delegate together.
        truckA.delegate = newCook;
        truckB.delegate = newCook;
        truckC.delegate = newCook;
        
        [truckA serve:10];
        [truckB serve:5];
        [truckC serve:20];
        
        [truckA cashOut];
        [truckB cashOut];
        [truckC cashOut];
        
        truckA.delegate = professionalCook;
        truckB.delegate = professionalCook;
        truckC.delegate = professionalCook;
        
        [truckA serve:10];
        [truckB serve:5];
        [truckC serve:20];
        
        [truckA cashOut];
        [truckB cashOut];
        [truckC cashOut];
        
    }
    return 0;
}
