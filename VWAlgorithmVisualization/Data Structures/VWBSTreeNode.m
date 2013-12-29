//
//  VWBSTreeNode.m
//  VWAlgorithmVisualization
//
//  Created by WANG ShengJia on 12/29/13.
//  Copyright (c) 2013 Victor Shengjia Wang. All rights reserved.
//

#import "VWBSTreeNode.h"

@interface VWBSTreeNode ()

@end

@implementation VWBSTreeNode

- (instancetype)initWithObject:(id)item{
	if (self = [super init]) {
		_object = item;
	}

	return self;
}

- (void)printDescription{
	NSLog(@"%@", [self.object description]);
}

@end
