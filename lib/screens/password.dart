import 'package:flutter/material.dart';
import 'package:onestop/screens/home.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  int count = 0;
  String password = '';
  String password2 = '';
  bool isFirst = true;
  bool wrongpwd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 84,
            width: double.infinity,
          ),
          Text(
            (isFirst) ? '비밀번호 설정' : '비밀번호 확인',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            (isFirst) ? '비밀번호를 입력해 주세요' : '비밀번호를 다시 입력해 주세요.',
            style: TextStyle(
              color: (wrongpwd) ? Colors.red : Colors.black,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            '숫자 6자리',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Image.asset('images/password_image.png'),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 130,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundIcon(
                  isChecked: count > 0,
                ),
                RoundIcon(
                  isChecked: count > 1,
                ),
                RoundIcon(
                  isChecked: count > 2,
                ),
                RoundIcon(
                  isChecked: count > 3,
                ),
                RoundIcon(
                  isChecked: count > 4,
                ),
                RoundIcon(
                  isChecked: count > 5,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          NumberPad(
            num: 1,
            onNumberPressed: () {
              setState(() {
                count++;
                if (count == 6 && password2.isEmpty) {
                  count = 0;
                  password2 = password;
                  password = '';
                  isFirst = false;
                }
                if (count == 6 && password2 == password) {
                  count = 0;
                  password = '';
                  //서버로 비밀번호 보내기
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Home()));
                }
                if (count == 6 &&
                    password2.isNotEmpty &&
                    password2 != password) {
                  wrongpwd = true;
                  password = '';
                  count = 0;
                }
              });
            },
            first: () {
              setState(() {
                password += '1';
              });
            },
            second: () {
              setState(() {
                password += '2';
              });
            },
            third: () {
              setState(() {
                password += '3';
              });
            },
          ),
          NumberPad(
            num: 4,
            onNumberPressed: () {
              setState(() {
                count++;
                if (count == 6 && password2.isEmpty) {
                  count = 0;
                  password2 = password;
                  password = '';
                  isFirst = false;
                }
                if (count == 6 && password2 == password) {
                  count = 0;
                  password = '';
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Home()));
                }
                if (count == 6 &&
                    password2.isNotEmpty &&
                    password2 != password) {
                  wrongpwd = true;
                  password = '';
                  count = 0;
                }
              });
            },
            first: () {
              setState(() {
                password += '4';
              });
            },
            second: () {
              setState(() {
                password += '5';
              });
            },
            third: () {
              setState(() {
                password += '6';
              });
            },
          ),
          NumberPad(
            num: 7,
            onNumberPressed: () {
              setState(() {
                count++;
                if (count == 6 && password2.isEmpty) {
                  count = 0;
                  password2 = password;
                  password = '';
                  isFirst = false;
                }
                if (count == 6 && password2 == password) {
                  count = 0;
                  password = '';
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Home()));
                }
                if (count == 6 &&
                    password2.isNotEmpty &&
                    password2 != password) {
                  wrongpwd = true;
                  password = '';
                  count = 0;
                }
              });
            },
            first: () {
              setState(() {
                password += '7';
              });
            },
            second: () {
              setState(() {
                password += '8';
              });
            },
            third: () {
              setState(() {
                password += '9';
              });
            },
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    count = 0;
                    password = '';
                  });
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(58, 23, 55, 23),
                  child: const Icon(Icons.replay),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    count++;
                    password += '0';
                    if (count == 6 && password2.isEmpty) {
                      count = 0;
                      password2 = password;
                      password = '';
                    }
                    if (count == 6 && password2 == password) {
                      count = 0;
                      password = '';
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Home()));
                    }
                  });
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(61, 23, 61, 23),
                  child: const Text(
                    '0',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (password.isNotEmpty) {
                      count--;
                      password = password.substring(0, password.length - 1);
                    }
                  });
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(55, 23, 58, 23),
                  child: const Icon(Icons.backspace),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class NumberPad extends StatelessWidget {
  const NumberPad({
    super.key,
    required this.num,
    required this.onNumberPressed,
    required this.first,
    required this.second,
    required this.third,
  });

  final int num;
  final VoidCallback onNumberPressed;
  final VoidCallback first;
  final VoidCallback second;
  final VoidCallback third;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            first();
            onNumberPressed();
          },
          child: Container(
            padding: const EdgeInsets.fromLTRB(62, 23, 61, 23),
            child: Text(
              num.toString(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            second();
            onNumberPressed();
          },
          child: Container(
            padding: const EdgeInsets.fromLTRB(61, 23, 61, 23),
            child: Text(
              (num + 1).toString(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            third();
            onNumberPressed();
          },
          child: Container(
            padding: const EdgeInsets.fromLTRB(61, 23, 62, 23),
            child: Text(
              (num + 2).toString(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RoundIcon extends StatelessWidget {
  const RoundIcon({
    super.key,
    required this.isChecked,
  });

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: ShapeDecoration(
        color: (isChecked) ? const Color(0xFFFF3D6C) : const Color(0xFFEFEFEF),
        shape: const OvalBorder(),
      ),
    );
  }
}
