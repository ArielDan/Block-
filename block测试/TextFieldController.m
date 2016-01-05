//
//  TextFieldController.m
//  block测试
//
//  Created by csip on 16/1/5.
//  Copyright © 2016年 ariel. All rights reserved.
//

#import "TextFieldController.h"

@implementation TextFieldController

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.inputTextF becomeFirstResponder];
}

@end
