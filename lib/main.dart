import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:x_bucket/config/colors.dart';

import 'package:x_bucket/controllers/auth_controller.dart';
import 'package:x_bucket/constants.dart';

import 'package:x_bucket/pages/followfeed_page.dart';

import 'package:x_bucket/pages/main_page.dart';
import 'package:x_bucket/pages/onboarding_page.dart';
import 'package:x_bucket/pages/myrecord_page.dart';
import 'package:x_bucket/pages/my_page.dart';
import 'package:x_bucket/pages/record_page.dart';
import 'package:x_bucket/views/screens/add_video_screen.dart';
import 'package:x_bucket/views/screens/auth/login_Screen.dart';
import 'package:x_bucket/views/screens/auth/signup_screen.dart';
import 'package:x_bucket/views/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ormak',
      // 테마컬러 적용
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: Homescreen(),
    );
  }
}

//기존 메인화면 코드 임시 비활성화
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: currentIndex,
//         children: [
//           MainPage(),
//           MyRecordPage(),
//           RecordPage(),
//           FollowFeedPage(),
//           MyPage(),

//           // Center(child: Text('4')),
//           // Center(child: Text('5')),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (value) {
//           setState(() {
//             currentIndex = value;
//           });
//         },
//         currentIndex: currentIndex,
//         iconSize: 24,
//         unselectedItemColor: BucketColor.grey2,
//         selectedItemColor: BucketColor.keycolor,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
//           BottomNavigationBarItem(icon: Icon(Icons.analytics), label: '나의 기록'),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.camera,
//                 size: 40,
//               ),
//               label: '기록하기'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.feed_rounded), label: '팔로워 피드'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle), label: '마이페이지'),
//           // BottomNavigationBarItem(icon: Icon(Icons.add), label: '홈'),
//           // BottomNavigationBarItem(icon: Icon(Icons.add), label: '홈'),
//         ],
//       ),
//     );
//   }
// }
