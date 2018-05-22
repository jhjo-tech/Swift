//: Playground - noun: a place where people can play

import UIKit

/*
 1. 두 개의 정수를 입력받아 두 수를 하나로 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환)
 2. 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
 3. 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)
 4. 여러 등급을 입력받아 그 학점의 평균을 반환해주는 함수
 5. 윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)
 6. 세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수
 7. 특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")
*/

//1. 두 개의 정수를 입력받아 두 수를 하나로 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환)

func sum(_ num1: Int, _ num2: Int) {
    print("\(num1) + \(num2) = \(num1 + num2)")
}
sum(1, 5)

2. 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수

func stringCompered (string1: String, string2: String) {
    if string1 == string2 {
        print("\(string1)와/과 \(string2)는 같습니다.")
    } else {
        print("\(string1)와/과 \(string2)는 다릅니다..")
    }
}

stringCompered(string1: "jang", string2: "jang")
stringCompered(string1: "jang", string2: "nano")

//3. 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)

func gread (num1: Double) -> String {
    guard num1 <= 5 else { return "범위를 벗어난 값입니다. 다시 입력해주세요 Range: 5.0 ~ 0점까지" }

    switch num1 {
    case 4.5 ... 5.0:
        return "당신의 등급은 A+ 입니다."
    case 4.0 ... 4.4:
        return "당신의 등급은 A 입니다."
    case 3.5 ... 3.9:
        return "당신의 등급은 B+ 입니다."
    case 3.0 ... 3.4:
        return "당신의 등급은 B 입니다."
    case 2.5 ... 2.9:
        return "당신의 등급은 C+ 입니다."
    case 2.0 ... 2.4:
        return "당신의 등급은 C 입니다."
    default:
        return "당신의 등급은 D 입니다."
    }
}

print(gread(num1: 6))
print(gread(num1: 4.3))
print(gread(num1: 3.3))
print(gread(num1: 2.3))
print(gread(num1: 1.3))

//4. 여러 등급을 입력받아 그 학점의 평균을 반환해주는 함수
//("A+": 4.5, "A": 4.0, "B+": 3.5, "B": 3, "C+": 2.5, "C": 2.0, "D": 1 )

func avrgGread (_ gread1: String, _ gread2: String, _ gread3: String, _ gread4: String, _ gread5: String) -> Double {
    var sum: Double = 0

    let greads = [gread1, gread2, gread3, gread4, gread5]   //parameter Array

    for gread in greads {
        switch gread {
        case "A+":
            sum += 4.5
        case "A":
            sum += 4.0
        case "B+":
            sum += 3.5
        case "B":
            sum += 3.0
        case "C":
            sum += 2.0
        case "D":
            sum += 1.0
        default:
            print("잘못된 입력값이 있습니다. \n현재입력값 = \(gread1), \(gread2), \(gread3), \(gread4), \(gread5)\n입력 ragne = A+, A, B+, B-, C, D")
        }
    }
    return (sum / Double(greads.count))
}

avrgGread("A", "A", "A", "A", "A")


//5. 윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)

func leapyear (year: Int) {

    if year % 400 == 0 {
        print("\(year)년은 윤년입니다.")
    } else if year % 100 == 0{
        print("\(year)년은 윤년이 아닙니다.")
    } else if year % 4 == 0 {
        print("\(year)년은 윤년입니다.")
    }else {
        print("\(year)년은 윤년이 아닙니다.")
    }
}

leapyear(year: 2016)
leapyear(year: 2017)
leapyear(year: 2018)
leapyear(year: 2019)
leapyear(year: 2020)


//6. 세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수

func positiveAndNegetive(num1: Int, num2: Int, num3: Int) -> Bool {

    var mul: Int = 1
    mul = num1 * num2 * num3

    switch true {
    case mul == 0:
        print ("0입니다. 다시 입력해주세요.")
    case mul < 0:
        return false
    case mul > 0:
        return true
    default:
        print ("오류입니다")
    }
    return true
}
print(positiveAndNegetive(num1: 2, num2: -2, num3: 2))


//7. 특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")

func returnOfText (monthNumber: Int) -> String {
    let dicMonth = [1: "JAN", 2: "Feb", 3: "Mar", 4: "Apr", 5: "May", 6: "Jun", 7: "Jul" , 8: "Agu" , 9: "Sept" , 10: "Oct", 11: "Nov", 12: "Dec"]
    
    guard monthNumber > 0 else { return "1 ~ 12(월)까지만 입력 바랍니다"}
    
    return ("\(monthNumber)월달은 \(dicMonth[monthNumber]!)입니다.")
}

print(returnOfText(monthNumber: 2))






