import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';

class LoginPage extends StatefulWidget {
  

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      
      child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/undraw_Love_it_uipc.png",
          fit:BoxFit.cover,
          height: 300,
          ),
            Text("Welcome",
           style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            )
           ),
            SizedBox(
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
             SizedBox(
              height: 20.0,
             ),
             /*ElevatedButton(child: Text("Login"), 
             style: TextButton.styleFrom(
              minimumSize:  Size(150,40),
             ),
             onPressed:()
             {
              Navigator.pushNamed(context, MyRoutes.homeRoutes);
             }, 
             )*/
             InkWell( 
              onTap: () async{
                setState(() {
                  changeButton = true;
                });

                await Future.delayed(Duration(milliseconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoutes);
              },
               child: AnimatedContainer(
                duration: Duration(milliseconds: 1),
                width: changeButton ? 100 : 150,
                height: 40,
                alignment: Alignment.center,
                child: changeButton?Icon(Icons.done,color:Colors.white):
                Text("Login", 
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 70, 2, 186),
                    borderRadius: BorderRadius.circular(changeButton ? 20 : 8)
                  ),
               ),
             )
              ],
             ),
           )



        ],
      ),
      )
    );
  }
}