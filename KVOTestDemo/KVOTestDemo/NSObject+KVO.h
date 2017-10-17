//
//  NSObject+KVO.h
//  KVOTestDemo
//
//  Created by 黄华 on 2017/10/17.
//  Copyright © 2017年 huanghua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (KVO)
- (void)hh_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;
@end
