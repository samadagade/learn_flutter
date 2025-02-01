import 'package:flutter/material.dart';
import 'package:flutter_catelog/presentation/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
           "Catelog App",
        ),
      ),
      body:
      Center(
        child: Text(
            'Hello Sam',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'Letter Gothic',
            ), //Text
          ),
      ), //center
      drawer: MyDrawer(),
    );
  }
}