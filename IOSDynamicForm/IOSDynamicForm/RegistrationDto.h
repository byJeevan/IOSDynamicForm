//
//  RegistrationDto.h
//  IOSDataBinding
//
//  Created by Jeevan on 03/02/17.
//  Copyright © 2017 com.byjeevan.ios.databinding. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDto.h"

/**
 * Player Registration Model class.
 */
@interface RegistrationDto : BaseDto

@property (nonatomic,strong) NSString * playerName;
@property (nonatomic,strong) NSString * location;
@property (nonatomic,strong) NSString * teamName;
@property (nonatomic,strong) NSNumber * totalScore;
@property (nonatomic,strong) NSNumber * winRate;
@property (assign) BOOL isProfileViewed;

@end
