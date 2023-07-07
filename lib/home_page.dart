import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.pink,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
