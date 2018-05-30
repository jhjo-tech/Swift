//: Playground - noun: a place where people can play

import UIKit
/*
# 하샤드 수 구하기
- 하샤드 수 : 자연수 N의 각 자릿수 숫자의 합을 구한 뒤, 그 합한 숫자로 자기 자신이 나누어 떨어지는 수
ex) 18의 자릿수 합은 1 + 8 = 9이고, 18은 9로 나누어 떨어지므로 하샤드 수.

# 2개의 정수를 입력했을 때 그에 대한 최소공배수와 최대공약수 구하기
ex) Input : 6, 9   ->  Output : 18, 3

*/


//# 하샤드 수 구하기
//- 하샤드 수 : 자연수 N의 각 자릿수 숫자의 합을 구한 뒤, 그 합한 숫자로 자기 자신이 나누어 떨어지는 수
//ex) 18의 자릿수 합은 1 + 8 = 9이고, 18은 9로 나누어 떨어지므로 하샤드 수.

func harshadNumber(_ num: Int){

    var remainder: Int = 1
    var count: Int = 1
    var sum: Int = 0

    while true {
        if num / count == 0 { break }
        count *= 10
        }

    remainder = num
    while true {
        count /= 10
        sum += (remainder/count)
        remainder = remainder % count
        if count == 1 {
            remainder = 0
            break
        }
    }

    if num % sum == 0 {
        print("\(num)은 \(sum)으로 나누어 떨어지므로 하샤드 수입니다.")
    } else {
        print("\(num)은 \(sum)으로 나누어 떨어지지 않음으로 하샤드 수가 아닙니다.")
    }
}
harshadNumber(18)
harshadNumber(1919195)
harshadNumber(19191919)
harshadNumber(1919191919)

//# 2개의 정수를 입력했을 때 그에 대한 최소공배수와 최대공약수 구하기
//ex) Input : 6, 9   ->  Output : 18, 3

func commonMultipleDivisor (_ num1: Int, _ num2: Int) {

    var greatestCommonMultiple: Int = 0
    var lowestCommonDivisor: Int = 0


    // greatest common divisor, 유클리드 호제법

    for numberCount in 1...num1 {
        if num1 % numberCount == 0 && num2 % numberCount == 0 {
            greatestCommonMultiple = numberCount
        }
    }
    print("greatestCommonMultiple(최대공약수) = ", greatestCommonMultiple)

//      least common multiple
    
    let stroagedNumber1: Int = num1 / greatestCommonMultiple
    let stroagedNumber2: Int = num2 / greatestCommonMultiple
    
    lowestCommonDivisor = (stroagedNumber1 * stroagedNumber2) * greatestCommonMultiple
    print("lowestCommonDivisor(최소공배수) = ", lowestCommonDivisor, "\n")
    

}
commonMultipleDivisor(6,9)
commonMultipleDivisor(444, 222)
commonMultipleDivisor(18, 63)
commonMultipleDivisor(53, 4364)
