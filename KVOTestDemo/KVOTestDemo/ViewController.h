//
//  ViewController.h
//  KVOTestDemo
//
//  Created by 黄华 on 2017/10/17.
//  Copyright © 2017年 huanghua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


- (void)hh_observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context;

@end

