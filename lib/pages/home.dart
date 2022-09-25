import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _userTodo;
  List todoList = [];

  final _sizeTextBlack = const TextStyle(fontSize: 15.0, color: Colors.black);
  final _sizeTextWhite = const TextStyle(fontSize: 15.0, color: Colors.white);
  final _sizeTextButton = const TextStyle(fontSize: 18.0, color: Colors.white);

  @override
  void initState() {
    super.initState();

    todoList.addAll(['Доклад по истории', 'Собрать портфель в школу', 'Проверить почту']);
  }


  void _menuOpen() {
   Navigator.of(context).push(
     MaterialPageRoute(builder: (BuildContext context) {
       return  Scaffold(
         appBar: AppBar(title: Text('Menu'),  backgroundColor: Color.fromRGBO(253, 1, 0, 20),),
         body: Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Padding(padding: EdgeInsets.only(left: 10.0)),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 TextButton(
                     child: Text('Информация об ученике'),
                     style: TextButton.styleFrom(textStyle: _sizeTextBlack,
                     primary: Colors.black87),
                     onPressed: () {}),
                 Padding(padding: EdgeInsets.only(top: 7)),
                 TextButton(
                     child: Text('Расписание'),
                     style: TextButton.styleFrom(textStyle: _sizeTextBlack,
                     primary: Colors.black87),
                     onPressed: () {}),
                 Padding(padding: EdgeInsets.only(top: 7)),
                 TextButton(
                     child: Text('Домашнее задание'),
                     style: TextButton.styleFrom(textStyle: _sizeTextBlack,
                     primary: Colors.black87,),
                     onPressed: () {Navigator.pushNamed(context, '/todo/homework');}),
                 Padding(padding: EdgeInsets.only(top: 7)),
                 TextButton(
                     child: Text('Новости'),
                     style: TextButton.styleFrom(textStyle: _sizeTextBlack,
                     primary: Colors.black87),
                     onPressed: () {
                       Navigator.pushNamed(context, '/todo/lenta');
                     }),
                 Padding(padding: EdgeInsets.only(top: 10)),
                 ElevatedButton(onPressed: () {
                   Navigator.pop(context);
                   Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                 }, child: Text('Выйти', style: _sizeTextButton),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(55, 55, 55, 20)),
                 ),
                 Padding(padding: EdgeInsets.only(left: 15)),
               ],
             ),
           ],
         )
       );
   },)
   );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('Список дел лицеиста'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(1,155,233,100),
        actions: [
          IconButton(
              onPressed: _menuOpen,
              icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(todoList[index]),
                child: Card(
                  child: ListTile(
                      title: Text(todoList[index]),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                        ),
                      onPressed: () {
                        setState(() {
                          todoList.removeAt(index);
                        });
                      },
                      ),
                ),
                ),
            onDismissed: (direction) {
                  //if(direction== DismissDirection.endToStart)
              setState() {
                todoList.removeAt(index);
              }
            },
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(1,155,233,100),
        onPressed: () {
          showDialog(context: context, builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Добавить элемент'),
              content: TextField(
                onChanged: (String value) {
                  _userTodo = value;
                },
              ),
              actions: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    todoList.add(_userTodo);
                  });
                  Navigator.of(context).pop();
                  _userTodo= ' ';
                  }, child: Text('Add'))
              ],
            );
          });
        },
        child: Icon(
          Icons.add_rounded,
          color: Colors.white70
        )
      ),
    );
  }
}
