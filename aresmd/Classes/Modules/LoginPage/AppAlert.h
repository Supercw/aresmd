//
//  AppAlert.h
//  aresmd
//
//  Created by Retina on 2018/1/22.
//  Copyright © 2018年 Retina. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AppAlert : NSObject
+(void)showAlertController:(UIViewController*)vc Title:(NSString *)title message:(NSString*)msg actionTitle:(NSString *)actionTitle;
@end
