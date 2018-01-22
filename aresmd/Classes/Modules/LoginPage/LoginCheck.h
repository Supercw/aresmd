//
//  LoginCheck.h
//  aresmd
//
//  Created by Retina on 2018/1/22.
//  Copyright © 2018年 Retina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginCheck : NSObject
/**
 *  电话号码校验
 *
 *  @param phoneNumberStr 电话号码
 *
 *  @return 校验通过返回YES
 */
-(BOOL)checkoutPhoneNumber:(NSString *)phoneNumberStr;
@end
