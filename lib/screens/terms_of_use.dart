import 'package:flutter/material.dart';
import 'package:onestop/screens/qualification.dart';

class TermsOfUse extends StatefulWidget {
  const TermsOfUse({super.key});

  @override
  State<TermsOfUse> createState() => _TermsOfUseState();
}

class _TermsOfUseState extends State<TermsOfUse> {
  bool? isChecked = false;
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;

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
              '이용약관',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '서비스 이용 동의',
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
            CheckboxListTile(
              title: const Text(
                '전체 동의',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: const Color(0xFFFF3D6C),
              value: isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked = newValue;
                  isChecked1 = newValue;
                  isChecked2 = newValue;
                  isChecked3 = newValue;
                });
              },
            ),
            Container(
              width: 370,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  ),
                ),
              ),
            ),
            CheckboxListTile(
              title: const Text(
                '[필수] One Stop 서비스 이용약관 동의',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: const Color(0xFFFF3D6C),
              value: isChecked1,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked1 = newValue;
                  if (newValue == false) isChecked = false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text(
                '[필수] One Stop 개인정보 수집 및 이용 동의',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: const Color(0xFFFF3D6C),
              value: isChecked2,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked2 = newValue;
                  if (newValue == false) isChecked = false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text(
                '[필수] One Stop 개인정보 제공 동의',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: const Color(0xFFFF3D6C),
              value: isChecked3,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked3 = newValue;
                  if (newValue == false) isChecked = false;
                });
              },
            ),
            const SizedBox(
              height: 200,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.only(bottom: 16),
        child: ElevatedButton(
          onPressed:
              (isChecked1 == true && isChecked2 == true && isChecked3 == true)
                  ? () {
                      // 임시로 이동만
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Qualification()));
                    }
                  : null,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
            backgroundColor:
                (isChecked1 == true && isChecked2 == true && isChecked3 == true)
                    ? const Color(0xFFFF3D6C)
                    : Colors.grey,
          ),
          child: const Text(
            '제출',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
