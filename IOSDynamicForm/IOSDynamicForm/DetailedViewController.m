//
//  DetailedViewController.m
//  IOSDynamicForm
//
//  Created by Jeevan on 08/02/17.
//  Copyright © 2017 byjeevan. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()

@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)exitAction:(id)sender {
    
    [self dismissViewControllerAnimated:NO completion:nil];
}

 
@end
