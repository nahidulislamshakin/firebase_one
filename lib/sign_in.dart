import 'package:flutter/material.dart';
import 'auth.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService auth = AuthService();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign in Anon"),
          centerTitle: true,
          backgroundColor: Colors.brown[400],
        ),
        backgroundColor: Colors.brown[100],
        body: Center(
          child: Container(
              child: RaisedButton(
                  onPressed: () async {
                    dynamic result = await auth.signInAnon();
                    if (result == null) {
                      print("sign in error");
                    } else {
                      print("sign in\n$result");
                    }
                  },
                  child: Text(
                    "sign in",
                    style: TextStyle(fontSize: 20),
                  ))),
        ));
  }
}
