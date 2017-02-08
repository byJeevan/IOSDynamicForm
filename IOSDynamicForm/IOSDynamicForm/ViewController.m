//
//  ViewController.m
//  IOSDynamicForm
//
//  Created by Jeevan on 07/02/2017.
//  Copyright © 2017 byjeevan. All rights reserved.
//

#import "ViewController.h"
#import "DetailedViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)actionButton:(id)sender {

    //Do form validation
    
    DetailedViewController * detailedViewController = [DetailedViewController new];
    
    [self presentViewController:detailedViewController animated:NO completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
