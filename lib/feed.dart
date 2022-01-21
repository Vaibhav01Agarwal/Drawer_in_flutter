import 'package:flutter/material.dart';
import 'main.dart';

class Feed extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   
        leading: IconButton(
           icon: Icon(Icons.arrow_back),
           onPressed: () {

              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => MyApp() ) );  

           },
           ),
        title: Text('Feed'),
        actions: [  
          IconButton(onPressed:() {}, icon: Icon(Icons.search)),
          IconButton(onPressed:() {}, icon: Icon(Icons.notification_add)),
        ],
      ),
      // I have to but column into my bottom navigation bar body.
      
     
      // Center(child: Text('Feed' , style: TextStyle(fontSize: 60),),),
    );
  }
}