import 'package:flutter/material.dart';
import 'home.dart';
import 'feed.dart';
import 'chat.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: 'Flutter Demo',
     home: MyHomePage(title: 'home')

    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex=0;
    final screens= [ 
      Home(),
      Feed(),
      Chat(),
      Profile()        
        
    ];

    @override
  Widget build(BuildContext context) {
        return Scaffold(
      body: screens[currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
       
        iconSize: 40, 
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,        
        unselectedItemColor: Colors.white70, 
         currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [   
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home', 
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.feed),
          label: 'Feed', 
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Chat', 
          ),  
          BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'profile', 
          ),
      ],),
    );
  }
}
