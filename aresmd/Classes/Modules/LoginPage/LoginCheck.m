//
//  LoginCheck.m
//  aresmd
//
//  Created by Retina on 2018/1/22.
//  Copyright © 2018年 Retina. All rights reserved.
//

#import "LoginCheck.h"

@implementation LoginCheck
-(BOOL)checkoutPhoneNumber:(NSString *)phoneNumberStr
{

    //表示以1开头，在加上后面的\d表示数字[0-9]的10位，总共加起来11位结束.\\d,OC转义字符\d需要前面再加\.
    NSString *regex = @"^1\\d{10}$";
    
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return  [pred evaluateWithObject:phoneNumberStr];
    
}
@end
