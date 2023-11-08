import 'package:flutter/material.dart';

class Qualification extends StatelessWidget {
  const Qualification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 75,
            ),
            const Text(
              '위원 자격 확인',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              '위원 자격을 위한 인증 수단',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 320,
              height: 50,
              padding: const EdgeInsets.only(
                top: 15,
                left: 20,
                right: 20,
                bottom: 13,
              ),
              color: const Color(0xFFEFEFEF),
              child: const Text(
                '신분증 촬영',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
