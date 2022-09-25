import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {


  final formKey = new GlobalKey<FormState>();




  final _sizeTextBlack = const TextStyle(fontSize: 15.0, color: Colors.black);
  final _sizeTextWhite = const TextStyle(fontSize: 15.0, color: Colors.white);
  final _sizeTextButton = const TextStyle(fontSize: 18.0, color: Colors.white);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
        title: Text('Лицей Бауманский'),
    centerTitle: true,
    backgroundColor: Color.fromRGBO(253, 1, 0, 20),
    ),
    body: Center(
      child: Form (
        key: formKey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/LiceumIcon.jpeg'),
                radius: 100,
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Почта"),
                  keyboardType: TextInputType.emailAddress,
                  style: _sizeTextBlack,
                ),
                width: 350.0,
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Пароль"),
                  obscureText: true,
                  style: _sizeTextBlack,
                ),
                width: 350.0,
                padding: EdgeInsets.only(top: 10.0),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(253, 1, 0, 20),
                      ),
                      onPressed: () {
                      Navigator.pushReplacementNamed(context, '/todo');},
                      //Navigator.pushNamedAndRemoveUntil(context, '/todo', (route) => false);
                      //Navigator.pushNamed(context, '/todo');
                      child: Text('Войти', style: _sizeTextButton),
                      ))
              // Text('Нажмите \"Продолжить\", чтобы авторизоваться и отркыть список дел', style: TextStyle(color: Colors.black87)),
            ]
        )
      )
    ));
  }
}

