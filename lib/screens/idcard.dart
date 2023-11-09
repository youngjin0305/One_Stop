import 'package:flutter/material.dart';
import 'package:onestop/screens/camera_preview.dart';
import 'package:onestop/screens/idcard_check.dart';
import 'package:camera/camera.dart';

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardCheckState();
}

class _IdCardCheckState extends State<IdCard> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 75,
            width: double.infinity,
          ),
          const Text(
            '신분증',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset('images/id_card_image.png'),
          const SizedBox(
            height: 49,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 90),
            child: Text(
              '주민참여 예산위원 본인이 맞는지확인을 위해 신분증을 촬영합니다.신분증 정보는 본인확인 용도로만 사용됩니다.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: CheckboxListTile(
              value: isChecked,
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: const Color(0xFFFF3D6C),
              title: const Text(
                '신분증 촬영 동의',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked = newValue;
                });
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: (isChecked == true)
                ? () async {
                    final cameras = await availableCameras();
                    final firstCamera = cameras.first;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CameraPreview_(
                              camera: firstCamera,
                            )));
                  }
                : null,
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
                    '신분증 촬영',
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
        ],
      ),
    );
  }
}
