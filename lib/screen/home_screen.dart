import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'I will eat tons of cakes',
              style: TextStyle(fontSize: 30, fontFamily: 'Lobster'),
            ),
            Text(
              'in my dream tonight',
              style: TextStyle(fontSize: 25, fontFamily: 'Lobster'),
            ),
            Text(
              'Thank You 3 times',
              style: TextStyle(fontSize: 20, fontFamily: 'Lobster'),
            ),
          ],
        ),
      ),
    );
  }
}
