//
//  DetailedViewController.m
//  IOSDynamicForm
//
//  Created by Jeevan on 08/02/17.
//  Copyright © 2017 byjeevan. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()
@property (weak, nonatomic) IBOutlet UILabel *detailedLabel;

@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    _detailedLabel.text = self.dto.playerName;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)exitAction:(id)sender {
    
    [self dismissViewControllerAnimated:NO completion:nil];
}

 
@end
