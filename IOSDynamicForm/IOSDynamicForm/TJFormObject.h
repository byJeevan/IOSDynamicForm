//
//  TJFormObject.h
//  IOSDynamicForm
//
//  Created by Jeevan on 08/02/17.
//  Copyright © 2017 byjeevan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TJFormObject <NSObject>

@property (nonatomic) id formObject;

@optional

-(void)updateFromFormObject;

-(void)updateFormObjectFromView;

@end
