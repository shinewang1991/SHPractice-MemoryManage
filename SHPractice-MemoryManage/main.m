//
//  main.m
//  SHPractice-MemoryManage
//
//  Created by Shine on 24/03/2018.
//  Copyright © 2018 yixia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Book.h"

void test1(Student *stu){
    Book *book = [[Book alloc] initWithPrice:3.5];      //book:1
    stu.book = book;    //book:2
    [book release];     //book:1
    
    
    Book *book2 = [[Book alloc] initWithPrice:4.5];    //book2:1
    stu.book = book2;   //book2:2
    [book2 release];    //book2:1
}

void test2(Student *stu){
    [stu readBook];     //这里就会有野指针问题.因为book在上个函数已经被释放了。 所以需要在Student的book settter方法里对[book retain].
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Student *stu = [[Student alloc] initWithAge:10];   //stu:1
        
        
        test1(stu);    //stu:1  book:1  book2:1
        
        
        test2(stu);    //没有操作引用计数所以不变. stu:1  book:1 book2:1
        
        
        [stu release];  //stu:0  book:1 book2:0   (stu release方法里对book2也调用了release。所以book2计数为0, 而book没人管，计数还是为1，所以book没法被回收，有内存泄露)
        
    }
    return 0;
}
