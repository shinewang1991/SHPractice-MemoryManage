//
//  Student.m
//  SHPractice-MemoryManage
//
//  Created by Shine on 24/03/2018.
//  Copyright © 2018 yixia. All rights reserved.
//

#import "Student.h"

@implementation Student


//原则，谁创建谁释放。 谁retain谁release。 这里的book就是在Student类里retain，必然也在这里release最合适.
- (void)dealloc{
    
    [_book release];
    NSLog(@"Student %d被销毁了",_age);
    [super dealloc];
}

- (instancetype)initWithAge:(int)age{
    if(self = [super init]){
        self.age = age;
    }
    return self;
}

- (void)readBook{
    NSLog(@"当前读的书%f",_book.price);
}

- (void)setBook:(Book *)book{
    
    //先释放以前的成员变量
    [_book release];
    
    //再retain新传进来的对象
    _book = [book retain];
}

- (Book*)book{
    return _book;
}

@end
