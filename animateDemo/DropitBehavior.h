//
//  DropitBehavior.h
//  animateDemo
//
//  Created by harvey on 2018/4/9.
//  Copyright © 2018年 harvey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior
- (void)addItem:(id <UIDynamicItem>)item;
-(void)removeItem:(id <UIDynamicItem>)item;
@end
