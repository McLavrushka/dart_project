import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/home.dart';
class Lenta extends StatelessWidget {
  const Lenta({Key? key}) : super(key: key);
  final _sizeTextBlack = const TextStyle(fontSize: 15.0, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(253, 1, 0, 20),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ],
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('*Блок находится в разработке*',style: TextStyle(fontSize: 15),)
          ],
        ),
      ),
    );
  }
}


