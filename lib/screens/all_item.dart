import 'package:flutter/material.dart';

class AllItem extends StatelessWidget {
  const AllItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFFF3D6C),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'One-Stop',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            Text(
              '대구시 주민참여 예산제 서비스',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            '전체 안건',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 320,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF6C6C6C),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '제목',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0.10,
                    letterSpacing: 1.40,
                  ),
                ),
                Text(
                  '제출기간',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0.10,
                    letterSpacing: 1.40,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
