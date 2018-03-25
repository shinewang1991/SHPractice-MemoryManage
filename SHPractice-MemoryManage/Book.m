//
//  Book.m
//  SHPractice-MemoryManage
//
//  Created by Shine on 24/03/2018.
//  Copyright © 2018 yixia. All rights reserved.
//

#import "Book.h"

@implementation Book

- (void)dealloc{
    
    NSLog(@"Book %f被释放了",_price);
    [super dealloc];   //ARC模式下就不要给super 发送release消息了
}

- (instancetype)initWithPrice:(CGFloat)price{
    if(self = [super init]){
        self.price = price;
    }
    return self;
}
@end
