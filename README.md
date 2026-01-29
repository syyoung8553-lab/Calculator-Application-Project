



 

# 🔢Calculator Application 만들기

Playground에서 로직만 구현했던 계산기에 UI를 더해, 실제 앱으로 완성해보기

## 사용한 기술
- Swift Xcode

## 실행 화면
<img width="385" height="761" alt="image" src="https://github.com/user-attachments/assets/87674494-6ba7-49b6-948d-5f31cfb01138" />


## 코드 요약

1. private func 를 이용하여 연산자, 숫자, 결과를 return 하는 함수를 생성
2. @objc private func를 사용하여 각각의 버튼이 눌렸을때 메소드를 실행
3. Horizantalview를 생성하는 함수를 만들어 각각의 버튼들을 배열로 할당
4. 만든 배열들을 다시 verticalStackView에 할당
