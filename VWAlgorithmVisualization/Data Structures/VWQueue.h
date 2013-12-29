//
//  VWQueue.h
//  VWAlgorithmVisualization
//
//  Created by WANG ShengJia on 12/28/13.
//  Copyright (c) 2013 Victor Shengjia Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VWQueue : NSObject

+ (instancetype)queue;
- (instancetype)initWithQueueSize:(NSUInteger)size;
+ (instancetype)queueWithSize:(NSUInteger)size;

- (id)head;
- (id)dequeue;
- (NSArray *)allItems;
- (void)enqueue:(id)object;

- (BOOL)isEmpty;
- (BOOL)isFull;

- (void)clear;

@end
