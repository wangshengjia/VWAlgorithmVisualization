//
//  VWBSTreeNode.h
//  VWAlgorithmVisualization
//
//  Created by WANG ShengJia on 12/29/13.
//  Copyright (c) 2013 Victor Shengjia Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VWBSTreeNode : NSObject

@property (nonatomic, strong) id object;
@property (nonatomic, strong) VWBSTreeNode *leftChild;
@property (nonatomic, strong) VWBSTreeNode *rightChild;

- (instancetype)initWithObject:(id)item;

- (void)printDescription;
@end
