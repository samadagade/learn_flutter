import 'package:flutter/material.dart';
import 'package:flutter_catelog/utils/my_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _name = "";
  bool _changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network('assets/images/login_image.png'),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome ${_name}',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "User Name",
                    ),
                    onChanged: (value) {
                      //it called build method again and rebuild the UI
                      setState(() {
                        _name = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText:
                        true, //hide the password, by default it's false
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  
                  //we are creating own elevated button
                  //now to create any widget clickable we have two widget
                  // 1. GestureDetecture : do not show any effect after clicking on widget
                  // 2. InkWell : show effect after clicking on widget i.e. ripple effect

                  InkWell(
                    onTap: () async {
                      setState(() {
                        _changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 2));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      //alignment align child within container
                      alignment: Alignment.center,
                      height: 50, //height of container
                      width: _changeButton ? 50 : 150, //width of conatainer
                      child: _changeButton? Icon(Icons.done)
                             : Text(
                              "Login",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(_changeButton ? 50 : 100),
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //       minimumSize: Size(150, 40),
                  //           backgroundColor: Colors.deepPurple, // Background color
                  //     ),
                  //     child: Text("Login", style: TextStyle(color: Colors.white),)
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
