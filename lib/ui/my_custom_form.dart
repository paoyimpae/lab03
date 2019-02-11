import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    // TODO: implement createState
      return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Custom Form"),
      ),
      body: Form(
        key: _formkey,
        child: ListView(
          children: <Widget>[
            Image.asset(
              "resources/image0002.jpg", 
              height: 100,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "E-Mail",
                hintText: "Please Input Your E-Mail",
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if(value.isEmpty) {
                  return "Please Input E-Mail";
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Please Input Your Password",
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              keyboardType: TextInputType.text,
              onSaved: (value) => print(value),
              validator: (value) {
                if(value.isEmpty) {
                  return "Please Input Password";
                }
              },
            ),
            RaisedButton(
              child: Text('Continue'),
              onPressed: () {
                _formkey.currentState.validate();
              },
            )
          ],
        ),
      ),
    );
  }
}