//
//  Student.h
//  SHPractice-MemoryManage
//
//  Created by Shine on 24/03/2018.
//  Copyright © 2018 yixia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Student : NSObject{
    Book *_book;
}
@property int age;
@property Book *book;
- (instancetype)initWithAge:(int)age;
- (void)readBook;

@end
