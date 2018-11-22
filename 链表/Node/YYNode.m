//
//  YYNode.m
//  Node
//
//  Created by YUYO on 2018/11/22.
//  Copyright © 2018年 YUYO. All rights reserved.
//

#import "YYNode.h"

@implementation YYNode

- (instancetype)initWithData:(int)data
{
    self = [super init];
    if (self) {
        self.data = data;
        self.next = nil;
    }
    return self;
}
@end
