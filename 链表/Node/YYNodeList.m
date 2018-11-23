//
//  YYNodeList.m
//  Node
//
//  Created by YUYO on 2018/11/22.
//  Copyright © 2018年 YUYO. All rights reserved.
//

#import "YYNodeList.h"
#import "YYNode.h"

@implementation YYNodeList

- (instancetype)initWithData:(int)data {
    if (self = [super init]) {
        YYNode *node = [[YYNode alloc]initWithData:data];
        self.head = node;
        self.last = node;
    }
    return self;
}

- (void)appendNode:(int)data {
    YYNode *node = [[YYNode alloc]initWithData:data];
    self.last.next = node;
    self.last = node;
}

- (void)deleteNode:(int)data {
    if (self.head == nil) {
        return;
    }
    
    while (self.head.data == data) {
        self.head = self.head.next;
    }
    
    YYNode *node = self.head.next;
    YYNode *tmpNode = self.head;
    while (node) {
        if (node.data == data) {
            tmpNode.next = node.next;
            node = node.next;
            continue;
        }
        tmpNode = node;
        node = node.next;
    }
    self.last = tmpNode;
}

- (void)printListNode {
    YYNode *node = self.head;
    while (node) {
        NSLog(@"%d",node.data);
        node = node.next;
    }
}

//使用3个指针遍历单链表，逐个链接点进行反转。
- (void)reverseNodeListMethod1 {
    if (!self.head) {
        return;
    }
    YYNode *p = self.head;
    YYNode *q = self.head.next;
    p.next = nil;
    self.last = p;
    YYNode *r;
    
    while (q) {
        r = q.next;
        q.next = p;
        p = q;
        q = r;
    }
    self.head = p;
}

//从第2个节点到第N个节点，依次逐节点插入到第1个节点(head节点)之后，最后将第一个节点挪到新表的表尾。
- (void)reverseNodeListMethod2 {
    if (!self.head) {
        return;
    }
    YYNode *p = self.head.next;
    YYNode * q;
    while (p.next) {
        q = p.next;
        p.next = q.next;
        q.next = self.head.next;
        self.head.next = q;
    }
    
    p.next = self.head;
    self.head = q;
    self.last = p.next;
    self.last.next = nil;
}

//递归
- (void)reverseNodeListMethod3:(YYNode *)tmpNode {
    if (!tmpNode) {
        
        return;
    }
    if (tmpNode.next == nil) {
        self.last = tmpNode;
        return;
    }
    YYNode *r = tmpNode.next;
    tmpNode.next = r.next;
    YYNode *lastHead = self.head;
    self.head = r;
    self.head.next = lastHead;
    [self reverseNodeListMethod3:tmpNode];
    
}


/**
 判断是否存在环
 */
+ (BOOL)checkHaveLoop:(YYNodeList *)nodeList {
    YYNode * slow = nodeList.head;
    YYNode * fast = nodeList.head;
    
    while (slow.next != nil && fast.next.next != nil) {
        slow = slow.next;
        fast = fast.next.next;
        if (slow == fast) {
            return YES;
        }
    }
    return NO;
}
@end
