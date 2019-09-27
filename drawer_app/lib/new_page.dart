import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text("New Page"),
        gradient: LinearGradient(
          colors: [Colors.amber, Colors.redAccent]
        ),
      ),
      body: Center(child: Text(title),),
    );
  }
}