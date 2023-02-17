import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: ColumnPage(),
    );

  }
  }

  class ColumnPage extends StatelessWidget{
    Widget build(BuildContext context){
      return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 5),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TaskFlutterBeginners1(),
          TaskFlutterBeginners1(),
          TaskFlutterBeginners1(),
        ],
      ),
      ),
      );
    }
  }



class TaskFlutterBeginners1 extends StatelessWidget{
    Widget build(BuildContext context){
    return Stack(
            alignment: Alignment.bottomLeft,
            children: [

          Container(
            height: 180,
             width: double.infinity,
            decoration:BoxDecoration( 
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage("images/art2.png"),
                fit: BoxFit.fill,
              ),
              ),
          ),

           Container(
          margin: EdgeInsets.only(bottom: 20),
          width: double.infinity,
          color: Color.fromARGB(255, 158, 136, 136),
          child: Text(" Text",style: TextStyle(fontSize: 30)),
          ),

          Container(
          width: double.infinity,
          child: Text("  subText",style: TextStyle(fontSize: 20,color: Color.fromARGB(174, 27, 22, 85))),
          decoration:BoxDecoration( 
            color: Color.fromARGB(255, 158, 136, 136),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
          ),
          ],);
  }
  }