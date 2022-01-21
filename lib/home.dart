import 'package:flutter/material.dart';
import 'package:new_app/drawer.dart';

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Draw(),
      appBar: AppBar(  
       // leading: Icon(Icons.menu), 
        title: Text('Home'),
        actions: [    
            IconButton(onPressed: () {
             }, icon: Icon(Icons.search),tooltip: 'search',),
                 IconButton(onPressed: () {  

                    final  snackBar = SnackBar(  
                        content: Text("notification"),
                        action: SnackBarAction (  
                          label: 'Undo',
                          onPressed: () {},
                        ),
                      );

                 },              
                      icon: Icon(Icons.notification_add) , tooltip: 'search' ),
       ],
      ),
      body: Image(image: NetworkImage('https://media.gettyimages.com/photos/modern-custom-suburban-home-exterior-picture-id1255835530?s=612x612'),),
      );
  }
}