//: Playground - noun: a place where people can play

import UIKit


/*:
 ---
 ## Practice
 - 이름을 입력 값으로 받아서 출력하는 함수
 - 나이를 입력 값으로 받아서 출력하는 함수
 - 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
 - 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
 - 정수를 두 개 입력받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
 - 4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수
 ---
 */




//1. 이름을 입력 값으로 받아서 출력하는 함수

func namePrint(name: String) {
    print(name) // JhDAT
}

namePrint (name: "JhDAT")

//2. 나이를 입력 값으로 받아서 출력하는 함수

func agePrint(age: Int) {
    print(age) // 20
}

agePrint (age: 20)

//3. 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수

func aboutMe (name: String, age: Int) {
    print("I'm \(name), age \(age)") // I'm JhDAT, age 25
}

aboutMe (name: "JhDAT", age: 25)

//4. 정수 하나 입력받아 2의 배수 여부를 반환하는 함수

func multiplesOfTwo (_ integer: Int) -> Int {
    return integer * 2  // 20
}

multiplesOfTwo (10)  // 20


//5. 정수를 2개 입력받아 곱한 결과를 반환하느 함수 (파라미터 하나의 기본 값은 10)

func multiples (firstNum number1: Int, secondNum number2: Int = 10) -> Int {
    return number1 * number2 // 200
}

multiples(firstNum: 10, secondNum: 20)  // 200


//6. 4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수
func avegOfTestScore (korean: Double, english: Double, math: Double, science: Double) -> Double {
    return (korean + english + math + science) / 4.0  // 70.375
}

avegOfTestScore (korean: 80.0, english: 75.5, math: 90.6, science: 35.4) // 70.375











