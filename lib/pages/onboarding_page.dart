import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:x_bucket/main.dart';
import 'package:x_bucket/pages/first_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          /// 첫 번째 페이지
          PageViewModel(
            title: "가슴 뛰는 나의 두 번째 도전!",
            body: "함께 만들어 나가는 성숙한 커뮤니티 앱, 어른아이",
            image: Padding(
              padding: EdgeInsets.all(0),
              child: Image.network(
                  'https://user-images.githubusercontent.com/101466300/162559736-14ee2453-2bd5-4154-8be3-1e29c5d9ce7c.png'),
            ),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              bodyTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          // 두 번째 페이지
          PageViewModel(
            title: "함께 도전하고 새롭게 경험하세요!",
            body: "다양한 소모임에 참여하거나 직접 만들 수 있어요",
            image: Image.network(
                'https://user-images.githubusercontent.com/101466300/162559736-14ee2453-2bd5-4154-8be3-1e29c5d9ce7c.png'),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              bodyTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ), // 세 번째 페이지
          PageViewModel(
            title: "나의 추억을 기록해보세요!",
            body: "회고록을 남기고 인생을 되돌아 보는 시간",
            image: Image.network(
                'https://user-images.githubusercontent.com/101466300/162559403-700a28b4-bc3d-40d2-8285-be973cdc7816.png'),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                color: Colors.blueGrey,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              bodyTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ), // 마지막 페이지
          PageViewModel(
            title: "로그인하고 여정 시작하기",
            body: "둘러보기",
            image: Image.network(
                'https://user-images.githubusercontent.com/101466300/162559403-700a28b4-bc3d-40d2-8285-be973cdc7816.png'),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                color: Colors.blueGrey,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              bodyTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
        next: Text("다음",
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Colors.blueAccent)),
        done: Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        onDone: () {
          // Done 클릭시 페이지 이동
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
      ),
    );
  }
}
