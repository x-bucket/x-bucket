import 'package:flutter/material.dart';

import '../config/colors.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        backgroundColor: BucketColor.white,
        elevation: 1, //작업 완료후 0으로 설정
        title: Text(
          '프로필 수정하기',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              //추후 팝업 윈도우로 변경설정
            },
            icon: Icon(
              Icons.check,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/lynch.png'),
                  radius: 50,
                  backgroundColor: BucketColor.white,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "프로필 사진 수정",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "프로필 이름",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "프로필 소개",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
