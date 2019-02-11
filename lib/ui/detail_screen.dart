import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  DetailScreen({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$title Screen"),
      ),
      body: Center(
        // child: Text("First Screen"),
        child: FlatButton(child: Text("Back to First Screen"),
        onPressed: () {
         Navigator.pop(context);
        })
      ),
    );
  }
}