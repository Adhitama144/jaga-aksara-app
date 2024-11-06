import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loader_overlay/loader_overlay.dart';

class Scan extends StatefulWidget {
  const Scan({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ScanState();
  }
}

class _ScanState extends State<Scan> {
  late List<CameraDescription> cameras;
  late CameraController cameraController;
  bool isCameraReady = false;

  @override
  void initState() {
    super.initState();
    startCamera();
  }

  Future<void> startCamera() async {
    cameras = await availableCameras();

    cameraController = CameraController(
      cameras[0],
      ResolutionPreset.high,
      enableAudio: false,
    );

    try {
      await cameraController.initialize();
      setState(() {
        isCameraReady = true;
      });
    } catch (e) {}
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget content;

    if (!isCameraReady) {
      content = const Center(
          child: CircularProgressIndicator(
        color: Color.fromARGB(255, 255, 183, 3),
      ));
    } else {
      content = Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: AspectRatio(
              aspectRatio: cameraController.value.aspectRatio,
              child: CameraPreview(cameraController),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: FloatingActionButton(
              onPressed: () async {
                cameraController.dispose();

                final picker = ImagePicker();
                final file =
                    await picker.pickImage(source: ImageSource.gallery);

                if (file != null) {
                  context.loaderOverlay.show();
                  context.loaderOverlay.hide();
                }
                startCamera();
              },
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              heroTag: 'galery',
              child: const Icon(
                Icons.photo_library,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            child: FloatingActionButton(
              onPressed: () async {
                cameraController.takePicture().then((XFile? file) async {
                  if (mounted) {
                    if (file != null) {
                      context.loaderOverlay.show();
                      context.loaderOverlay.hide();
                    }
                  }
                });
              },
              backgroundColor:
                  const Color.fromARGB(255, 255, 183, 3).withOpacity(0.3),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              heroTag: 'photo',
              child: const Icon(
                Icons.camera,
                color: Colors.white,
              ),
            ),
          ),
        ],
      );
    }

    return GlobalLoaderOverlay(
      overlayColor: const Color.fromARGB(255, 255, 183, 3).withOpacity(0.3),
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Scan & Transliterasi',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'AkayaTelivigala'),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 255, 183, 3),
        ),
        body: content,
      ),
    );
  }
}
