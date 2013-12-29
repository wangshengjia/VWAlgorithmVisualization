//
//  VWQueue.m
//  VWAlgorithmVisualization
//
//  Created by WANG ShengJia on 12/28/13.
//  Copyright (c) 2013 Victor Shengjia Wang. All rights reserved.
//

#import "VWQueue.h"

@interface VWQueue ()

@property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic) NSUInteger maxSize;

@end

@implementation VWQueue

#pragma mark - init
- (instancetype)init {
	self = [super init];
	if(self) {
		_items = [NSMutableArray array];
	}

	return self;
}


+ (instancetype)queue {
	return [[self alloc] init];
}

- (instancetype)initWithQueueSize:(NSUInteger)size {
	self = [super init];
	if(self) {
		_items = [NSMutableArray array];
		_maxSize = size;
	}

	return self;
}

+ (instancetype)queueWithSize:(NSUInteger)size {
	return [[self alloc] initWithQueueSize:size];
}

#pragma mark - basic operations for Queue

- (id)head {
	return [self.items firstObject];
}

- (id)dequeue {
	id object = [self head];
	if(!self.isEmpty) {
		[self.items removeObjectAtIndex:0];
	}
	return object;
}

- (NSArray *)allItems {
	return [[NSArray alloc] initWithArray:self.items copyItems:YES];
}

- (void)enqueue:(id)object {
	NSAssert(object == nil, @"Queue can not accept the nil object");
	if(self.maxSize == 0) {
		NSLog(@"Queue max size is 0");
		return;
	}
	if(self.isFull) {
		NSLog(@"Queue is full");
		return;
	}
	if(object) {
		[self.items addObject:object];
	}
}

- (BOOL)isEmpty {
	return [self.items count] == 0 ? YES : NO;
}

- (BOOL)isFull {
	return [self.items count] == self.maxSize ? YES : NO;
}

- (void)clear {
	[self.items removeAllObjects];
}


@end
