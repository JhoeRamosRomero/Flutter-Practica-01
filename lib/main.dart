import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 01 - Anthony Ramos Romero',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Icon(
                    Icons.keyboard_return,
                  color: HexColor("a8acb2"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Login Now",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: HexColor("3b4554")
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 7.0, horizontal: 0),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
                child: Text(
                    "Please login to continue usign our app.",
                  style: TextStyle(
                    color: HexColor("a8acb2")
                  ),
                ),
              ),
              SizedBox(
                height: 170.0,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Login instantly:",
                  style: TextStyle(
                      color: HexColor("a8acb2")
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonSocialCustom(),
                  ButtonSocialCustom(),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "or Login whith email/mobile",
                  style: TextStyle(
                      color: HexColor("a8acb2")
                  ),
                ),
              ),
              Container(
                child: FieldTextCustom(
                  placeholder: "Usuario",
                  color: Colors.indigo,
                ),
              ),
              Container(
                child: FieldTextCustom(
                  placeholder: "Password",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                      children: [
                        Checkbox(
                            value: true,
                          checkColor: Colors.white,
                        ),
                        Text("Remember Me"),
                      ],
                    )
                  ),
                  SizedBox(
                    width:50,
                  ),
                  Container(
                    child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: HexColor("2059a5")
                        ),
                    ),
                  ),
                ],
              ),
              ButtonLoginCustom(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Don't have an account?"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                        "Register Now",
                        style: TextStyle(
                          color: HexColor("2059a5")
                        ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}

//HexColor("a8acb2")

class FieldTextCustom extends StatelessWidget{

  final String placeholder;
  final Color color;

  const FieldTextCustom({this.placeholder, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35.0,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.fromLTRB(10, 4, 4, 0.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: color == null ? Colors.black : color,
                  blurRadius: 2
              ),
            ]
        ),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            focusedBorder:  InputBorder.none,
            border: InputBorder.none,
            hintText: placeholder,
          ),
        )
    );

  }



}
class ButtonLoginCustom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

      return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        height: 35.0,
        transformAlignment: Alignment.center,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: HexColor("2059a5"),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 2
              ),
            ]
        ),
        child: Text(
            "Login to my account",
            style: TextStyle(
              color: Colors.white
            ),
        ),
      );

  }

}
class ButtonSocialCustom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(10.0),
      width: 150,
      height: 35,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 2
            ),
          ]
      ),
        child: Icon(
            Icons.satellite,
        )
    );

  }
}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}