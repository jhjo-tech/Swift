//: Playground - noun: a place where people can play

import UIKit

/*
for , while , repeat - while 등을 활용하여 아래 문제들을 구현해보세요.

1. 1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수
2. 정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수
3. 정수 두개를 입력받아 첫 번째 수를 두 번째 수의 횟수만큼 곱한 값을 반환하는 함수
4. 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수
5. 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
6. 정수 하나를 입력받아 그 정수의 약수를 모두 출력하는 함수
7. 2 이상의 정수를 입력받아, 소수인지 아닌지를 판별하는 함수
8. 정수를 입력받아 입력받은 수에 해당하는 자리의 피보나치 숫자를 반환하는 함수
*/




// 1. 1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수

func theRulesOfMultiplication (num1: Int) {
    print("-------------------- \(num1)단! --------------------")
    for num in 1 ... 9 {
        print("\(num1) * \(num) = \(num1 * num)")
    }
    print("----------------------------------------------")
}

theRulesOfMultiplication(num1: 8)



// 2. 정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수

func factorial (num: Int) {
    var mul = 1
    
    for num in 1 ... num {
        mul *= num
    }
    print("--------------------- \(num)! --------------------")
    print("\(num)!은 \(mul) 입니다.")
    print("----------------------------------------------")
}

factorial(num: 3)



// 3. 정수 두개를 입력받아 첫 번째 수를 두 번째 수의 횟수만큼 곱한 값을 반환하는 함수

func num1MultipleOfNum2 (num1 : Int, num2: Int) -> Int {
    var mul = 1
    
    for _ in 1 ... num2 {
        mul *= num1
    }
    return mul
}

num1MultipleOfNum2(num1: 2, num2: 3)



// 4. 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수

func pointSum (num: Int) -> Int {
    var digitNumber: Int = 0 //입력된 값의 자리수
    var numberLength: Int = 1
    var num2: Int
    var sum:Int = 0

    //자리수 만들어 주는 for문
    for _ in 0...Int.max {
        if num / numberLength != 0 {
                numberLength *= 10
                digitNumber += 1
        } else {
            numberLength /= 10
            break
        }
    }
    //자리수 숫자들의 합을 해주는 for문
    for _ in 1...digitNumber {
        num2 = num / numberLength
        sum += num2
        numberLength / 10
    }
    return sum
}

print("각 자리수의 합은 \(pointSum(num: 5))입니다.")         // 5
print("각 자리수의 합은 \(pointSum(num: 55))입니다.")        // 10
print("각 자리수의 합은 \(pointSum(num: 555))입니다.")       // 15
print("각 자리수의 합은 \(pointSum(num: 5555))입니다.")      // 20
print("각 자리수의 합은 \(pointSum(num: 55555))입니다.")     // 25
print("각 자리수의 합은 \(pointSum(num: 555555))입니다.")    // 30
print("각 자리수의 합은 \(pointSum(num: 5555555))입니다.")   // 35



// 5. 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
// 공배수 = 두 수의 공통의 배수

func commonMuliple (num1: Int, num2: Int) {
    for i in 1 ... 100 {
        if i % num1 == 0 && i % num2 == 0 {
            print("3과 5의 공배수는 \(i)입니다.")
        }
    }
}
commonMuliple(num1: 3, num2: 5)



// 6. 정수 하나를 입력받아 그 정수의 약수를 모두 출력하는 함수
// 약수의 예 : 12의 음의 약수는 1, 2, 3, 4, 6, 12입니다.

func divisor(num: Int) {
    for i in 1 ... num {
        if num % i == 0 {
            print("\(num)의 약수 \(i)입니다.")
        }
    }
}

divisor(num: 12)



// 7. 2 이상의 정수를 입력받아, 소수인지 아닌지를 판별하는 함수
// 소수 : 자기자신보다 작은 두 자연수를 곱하여 만들수 없는, 1보다 큰 자연수입니다. 5는 소수 6은 (2 * 3)이 되므로 소수가 아닙니다.

func primeNumber (num1: Int) -> String {
    guard num1 > 1 else { return "2이상의 정수를 입력하세요" }

    let number = [2, 3, 5, 7, 9] // 9이하의 약수
    
    for i in number {
        if num1 == 2 || num1 == 3 || num1 == 5 || num1 == 7 {
            return "\(num1)는 소수 입니다."
        } else if num1 % i == 0 {
            return "\(num1)은 소수가 아닙니다."
        }
    }
    return "\(num1)은 소수입니다."
}

for i in 0...100 {
    print(primeNumber(num1: i))
}




// 8. 정수를 입력받아 입력받은 수에 해당하는 자리의 피보나치 숫자를 반환하는 함수

func fibonacci(num: Int) -> Int {
    guard num > 2 else { return num - 1}

    return fibonacci(num: num - 1) + fibonacci(num: num - 2 )
}

print(fibonacci(num: 5))

