//
//  main.m
//  Node
//
//  Created by YUYO on 2018/11/22.
//  Copyright © 2018年 YUYO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYNodeList.h"
#import "YYNode.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        YYNodeList *nodeList = [[YYNodeList alloc]initWithData:0];
        [nodeList printListNode];
        
        for (int i = 0; i < 10; i++) {
            [nodeList appendNode:i+1];
        }
        [nodeList printListNode];
        
        NSLog(@"========");
//        [nodeList deleteNode:0];
//        [nodeList printListNode];
//        NSLog(@"head：%d",nodeList.head.data);
//        NSLog(@"last：%d",nodeList.last.data);
//        NSLog(@"========reverse");
//        [nodeList reverseNodeListMethod1];
//        [nodeList printListNode];
//        NSLog(@"head：%d",nodeList.head.data);
//        NSLog(@"last：%d",nodeList.last.data);
//
//        NSLog(@"========reverse2");
//        [nodeList reverseNodeListMethod2];
//        [nodeList printListNode];
//        NSLog(@"head：%d",nodeList.head.data);
//        NSLog(@"last：%d",nodeList.last.data);
//
        
        [nodeList reverseNodeListMethod3:nodeList.head];
        [nodeList printListNode];
        NSLog(@"head：%d",nodeList.head.data);
        NSLog(@"last：%d",nodeList.last.data);
    }
    return 0;
}
