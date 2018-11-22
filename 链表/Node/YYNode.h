//
//  YYNode.h
//  Node
//
//  Created by YUYO on 2018/11/22.
//  Copyright © 2018年 YUYO. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YYNode : NSObject
@property (nonatomic, assign) int data;
@property (nonatomic, strong, nullable) YYNode *next;
- (instancetype)initWithData:(int)data;
@end

NS_ASSUME_NONNULL_END
