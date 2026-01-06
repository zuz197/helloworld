import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        Center(child: Text('Mot nguoi con tim tan vo',style: TextStyle(color:Colors.red,fontSize: 30 ))),
        Icon(Icons.heart_broken, size:100, color:Colors.green),
        Text("Vi yeu dam say mot nguoi",style:TextStyle(color:Colors.blue,fontSize: 23))
        
        ],
      ),
    );
  }
}