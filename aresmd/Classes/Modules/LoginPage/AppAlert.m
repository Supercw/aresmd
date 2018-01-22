//
//  AppAlert.m
//  aresmd
//
//  Created by Retina on 2018/1/22.
//  Copyright © 2018年 Retina. All rights reserved.
//

#import "AppAlert.h"

@implementation AppAlert

+(void)showAlertController:(UIViewController*)vc Title:(NSString *)title message:(NSString*)msg actionTitle:(NSString*)aTitle
{
    UIAlertController *alert=  [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:aTitle style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:cancelAction];
    [vc presentViewController:alert animated:YES completion:nil];
}

@end
