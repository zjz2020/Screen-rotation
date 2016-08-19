//
//  ViewController.m
//  textPingmoxz
//
//  Created by 张君泽 on 16/8/18.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import "ViewController.h"
#import "person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.view.backgroundColor = [UIColor grayColor];
    void (^textBlock)(NSString *string) = ^(NSString *string){
        NSLog(@"你好  %@",string);
    };
    
        textBlock(@"张三");
    //    textBlock(@"李四");
    person *persons = [[person alloc] init];
    //    persons.personEat().personTel(@"文档").personTel(@"15836022625");
    persons.personLove(@"张三").personEat(@"狗肉");
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (BOOL)shouldAutorotate
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return NO;
    }
    return YES;
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAll;
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    NSLog(@"UIViewController will rotate to Orientation: %zd", toInterfaceOrientation);
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    NSLog(@"did rotated to new Orientation, view Information %@", self.view);
}

@end

