//
//  ViewController.m
//  block测试
//
//  Created by csip on 16/1/5.
//  Copyright © 2016年 ariel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *showLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self getDataScope:@"do" success:^(NSString *token) {
        NSLog(@"函数执行，%@",token);
    } failture:^(NSError *fail) {
        NSLog(@"failture函数执行，%@",fail);
    }];
}

#pragma mark - block函数作为参数

//优点：我们可以在一个函数里先传来一个参数。。。处理，，，处理完成后有直接在本函数里使用，，，再传给其block函数参数，相当于我们写了好几个函数，大大地减少了函数的个数，非常方便。


//直接在参数里定义block函数
//block函数作为函数的参数，此时参数名就是函数名
-(void)getDataScope:(NSString *)scope success:(void (^)(NSString *token))success failture:(void (^)(NSError *fail))failture{
    NSLog(@"执行第一步：scope：%@",scope);
    
    if ([scope isEqualToString:@"do"]) {
        NSLog(@"第二步执行");
        
        //触发参数block函数，这就是回调。从函数一调用过来的，经过函数二执行处理下，又会回调到函数一】
        success(@"执行success函数");
    }else{
        NSError *error;
        failture(error);
    }
    
}

#pragma mark - block 传值
-(void)sendData{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
