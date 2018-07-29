//
//  ViewController.m
//  TargetActionProject
//
//  Created by Ape on 2018/7/28.
//  Copyright © 2018年 Ape. All rights reserved.
//

#import "ViewController.h"
#import <CTMediator+ComponentA.h>
#import <CTMediator+ComponentB.h>
#import <CTMediator+HQMapComponent.h>
#import <MAMapKit/MAMapKit.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (IBAction)moduleAAction:(id)sender {
    UIViewController *vc = [[CTMediator sharedInstance] fetchComponentAVCWithSource:@"Project"];
    
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)moduleBAction:(id)sender {
    UIViewController *vc = [[CTMediator sharedInstance] fetchComponentBVCWithSource:@"Project"];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)moduleMapAction:(id)sender {
    
    UIViewController *vc = [[CTMediator sharedInstance] fetchMapViewController];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
