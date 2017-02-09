//
//  UITextField+Field.m
//  IOSDynamicForm
//
//  Created by Jeevan on 08/02/2017.
//  Copyright © 2017 byjeevan. All rights reserved.
//

#import "UITextField+Field.h"

@implementation UITextField(Field)

-(void) setErrorView:(UIView *)errorView {
    
    self.errorView = errorView;
}

-(UIView *) errorView {
    return self.errorView;
}

-(void) setMessageLabel:(UILabel *) messageLabel {
    
    self.messageLabel = messageLabel;
}

-(UILabel *) messageLabel{
    return self.messageLabel;
}

-(void) setFieldText:(NSString *)fieldText
{
    self.fieldText = fieldText;
}

-(NSString *) fieldText {
    return  self.fieldText;
}


-(void) setMessageLabelText:(NSString *) messageLabelText {
    
    self.messageLabelText = messageLabelText;
}

-(NSString *) messageLabelText {
    return self.messageLabelText;
}

-(void) setValidationItemsArray:(NSArray *)validationItemsArray {
    
    self.validationItemsArray = validationItemsArray;
}

-(NSArray *) validationItemsArray {
    
    return self.validationItemsArray;
}


@end
