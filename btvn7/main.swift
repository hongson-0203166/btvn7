//
//  main.swift
//  btvn7
//
//  Created by Phạm Hồng Sơn on 03/11/2023.
//

import Foundation
//Palindrome Number
func isPalindrome(_ x: Int) -> Bool {
    if String(String(x).reversed()) == String(x){
        return true
    }
        return false
    }

print(isPalindrome(121))

//Roman to Integer
func romanToInt(_ s: String) -> Int {
    var dic: [Character: Int] = [
    "I": 1,
     "V": 5,
     "X": 10,
     "L": 50,
     "C": 100,
     "D": 500,
     "M": 1000
    ]

    var currInt = 0
    var prevInt = 0

    for i in s {
        if let int = dic[i] {
        if int > prevInt {
            currInt += int - 2 * prevInt
        } else {
            currInt += int
        }
        prevInt = int
        }
    }
    return currInt
}


print(romanToInt("IV"))

//Merge Two Sorted Lists
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next;
    }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
       if l1 == nil { return l2 }
       if l2 == nil { return l1 }
       
       if l1!.val < l2!.val
            { l1!.next = mergeTwoLists(l1!.next, l2); return l1 }
       else { l2!.next = mergeTwoLists(l2!.next, l1); return l2 }
   }




