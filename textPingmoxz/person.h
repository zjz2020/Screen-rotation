//
//  person.h
//  blockText
//
//  Created by 张君泽 on 16/7/20.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface person : NSObject
- (person *(^)(NSString *string))personText;
- (person *(^)(NSString *string))personTel;
- (person *(^)() )personEat;
- (person *(^)(NSString *string))personLove;
@end
