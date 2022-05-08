import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:x_bucket/controllers/upload_video_controller.dart';
import 'package:x_bucket/views/widgets/text_input_field.dart';

class ConfirmScreen extends StatefulWidget {
  final File videoFile;

  final String videoPath;
  const ConfirmScreen({
    Key? key,
    required this.videoFile,
    required this.videoPath,
  }) : super(key: key);

  @override
  State<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  late VideoPlayerController controller;
  TextEditingController _songContorller = TextEditingController();
  TextEditingController _captionContorller = TextEditingController();

  UploadVideoController uploadVideoController =
      Get.put(UploadVideoController());

  @override
  void initState() {
    super.initState();
    setState(() {
      controller = VideoPlayerController.file(widget.videoFile);
    });
    controller.initialize();
    controller.play();
    controller.setVolume(1);
    controller.setLooping(true); //다음 영상으로 넘어가기 -> 질문응답여부 체크 ->분기 만들기
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.5,
            child: VideoPlayer(controller),
          ),
          const SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width - 20,
                  child: TextInputField(
                      controller: _songContorller,
                      labelText: 'Song Name',
                      icon: Icons.music_note),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width - 20,
                  child: TextInputField(
                    controller: _captionContorller,
                    labelText: 'Caption',
                    icon: Icons.closed_caption,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () => uploadVideoController.uploadVideo(
                      _songContorller.text,
                      _captionContorller.text,
                      widget.videoPath),
                  child: Text(
                    '게시하기',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
