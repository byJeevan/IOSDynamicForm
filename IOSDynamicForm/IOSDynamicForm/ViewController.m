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

#import "Field.h"
#import "Form.h"

@interface ViewController ()<UITextFieldDelegate>
@property (nonatomic, strong) RegistrationDto *registrationDto;

//@property (weak, nonatomic) IBOutlet UITextField *playerName;
//@property (weak, nonatomic) IBOutlet UILabel *errorLabel;
//@property (weak, nonatomic) IBOutlet UIButton *errorIcon;

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
    
    //Binding data object
    self.view.dataObject = self.registrationDto;
    
    //Create new form
//    self.form = [Form new];
    
    //Form element - email
//    NSArray * arrayValidationEmail = [NSArray arrayWithObjects:[IsEmpty new], [IsAlphabet new], nil];
//    Field * field = [[Field alloc] initWithView:self.playerName errorMessageView:self.errorLabel errorHintView:self.errorIcon validationsArray:arrayValidationEmail];
//    [self.form addNewField:field];
    
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
