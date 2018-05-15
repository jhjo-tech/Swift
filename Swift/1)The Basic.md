# The Basic

## 로그 출력을 위한 함수 - Free Function


```
var num = 1
print(num) // 1

print("숫자", num) // 숫자 1
print("숫자는 \(num) 이다") //숫자는 1이다
print("숫자" + String(num)) //숫자 1
```



## Comments - 주석


```
// : 한줄 주석

/// : 한줄주석 + Quick help Markup

/* */ : 멀티라인 주석
// comment
/* comment
/* comment */
*/
```
Quick Help - (Option-clicking)


## Semicolon (;)


Swift에서는 Semicolon을 사용해도 되고 사용하지 않아도 됩니다.

그러나 한 라인에 여러 구문(다중 명령)을 사용하고 싶은 경우에는 세미콜론을 사용해야 합니다.

```
print("semicolon"); // semicolon
print("semicolon") // semicolon

print(1); print(2); print(3);
//1
//2
//3
```