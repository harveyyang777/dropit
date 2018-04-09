//
//  DropitBehavior.m
//  animateDemo
//
//  Created by harvey on 2018/4/9.
//  Copyright © 2018年 harvey. All rights reserved.
//

#import "DropitBehavior.h"
@interface DropitBehavior()
@property (strong,nonatomic) UIGravityBehavior * gravity;
@property (strong,nonatomic) UICollisionBehavior *collider;

@end

@implementation DropitBehavior

-(UIGravityBehavior *)gravity{
    if(!_gravity){
        _gravity = [[UIGravityBehavior alloc]init];
        _gravity.magnitude = 0.9;
        
       
    }
    return _gravity;
}

-(UICollisionBehavior *)collider{
    if(!_collider){
        _collider = [[UICollisionBehavior alloc]init];
        _collider.translatesReferenceBoundsIntoBoundary = YES;
        
    }
    return _collider;
}

-(instancetype)init{
    self = [super init];
    [self addChildBehavior:self.gravity];
    [self addChildBehavior:self.collider];
    return self;
}
-(void)addItem:(id<UIDynamicItem>)item{
    [self.gravity addItem:item];
    [self.collider addItem:item];
}

-(void)removeItem:(id<UIDynamicItem>)item{
    [self.gravity removeItem:item];
    [self.collider removeItem:item];
}
@end
