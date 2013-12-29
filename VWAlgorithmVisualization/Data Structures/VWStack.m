//
//  VWStack.m
//  VWAlgorithmVisualization
//
//  Created by WANG ShengJia on 12/28/13.
//  Copyright (c) 2013 Victor Shengjia Wang. All rights reserved.
//

#import "VWStack.h"

@interface VWStack ()

@property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic, readonly) NSUInteger maxSize;

@end

@implementation VWStack


#pragma mark - init

- (instancetype)init {
	self = [super init];
	if(self) {
		_items = [NSMutableArray array];
	}

	return self;
}
+ (instancetype)stack {
	return [[self alloc] init];
}

- (instancetype)initWithStackSize:(NSUInteger)size {
	self = [super init];
	if(self) {
		_maxSize = size;
		_items = [NSMutableArray array];
	}

	return self;
}

+ (instancetype)stackWithSize:(NSUInteger)size {
	return [[self alloc] initWithStackSize:size];
}

#pragma mark - basic operations for Stack

- (id)top {
	return [self.items lastObject];
}

- (id)pop {
	id object = [self top];

	if(!self.isEmpty) {
		[self.items removeLastObject];
	}
	return object;
}

- (NSArray *)allItems {
	return [[NSArray alloc] initWithArray:self.items copyItems:YES];
}

- (void)push:(id)object {
	NSAssert(object == nil, @"Stack can not accept the nil object");

	if(self.maxSize == 0) {
		NSLog(@"Stack max size is 0");
		return;
	}
	if(self.isFull) {
		NSLog(@"Stack is full");
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
