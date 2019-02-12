//
//  SolutionS.swift
//  sumoftownum
//
//  Created by YUYO on 2019/2/11.
//  Copyright © 2019 YUYO. All rights reserved.
//

import Foundation


class SolutionS: NSObject {
    //两数之和
    func towSum(nums:[Int],target:Int) -> [Int] {
        var map = [Int:Int]()
        var arr = [Int]()
        for (index, value) in nums.enumerated() {
            let complement = target - value
            let hasArr = map.contains(where: { (key,value) -> Bool in
                if complement == value {
                    arr.append(contentsOf: [key,index])
                    return true
                }
                return false
            })
            if hasArr {
                break
            }
            map[index] = value
        }
        return arr
    }
    
    //链表想加
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var p = l1
        var q = l2
        let dummyHead = ListNode(val: 0)
        var curr = dummyHead
        
        var carry = 0
        while p != nil || q != nil {
            let x = p?.val ?? 0
            let y = q?.val ?? 0
            let sum = x + y + carry
            carry = sum / 10
            curr.next = ListNode(val: sum % 10)
            curr = curr.next!
            if p != nil {
                p = p?.next
            }
            if q != nil {
                q = q?.next
            }
        }
        if carry > 0 {
            curr.next = ListNode(val: carry)
        }
        return dummyHead.next
    }
    
    /**
    3. 无重复字符的最长子串
    输入: "pwwkew"
    输出: 3
    解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
    请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
 */
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var map = [Character:Int]()
        var i = 0
        var ans = 0
        
        for j in 0..<s.count {
            let index = s.index(s.startIndex, offsetBy: j)
            if map.keys.contains(s[index]) {
                i = max(map[s[index]]!, i)
            }
            ans = max(j - i + 1, ans)
            map[s[index]] = j + 1
            print(map)
        }
        return ans
    }
    /**
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let n = s.count
        var ans = 0
        for i in 0..<n {
            for j in i+1...n {
                if allUnique(s: s, start: i, end: j) {
                    ans = max(ans, j-i)
                }
            }
        }
        return ans
    }
    
    func allUnique(s: String, start: Int, end: Int) -> Bool {
        var set = Set<Character>()
        for i in start..<end {
            let index = s.index(s.startIndex, offsetBy: i)
            if set.contains(s[index]) {
                return false
            }
            set.insert(s[index])
        }
        return true
    }
    */
    
    
}

class ListNode: NSObject {
    var val:Int
    var next:ListNode?
    init(val:Int) {
        self.val = val
        self.next = nil
    }
}

