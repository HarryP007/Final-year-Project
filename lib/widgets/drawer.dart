import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final ImageUrl = "https://www.freepik.com/free-vector/businessman-character-avatar-isolated_6769264.htm#query=user&position=0&from_view=keyword&track=sph";
    return Drawer(
      child: Container(
        color: Colors.orange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
             
              accountName: Text("Chandan Dani"), 
              accountEmail: Text("chandandani00@gmail.com"),
              currentAccountPicture : CircleAvatar(
                backgroundImage: NetworkImage(ImageUrl)
              ),
              )
            ),
            const ListTile(
              leading: Icon(
              CupertinoIcons.home
              ),
              title: Text(
                "Home",
                textScaleFactor:1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
            ),
            const ListTile(
              leading: Icon(
              CupertinoIcons.profile_circled
              ),
              title: Text(
                "Profile",
                textScaleFactor:1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
            ),
            const ListTile(
              leading: Icon(
              CupertinoIcons.mail
              ),
              title: Text(
                "E-mail",
                textScaleFactor:1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
            ),
          ]
        ),
      ),
    );
  }
   
}