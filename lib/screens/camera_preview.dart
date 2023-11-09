import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:onestop/screens/idcard_check.dart';

class CameraPreview_ extends StatefulWidget {
  const CameraPreview_({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  State<CameraPreview_> createState() => _CameraPreviewState();
}

class _CameraPreviewState extends State<CameraPreview_> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // 카메라 관리하는 컨트롤러 생성
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF3D6C),
        title: const Text(
          '카메라',
        ),
      ),
      body: Column(
        children: [
          FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // 미리보기
                return CameraPreview(_controller);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
      // 버튼 누를 시 카메라 화면의 캡쳐본을 보여주는 화면으로 이동
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(40, 0, 35, 15),
        child: SizedBox(
          width: 280,
          child: FloatingActionButton(
            shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(5.0)), // 원하는 테두리 반경 설정
            ),
            backgroundColor: const Color(0xFFFF3D6C),
            onPressed: () async {
              try {
                await _initializeControllerFuture;
                // 현재 카메라 화면 캡쳐
                final image = await _controller.takePicture();

                if (!mounted) return;

                // 사진 보여주기
                await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DisplayPictureScreen(
                      imagePath: image.path,
                    ),
                  ),
                );
              } catch (e) {
                print(e);
              }
            },
            child: const Icon(Icons.camera_alt),
          ),
        ),
      ),
    );
  }
}

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('캡쳐 화면'),
        backgroundColor: const Color(0xFFFF3D6C),
      ),
      body: Column(
        children: [
          Image.file(File(imagePath)),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(40, 0, 35, 15),
        child: SizedBox(
          width: 280,
          child: FloatingActionButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            backgroundColor: const Color(0xFFFF3D6C),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const IdcardCheck(),
                ),
              );
            },
            child: const Text('다음'),
          ),
        ),
      ),
    );
  }
}
