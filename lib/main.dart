import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:x_bucket/config/colors.dart';
import 'package:x_bucket/pages/followfeed_page.dart';

import 'package:x_bucket/pages/main_page.dart';
import 'package:x_bucket/pages/onboarding_page.dart';
import 'package:x_bucket/pages/myrecord_page.dart';
import 'package:x_bucket/pages/my_page.dart';
import 'package:x_bucket/pages/record_page.dart';
import 'package:x_bucket/pages/signup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // main 함수에서 async 사용하기 위함
  await Firebase.initializeApp(); // firebase 앱 시작
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'x-bucket',
      home: OnboardingPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          MainPage(),
          MyRecordPage(),
          RecordPage(),
          FollowFeedPage(),
          MyPage(),

          // Center(child: Text('4')),
          // Center(child: Text('5')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        iconSize: 24,
        unselectedItemColor: BucketColor.grey2,
        selectedItemColor: BucketColor.keycolor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: '나의 기록'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
                size: 40,
              ),
              label: '기록하기'),
          BottomNavigationBarItem(
              icon: Icon(Icons.feed_rounded), label: '팔로워 피드'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: '마이페이지'),
          // BottomNavigationBarItem(icon: Icon(Icons.add), label: '홈'),
          // BottomNavigationBarItem(icon: Icon(Icons.add), label: '홈'),
        ],
      ),
    );
  }
}
