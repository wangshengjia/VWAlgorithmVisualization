//
//  VWDeque.h
//  VWAlgorithmVisualization
//
//  Created by WANG ShengJia on 12/28/13.
//  Copyright (c) 2013 Victor Shengjia Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VWDeque : NSObject

+ (instancetype)deque;

- (id)front;
- (id)back;
- (id)popFront;
- (id)popBack;
- (NSArray *)allItems;
- (void)pushBack:(id)object;
- (void)pushFront:(id)object;

- (BOOL)isEmpty;
- (void)clear;

@end
