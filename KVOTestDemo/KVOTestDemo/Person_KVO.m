//
//  Person_KVO.m
//  KVOTestDemo
//
//  Created by 黄华 on 2017/10/17.
//  Copyright © 2017年 huanghua. All rights reserved.
//

#import "Person_KVO.h"
#import <objc/runtime.h>
#import "ViewController.h"

@implementation Person_KVO

- (void)setName:(NSString *)name{
    
    [super setName:name];
    
    id observer = objc_getAssociatedObject(self, @"observer");
    
    [observer hh_observeValueForKeyPath:@"name" ofObject:self change:nil context:nil];
}

@end
