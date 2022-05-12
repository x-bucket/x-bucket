import 'package:flutter/material.dart';
import 'package:x_bucket/pages/followershow_page.dart';
import 'package:x_bucket/pages/followfeed_page.dart';
import 'package:x_bucket/pages/profile_edit.dart';
import 'package:x_bucket/pages/settings_page.dart';

import '../../config/colors.dart';

class CustomerInterestFinalPage extends StatefulWidget {
  const CustomerInterestFinalPage({Key? key}) : super(key: key);

  @override
  State<CustomerInterestFinalPage> createState() =>
      _CustomerInterestFinalPageState();
}

class _CustomerInterestFinalPageState extends State<CustomerInterestFinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 5,
            ),
            child: Image.asset(
              'assets/images/mainlogo.png',
              height: 150,
            ),
          ),
        ),
        backgroundColor: BucketColor.white,
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: BucketColor.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: BucketColor.grey1,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 150,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    '정상적으로 등록되었습니다.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FollowFeedPage()),
                    );
                  },
                  child: Text(
                    '팔로워 피드로 돌아가기',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
