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

#import "Form.h"

@interface ViewController ()<UITextFieldDelegate>
@property (nonatomic, strong) RegistrationDto *registrationDto;
@property (nonatomic, strong) Form *form;
@property (weak, nonatomic) IBOutlet UITextField *playerNameField;
@property (weak, nonatomic) IBOutlet UILabel *errorLabel;
@property (weak, nonatomic) IBOutlet UIButton *errorIcon;


@property (weak, nonatomic) IBOutlet UITextField *locationField;


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
    
    
    //Create a form
    self.form = [Form new];
    self.form.errorMessageDefaultHidden = NO;
    
    Field * player = [[Field alloc] initWithView:self.playerNameField errorMessageView:self.errorLabel errorHintView:self.errorIcon validationsArray:[NSArray arrayWithObjects:[IsEmpty new], [IsAlphabet new], nil]];
    
    [self.form addNewField:player];
    
    //Binding data object
    self.view.dataObject = self.registrationDto;
}

- (IBAction)actionButton:(id)sender {
    
     if ([self.form isFormValid]) {
        //Do after valid
        
        DetailedViewController * detailedViewController = [DetailedViewController new];
    
        [self.view updateDataObjectFromView];
         
         NSLog(@"DTO : %@", self.registrationDto); //////-> DTO Ready HERE //////
    
        //TODO : Pass registration DTO
        [self presentViewController:detailedViewController animated:NO completion:nil];
         
     }
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
