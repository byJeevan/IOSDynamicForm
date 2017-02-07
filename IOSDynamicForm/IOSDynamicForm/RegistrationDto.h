//
//  RegistrationDto.h
//  IOSDataBinding
//
//  Created by Jeevan on 03/02/17.
//  Copyright © 2017 com.byjeevan.ios.databinding. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDto.h"

@interface RegistrationDto : BaseDto

@property (nonatomic,strong) NSString * firstName;
@property (nonatomic,strong) NSString * lastName;
@property (nonatomic,strong) NSString * email;
@property (strong) NSString* name;
@end
