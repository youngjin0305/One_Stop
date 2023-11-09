import 'dart:ffi';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const AllItem(),
    const MyOpinion(),
    const MyAccount(),
  ];

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
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '홈',
            backgroundColor: Color(0xFFFF3D6B),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_copy),
            label: '전체 안건',
            backgroundColor: Color(0xFFFF3D6B),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: '나의 의견서',
            backgroundColor: Color(0xFFFF3D6B),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: '내 정보',
            backgroundColor: Color(0xFFFF3D6B),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 30,
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '안녕하세요 “',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: '김대구',
                  style: TextStyle(
                    color: Color(0xFFFF3D6C),
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: '” 님',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const Text(
            '현재 진행중인 안건 “3”건 있습니다.',
            style: TextStyle(
              color: Color(0xFF6C6C6C),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          Container(
            width: 370,
            height: 200,
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
              right: 57,
              bottom: 60,
            ),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '이웃과 함께하는 힐링 텃밭키트 나눔 (남구 이천동)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '소공원 내 조명 설치 (중구 남산3동)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '곡각지 안전팬스 설치 (수성구 범어3동)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 260,
                padding: const EdgeInsets.symmetric(vertical: 18),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFF3D6B),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '참여하기',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AllItem extends StatelessWidget {
  const AllItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            width: 380,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF6C6C6C),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(40, 20, 30, 12),
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
          ),
          Container(
            width: 380,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF6C6C6C),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyOpinion extends StatelessWidget {
  const MyOpinion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            '나의 의견서',
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
            width: 380,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF6C6C6C),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(40, 20, 30, 12),
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
          ),
          Container(
            width: 380,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF6C6C6C),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 30,
          ),
          const Text(
            '내 정보',
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
            width: 374,
            height: 216,
            decoration: ShapeDecoration(
              color: const Color(0xFFFF3D6C),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '김철수',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    const Row(
                      children: [
                        Text(
                          '선정연도:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    const Text(
                      '1900.11.10',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '200',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Container(
                        width: 300,
                        height: 60,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 54, vertical: 18),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '대구행복페이 환전',
                              style: TextStyle(
                                color: Color(0xFFFF3D6C),
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w800,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
