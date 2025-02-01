import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://static-00.iconduck.com/assets.00/profile-circle-icon-2048x2048-cqe5466q.png ";
    return Drawer(
      child: Container(
        color: Colors.deepPurple[400],
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Samarth"),
                accountEmail: Text("samarthdagade@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                 textScaleFactor: 1.2,      
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Settings",
                 textScaleFactor: 1.2,      
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(     
                Icons.help,
                color: Colors.white,
              ),
              title: Text(
                "Help",
                textScaleFactor: 1.2,                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
