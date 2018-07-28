//
//  CTMediator+ComponentB.m
//  CTMediator
//
//  Created by Ape on 2018/7/28.
//

#import "CTMediator+ComponentB.h"

NSString * const kCTMediatorComponentB = @"ComponentB";
NSString * const kCTMediatorActionFetchComponentBVC= @"fetchComponentBVC";


@implementation CTMediator (ComponentB)

- (UIViewController *)fetchComponentBVCWithSource:(NSString *)source {
    UIViewController *viewController = [self performTarget:kCTMediatorComponentB action:kCTMediatorActionFetchComponentBVC params:@{@"entrySouce":source} shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}

- (UIViewController *)jumpToComponentAWithSource:(NSString *)source {
    UIViewController *vc = [[CTMediator sharedInstance] performActionWithUrl:[NSURL URLWithString:[NSString stringWithFormat:@"aaa://ComponentA/fetchComponentAVC?entrySouce=%@",source ]] completion:^(NSDictionary *info) {
    }];
    
    if ([vc isKindOfClass:[UIViewController class]]) {
        return vc;
    }
    return [[UIViewController alloc] init];
}

@end
