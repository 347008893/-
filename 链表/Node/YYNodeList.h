//
//  YYNodeList.h
//  Node
//
//  Created by YUYO on 2018/11/22.
//  Copyright © 2018年 YUYO. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class YYNode;
@interface YYNodeList : NSObject
@property (nonatomic, strong) YYNode *head;
@property (nonatomic, strong) YYNode *last;
- (instancetype)initWithData:(int)data;
- (void)appendNode:(int)data;
- (void)deleteNode:(int)data;
- (void)printListNode;
//使用3个指针遍历单链表，逐个链接点进行反转。
- (void)reverseNodeListMethod1;

//从第2个节点到第N个节点，依次逐节点插入到第1个节点(head节点)之后，最后将第一个节点挪到新表的表尾。
- (void)reverseNodeListMethod2;

//递归
- (void)reverseNodeListMethod3:(YYNode *)tmpNode;

/**
 判断是否存在环
 */
+ (BOOL)checkHaveLoop:(YYNodeList *)nodeList;

//中间结点
+ (YYNode *)getMiddleNode:(YYNodeList *)nodeList;

//合并有序链表
+ (YYNodeList *)mergeNodeList:(YYNodeList *)nodeList1 nodeList2:(YYNodeList *)nodeList2;
@end

NS_ASSUME_NONNULL_END
