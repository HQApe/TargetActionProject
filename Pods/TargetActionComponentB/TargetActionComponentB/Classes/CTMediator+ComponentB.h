//
//  CTMediator+ComponentB.h
//  CTMediator
//
//  Created by Ape on 2018/7/28.
//

#import <CTMediator/CTMediator.h>

@interface CTMediator (ComponentB)

- (UIViewController *)fetchComponentBVCWithSource:(NSString *)source;

- (UIViewController *)jumpToComponentAWithSource:(NSString *)source;

@end
