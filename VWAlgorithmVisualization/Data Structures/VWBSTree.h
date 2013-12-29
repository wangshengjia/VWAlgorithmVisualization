//
//  VWBSTree.h
//  VWAlgorithmVisualization
//
//  Created by WANG ShengJia on 12/29/13.
//  Copyright (c) 2013 Victor Shengjia Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class VWBSTreeNode;

typedef NSComparisonResult (^VWComparator)(id obj1, id obj2);

@interface VWBSTree : NSObject

- (instancetype)initWithObject:(id)item compareSelector:(SEL)compareSelector;

- (BOOL)isEmpty;
@end
