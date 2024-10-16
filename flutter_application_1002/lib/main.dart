import 'package:flutter/material.dart';
// 구글의 디자인 위젯을 사용하겠다.
// import 'package:flutter/cupertino.dart';
// // ios 디자인 위젯 사용

String URL = 'assets/images/image.jpg';

// MyApp 위젯을 전달하여 앱을 시작
void main() => runApp(MyApp());

TextEditingController _controller =
    TextEditingController(text: "nari907@naver.com");

// StatelessWidget -> 상태가 변하지 않는 위젯
// 상태가 없는 UI 정의할 때 사용됨
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // context -> 위젯이 어디에 위치하고 있는지, 어떤 관계를 가지는지 설명하는 객체
    return MaterialApp(
        title: 'TestApp',
        home: Scaffold(
            appBar: AppBar(
                // 텍스트가 바뀌는 경우가 없음
                // 컴파일 시점에 생성됨
                title: const Text('Welcome to Flutter')),
            body: Center(
                child: TextField(
                    controller: _controller, // 이 컨트롤러에서 textfield를 제어하겠다
                    onChanged: (String val) => print(_controller.text.length),
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'you@email.com',
                      labelText: '이메일을 입력해 주세요',
                      icon: Icon(Icons.contact_mail),
                    )))));
  }
}
