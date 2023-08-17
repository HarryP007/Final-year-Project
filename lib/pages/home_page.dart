import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/drawer.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Flutter"),
      ),
      body: Center(
        child: Container(
            child: Text("Welcome to Flutter  ", style: TextStyle( fontStyle: FontStyle.italic)),

          ),
        ),
        drawer: MyDrawer(),
      );
  }
}