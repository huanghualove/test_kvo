//
//  NSObject+KVO.m
//  KVOTestDemo
//
//  Created by 黄华 on 2017/10/17.
//  Copyright © 2017年 huanghua. All rights reserved.
//

#import "NSObject+KVO.h"
#import <objc/runtime.h>
#import "Person_KVO.h"

@implementation NSObject (KVO)

- (void)hh_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context{
    
    //修改isa指针
    object_setClass(self, [Person_KVO class]);
    
    //绑定观察者对象
    objc_setAssociatedObject(self, @"observer", observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

}

@end
