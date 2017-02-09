//
//  ViewController.m
//  IOSDynamicForm
//
//  Created by Jeevan on 07/02/2017.
//  Copyright © 2017 byjeevan. All rights reserved.
//

#import "ViewController.h"
#import "DetailedViewController.h"
#import "RegistrationDto.h"
#import "UIView+TJBinder.h"
#import "UIView+Wrapper.h"

#import "Field.h"
#import "Form.h"

@interface ViewController ()<UITextFieldDelegate>
@property (nonatomic, strong) RegistrationDto *registrationDto;

@end

/*
 * TJBinder does not update the view automatically - if you need to update the view, use updateViewFromDataObject method un UIView.
 * additional API implemented `updateDataObjectFromView` for update dto for same above reason.
 * Ref : https://github.com/Neosperience/TJBinder
 */


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Create a new dto
    self.registrationDto = [RegistrationDto new];
    
    self.registrationDto.playerProfile.messageLabelText = @"Major error occured";
    
    self.registrationDto.playerProfile.fieldText = @"JEevangamer";
    
    //Binding data object
    self.view.dataObject = self.registrationDto;

    
}

- (IBAction)actionButton:(id)sender {
    
//    if ([self.form isFormValid]) {
        //Do after valid
    
    
        DetailedViewController * detailedViewController = [DetailedViewController new];
    
        [self.view updateDataObjectFromView]; //////-> FORM VALIDATION HERE //////
    
        //TODO : Pass registration DTO
        [self presentViewController:detailedViewController animated:NO completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma TextFieldDelegates
-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    
    [self.view endEditing:YES];
    
    return YES;
}
@end
