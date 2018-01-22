//
//  LoginController.m
//  aresmd
//
//  Created by Retina on 2018/1/22.
//  Copyright © 2018年 Retina. All rights reserved.
//

#import "LoginController.h"
#import "LoginCheck.h"
#import "AppAlert.h"

@interface LoginController ()

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginBtnClick:(id)sender {
    if (![self loginCheck:self.phoneText.text])
    {
        [AppAlert showAlertController:self Title:@"电话号码不正确" message:nil actionTitle:@"确定"];
    }else if([self.passWordText.text isEqualToString:@""])
    {
        [AppAlert showAlertController:self Title:@"密码为空" message:nil actionTitle:@"确定"];
    }else
    {
        NSLog(@"登录成功");
    }
    
}

-(BOOL)loginCheck:(NSString*)phoneNumberStr
{
    //表示以1开头，在加上后面的\d表示数字[0-9]的10位，总共加起来11位结束.\\d,OC转义字符\d需要前面再加\.
    NSString *regex = @"^1\\d{10}$";
    
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    BOOL isMatch = [pred evaluateWithObject:phoneNumberStr];
    return isMatch;
}

@end
