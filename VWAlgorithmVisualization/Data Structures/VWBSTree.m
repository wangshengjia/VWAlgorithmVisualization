//
//  VWBSTree.m
//  VWAlgorithmVisualization
//
//  Created by WANG ShengJia on 12/29/13.
//  Copyright (c) 2013 Victor Shengjia Wang. All rights reserved.
//

#import "VWBSTree.h"
#import "VWBSTreeNode.h"

@interface VWBSTree ()

@property (nonatomic, strong) VWBSTreeNode *root;
@property (nonatomic, assign) SEL compareSelector;
@property (nonatomic, copy) VWComparator compare;

@end

@implementation VWBSTree

#pragma mark - init

- (instancetype)initWithObject:(id)item compareSelector:(SEL)compareSelector {
	if (self = [super init]) {
		_root = [[VWBSTreeNode alloc] initWithObject:item];
		_compareSelector = compareSelector;
		_compare = nil;
	}

	return self;
}

- (instancetype)initWithObject:(id)item usingComparator:(VWComparator)comparator {
	if (self = [super init]) {
		_root = [[VWBSTreeNode alloc] initWithObject:item];
		_compare = comparator;
	}

	return self;
}

#pragma mark - basic operations for binary search tree

- (id)searchBy:(id)key from:(VWBSTreeNode *)currentNode {
	return nil;
}

- (void)insert:(id)item {
	VWBSTreeNode *newNode = [[VWBSTreeNode alloc] initWithObject:item];
	[self insert:newNode from:self.root];
}

- (void)insert:(VWBSTreeNode *)newNode from:(VWBSTreeNode *)currentNode {
	NSComparisonResult result;
	if(self.compare) {
		result = self.compare(newNode.object, currentNode.object);
	}else{
		// issue and solution: http://stackoverflow.com/questions/7017281/performselector-may-cause-a-leak-because-its-selector-is-unknown
		IMP imp = [newNode.object methodForSelector:self.compareSelector];
		NSComparisonResult (*func)(id, SEL, id) = (void *)imp;
		result = func(newNode.object, self.compareSelector, currentNode.object);
	}
	if (result >= 0) {
		if (!currentNode.rightChild) {
			currentNode.rightChild = newNode;
		}else {
			currentNode = currentNode.rightChild;
			[self insert:newNode from:currentNode];
		}
	}else {
		if (!currentNode.leftChild) {
			currentNode.leftChild = newNode;
		}else {
			currentNode = currentNode.leftChild;
			[self insert:newNode from:currentNode];
		}
	}
}

- (void)remove:(id)item from:(VWBSTreeNode *)currentNode {

}

- (void)traversal{
	[self printTreeFrom:self.root];
}

- (void)printTreeFrom:(VWBSTreeNode *)node{
	[node printDescription];
}

- (void)sort:(NSArray *)items {

}
- (BOOL)isEmpty{
	return self.root == nil;
}

@end
