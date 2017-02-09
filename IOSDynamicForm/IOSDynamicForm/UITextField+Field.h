//
//  UITextField+Field.h
//  IOSDynamicForm
//
//  Created by Jeevan on 08/02/2017.
//  Copyright © 2017 byjeevan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField(Field)

@property (nonatomic, strong) NSString * fieldText;
@property (nonatomic, strong) NSString * messageLabelText;

@property (nonatomic, strong) UILabel * messageLabel;
@property (nonatomic, strong) UIView * errorView;
@property (nonatomic, strong) NSArray * validationItemsArray;



@end
