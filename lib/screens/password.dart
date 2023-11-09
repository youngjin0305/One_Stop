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
              horizontal: 125,
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    NumberPad(
                        num: 1,
                        onNumberPressed: () {
                          setState(() {
                            password += '1';
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Home()));
                            }
                            if (count == 6 &&
                                password2.isNotEmpty &&
                                password2 != password) {
                              wrongpwd = true;
                              password = '';
                              count = 0;
                            }
                          });
                        }),
                    NumberPad(
                        num: 2,
                        onNumberPressed: () {
                          setState(() {
                            password += '2';
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Home()));
                            }
                            if (count == 6 &&
                                password2.isNotEmpty &&
                                password2 != password) {
                              wrongpwd = true;
                              password = '';
                              count = 0;
                            }
                          });
                        }),
                    NumberPad(
                        num: 3,
                        onNumberPressed: () {
                          setState(() {
                            password += '3';
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Home()));
                            }
                            if (count == 6 &&
                                password2.isNotEmpty &&
                                password2 != password) {
                              wrongpwd = true;
                              password = '';
                              count = 0;
                            }
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    NumberPad(
                        num: 4,
                        onNumberPressed: () {
                          setState(() {
                            password += '4';
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Home()));
                            }
                            if (count == 6 &&
                                password2.isNotEmpty &&
                                password2 != password) {
                              wrongpwd = true;
                              password = '';
                              count = 0;
                            }
                          });
                        }),
                    NumberPad(
                        num: 5,
                        onNumberPressed: () {
                          setState(() {
                            password += '5';
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Home()));
                            }
                            if (count == 6 &&
                                password2.isNotEmpty &&
                                password2 != password) {
                              wrongpwd = true;
                              password = '';
                              count = 0;
                            }
                          });
                        }),
                    NumberPad(
                        num: 6,
                        onNumberPressed: () {
                          setState(() {
                            password += '6';
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Home()));
                            }
                            if (count == 6 &&
                                password2.isNotEmpty &&
                                password2 != password) {
                              wrongpwd = true;
                              password = '';
                              count = 0;
                            }
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    NumberPad(
                        num: 7,
                        onNumberPressed: () {
                          setState(() {
                            password += '7';
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Home()));
                            }
                            if (count == 6 &&
                                password2.isNotEmpty &&
                                password2 != password) {
                              wrongpwd = true;
                              password = '';
                              count = 0;
                            }
                          });
                        }),
                    NumberPad(
                        num: 8,
                        onNumberPressed: () {
                          setState(() {
                            password += '8';
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Home()));
                            }
                            if (count == 6 &&
                                password2.isNotEmpty &&
                                password2 != password) {
                              wrongpwd = true;
                              password = '';
                              count = 0;
                            }
                          });
                        }),
                    NumberPad(
                        num: 9,
                        onNumberPressed: () {
                          setState(() {
                            password += '9';
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Home()));
                            }
                            if (count == 6 &&
                                password2.isNotEmpty &&
                                password2 != password) {
                              wrongpwd = true;
                              password = '';
                              count = 0;
                            }
                          });
                        }),
                  ],
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
                      child: const SizedBox(
                        width: 120,
                        height: 60,
                        child: Icon(Icons.replay),
                      ),
                    ),
                    NumberPad(
                        num: 0,
                        onNumberPressed: () {
                          setState(() {
                            password += '0';
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Home()));
                            }
                            if (count == 6 &&
                                password2.isNotEmpty &&
                                password2 != password) {
                              wrongpwd = true;
                              password = '';
                              count = 0;
                            }
                          });
                        }),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (password.isNotEmpty) {
                            count--;
                            password =
                                password.substring(0, password.length - 1);
                          }
                        });
                      },
                      child: const SizedBox(
                        width: 120,
                        height: 60,
                        child: Icon(Icons.backspace),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
  });

  final int num;
  final VoidCallback onNumberPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onNumberPressed();
      },
      child: SizedBox(
        width: 120,
        height: 60,
        child: Align(
          child: Text(
            num.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
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
