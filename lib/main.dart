import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 270,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'One-Stop',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 61, 108, 1),
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '대구시 주민참여 예산제 서비스',
                      style: TextStyle(
                        color: Color.fromRGBO(108, 108, 108, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 170,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 40,
                  ),
                  child: Text('start button'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
