//
//  VWDeque.m
//  VWAlgorithmVisualization
//
//  Created by WANG ShengJia on 12/28/13.
//  Copyright (c) 2013 Victor Shengjia Wang. All rights reserved.
//

#import "VWDeque.h"

@interface VWDeque ()

@property (nonatomic, strong) NSMutableArray *items;

@end

@implementation VWDeque

#pragma mark - init
- (instancetype)init {
	self = [super init];
	if(self) {
	   _items = [NSMutableArray array];
	}

	return self;
}


+ (instancetype)deque {
	return [[self alloc] init];
}

#pragma mark - basic operations for Deque
- (id)front {
	return [self.items firstObject];
}

- (id)back {
	return [self.items lastObject];
}

- (id)popFront {
	id object = [self front];
	if(!self.isEmpty) {
		[self.items removeObjectAtIndex:0];
	}
	return object;
}

- (id)popBack {
	id object = [self back];
	if(!self.isEmpty) {
		[self.items removeLastObject];
	}
	return object;
}

- (NSArray *)allItems {
	return [[NSArray alloc] initWithArray:self.items copyItems:YES];
}

- (void)pushBack:(id)object {
	NSAssert(object == nil, @"Deque can not accept the nil object");
	if(object) {
		[self.items addObject:object];
	}
}

- (void)pushFront:(id)object {
	NSAssert(object == nil, @"Deque can not accept the nil object");
	if(object) {
		[self.items insertObject:object atIndex:0];
	}
}

- (BOOL)isEmpty {
	return [self.items count] == 0 ? YES : NO;
}

- (void)clear {
	[self.items removeAllObjects];
}


@end
