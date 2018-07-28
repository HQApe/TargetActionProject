//
//  Target_ComponentB.m
//  CTMediator
//
//  Created by Ape on 2018/7/28.
//

#import "Target_ComponentB.h"
#import "TAEntreyBVC.h"
#import <CTMediator/CTMediator.h>
@implementation Target_ComponentB
- (UIViewController *)Action_fetchComponentBVC:(NSDictionary *)params {
    
    TAEntreyBVC *viewController = [[TAEntreyBVC alloc] init];
    viewController.entrySource = params[@"entrySouce"];
    return viewController;
}

@end
