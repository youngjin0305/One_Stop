import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 84,
            width: double.infinity,
          ),
          const Text(
            '비밀번호 설정',
            style: TextStyle(
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
          const Text(
            '비밀번호를 입력해 주세요.',
            style: TextStyle(
              color: Colors.black,
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
          const NumberPad(
            num: 1,
          ),
          const NumberPad(
            num: 4,
          ),
          const NumberPad(
            num: 7,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(58, 23, 55, 23),
                child: const Icon(Icons.replay),
              ),
              Container(
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
              Container(
                padding: const EdgeInsets.fromLTRB(55, 23, 58, 23),
                child: const Icon(Icons.backspace),
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
  });

  final int num;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
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
        Container(
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
        Container(
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
