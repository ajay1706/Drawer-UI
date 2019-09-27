import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
        primarySwatch: Colors.cyan,
      
      ),
      
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 :0.0 ,
        title: Text("Drawer App",
        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        gradient: LinearGradient(
          colors: [Colors.amber, Colors.redAccent]
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Ajay Sharma"),
              accountEmail: Text("ajasharma@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
              ),
              
            ),
            ListTile(            
              title: Text("Page 1"),
              trailing: Icon(Icons.arrow_upward),
            ),
                ListTile(
              title: Text("Page 2"),
              trailing: Icon(Icons.arrow_downward),
            ),
            Divider(),
                ListTile(
             
              title: Text("Close"),
              trailing: Icon(Icons.close),
            )
          ],
        ),
      ),
      body: Container( 
        child: Center(
          child: Text("Home Page"),
        ),
      ),

      
    );
  }
}