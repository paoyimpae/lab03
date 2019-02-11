import 'package:flutter/material.dart';
import 'detail_screen.dart';
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        // child: Text("First Screen"),
        child: FlatButton(child: Text("Go to Detail Screen"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(title: "Hello")));
        })
      ),
    );
  }
}