//: Playground - noun: a place where people can play

import UIKit

// i.조장희

public func solution1(_ N : Int) -> Int {
    var binary: Array<Int> = []
    var N: Int = N
    var count: Int = 0
    var sum: Int = 0
    var num: Int = 0
    var num1: Int = 0
    
    
    // 2진수 배열로 만들기
    while N != 0 {
        count += 1
        binary.append(N % 2)
        N /= 2
    }
    
    //마지막이 0일경우 return 0
    guard binary[0] == 1 else { return 0 }
    
    // 모든값이 111일경우 return 0
    for idx in binary {
        sum += idx
        if sum == binary.count {
            sum = 0
            return 0
        }
    }
    
    // 배열의 value를 한개씩 불러들여서 비교
    for value in binary {
        if value == 1 {
            num = 0
            continue
        } else if value == 0 {
            num += 1
            if num > num1 {
                num1 = num
            }
        }
    }
    return num1
}

solution1(1041)
solution1(20)
solution1(15)
solution1(12345)

// i. 한인탁

func binaryGap (_ N: Int) -> Int {
    let str = String(N, radix:2)    //2진수로 변환
    var count1 = 0
    var zeroNum = 0
    
    for countNum in str {
        if countNum == "0" {
            count1 += 1
        } else {
            if  zeroNum <= count1 {
                zeroNum = count1
            }
            count1 = 0
        }
    }
    return zeroNum
}

binaryGap(1233)
binaryGap(1041)
binaryGap(20)
binaryGap(15)
binaryGap(12345)

// i. 이상혁

import UIKit
import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

var binaryArray: [Int] = []
var binaryString: String = ""

func decimalTobinary(_ num: Int) -> String {
    var decimalNumber: Int = num
    
    // 10진수 -> 2진수 변환 (배열)
    while decimalNumber != 0 {
        binaryArray.append(decimalNumber % 2)   // 10진수를 2로 나누어 나머지를 배열에 저장
        decimalNumber = decimalNumber / 2       // 10진수를 2로 나눈 몫을 저장
    }
    
    // 역순으로 저장된 배열을 역순으로 재배치 후 저장
    for index in binaryArray.reversed() {
        binaryString += String(index)
    }
    type(of: binaryString)
    return binaryString // 변환된 2진수 반환
}

public func solution(decimalNumber N : Int){
    let binaryNumber = decimalTobinary(N)   // 10진수 -> 2진수 변환 함수 실행
    var count = 0                           // 0의 갯수 카운트 변수
    var max = 0                             // 0의 최대갯수 저장 변수
    
    // gap 판별
    // 1을 만난 후 다음 1을 만날때까지 0의 갯수를 카운트하여 1을 만나면 카운트를 max에 저장
    // 1을 다시 만나지 못하면 이전에 저장한 max 가 최대값
    for index in binaryNumber {
        if index == "1" {
            if max < count {
                max = count
            }
            count = 0
        } else {
            count += 1
        }
    }
    
    print("binary Number : ", binaryNumber, ", binary Gap : ", max)
}

solution(decimalNumber: 1041)
solution(decimalNumber: 20)
solution(decimalNumber: 15)
solution(decimalNumber: 12345)

// i. 윤원희

public func solution2(_ N : Int) -> Int {
    
    let number = N
    let binary = String(number, radix: 2)
    
    var binarygap = 0
    var zerocount = 0
    
    for i in binary {
        if i == "0" {
            zerocount += 1
        }
        
        if i == "1" {
            if zerocount > binarygap {
                binarygap = zerocount
            }
            
            zerocount = 0
        }
    }
    return binarygap
}


solution2(1041)
solution2(20)
solution2(15)
solution2(12345)
