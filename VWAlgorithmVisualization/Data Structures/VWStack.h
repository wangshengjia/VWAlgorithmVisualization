//
//  VWStack.h
//  VWAlgorithmVisualization
//
//  Created by WANG ShengJia on 12/28/13.
//  Copyright (c) 2013 Victor Shengjia Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VWStack : NSObject

+ (instancetype)stack;
- (instancetype)initWithStackSize:(NSUInteger)size;
+ (instancetype)stackWithSize:(NSUInteger)size;

- (id)top;
- (id)pop;
- (NSArray *)allItems;
- (void)push:(id)object;

- (BOOL)isEmpty;
- (BOOL)isFull;

- (void)clear;

@end
