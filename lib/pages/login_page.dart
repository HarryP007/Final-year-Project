import 'dart:convert';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      
      child: Column(
        children: [
          Image.asset("assets/undraw_Love_it_uipc.png",
          fit:BoxFit.cover),
           const Text("Welcome",
           style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            )
           ),
           const SizedBox(
            height:20.0,
           ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
             child: Column(
              children: [
                TextFormField(
              decoration: InputDecoration(
                hintText: "Enter User Name",
                labelText: "User Name",
              ),
             ),
             TextFormField(
              obscureText: true, //hidden Password default : false
              decoration: InputDecoration(
                hintText: "Enetr Password",
                labelText: "Password",
              ),
             ),
             const SizedBox(
              height: 20.0,
             ),
             ElevatedButton(
             child: Text("Login"), 
             style: TextButton.styleFrom(),
             onPressed:()
             {
              print("Chadan Dani");
             }, 
             )
              ],
             ),
           )



        ],
      ),
    );
  }
}