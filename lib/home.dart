import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Card(child: Text("Home",style: TextStyle(color:Colors.black),)));
  }
}
