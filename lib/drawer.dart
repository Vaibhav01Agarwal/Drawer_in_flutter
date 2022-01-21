import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
       padding: EdgeInsets.only(bottom: 1),
        children: [    
          UserAccountsDrawerHeader(
            accountName:  Text('Vaibhav Agarwal') ,
            accountEmail: Text('vaibhavagarwal@gmail.com'),
            currentAccountPicture: CircleAvatar(  
              child: ClipOval(   
                child: Image.asset('lib/image/my_image.jpg',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(  
              image: DecorationImage(   
                image: AssetImage('lib/image/my_image.jpg'),
                fit: BoxFit.cover,
              )
            ),
            ), 

            ListTile(  
            leading: Icon(Icons.group),
            title: Text('New Group'),
            onTap: () => null ,
            ), 

            ListTile(  
            leading: Icon(Icons.contacts),
            title: Text('Contacts'),
            onTap: () => null ,
            ), 


            ListTile(  
            leading: Icon(Icons.call),
            title: Text('Calls'),
            onTap: () => null ,
            ), 
            
            ListTile(  
            leading: Icon(Icons.people),
            title: Text('People Nearby'),
            onTap: () => null ,
            ), 

             ListTile(  
            leading: Icon(Icons.message),
            title: Text('Saved Messages'),
            onTap: () => null ,
            ), 

             ListTile(  
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null ,
            ), 

             ListTile(  
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => null ,
            ), 
            Divider(),

             ListTile(  
            leading: Icon(Icons.insert_invitation_outlined),
            title: Text('Invite Friends'),
            onTap: () => null ,
            ), 

             ListTile(  
            leading: Icon(Icons.featured_play_list),
            title: Text('Features'),
            onTap: () => null ,
            ), 
            
            ],
      ),
      
    );
  }
}
