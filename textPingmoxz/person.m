//
//  person.m
//  blockText
//
//  Created by 张君泽 on 16/7/20.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import "person.h"

@implementation person
- (person *(^)())personEat{
    return ^{
        NSLog(@"写字");
        return self;
    };

}
- (person *(^)(NSString *))personLove{
    return ^(NSString *name){
        NSLog(@"找对象%@",name);
        return self;
    };
}
- (person *(^)(NSString * text))personText{
    return ^(NSString *text){
        NSLog(@"写字%@",text);
        return self;
    };
}
- (person *(^)(NSString *string))personTel{
    return ^(NSString *string){
        NSLog(@"写字%@",string);
        return self;
    };

}
@end
