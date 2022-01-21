import 'package:flutter/material.dart';
import 'main.dart';

class Chat extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   
        leading: IconButton(onPressed: () {
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => MyApp()),);
        },
         icon:Icon(Icons.arrow_back), ),
        
        title: Text('Chat'),
        actions: [  
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_add))
        ],
      ),
      body: Center(child: Text('Chat' , style: TextStyle(fontSize: 60),),),
    );
  }
}