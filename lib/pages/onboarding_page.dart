import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:x_bucket/config/colors.dart';
import 'package:x_bucket/pages/signup_page.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../main.dart';

// SharedPreferences 인스턴스를 어디서든 접근 가능하도록 전역 변수로 선언
late SharedPreferences prefs;

void main() async {
  // main() 함수에서 async를 쓰려면 필요
  WidgetsFlutterBinding.ensureInitialized();

  // shared_preferences 인스턴스 생성
  prefs = await SharedPreferences.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SharedPreferences에서 온보딩 완료 여부 조회
    // isOnboarded에 해당하는 값에서 null을 반환하는 경우 false 할당
    bool isOnboarded = prefs.getBool("isOnboarded") ?? false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // textTheme: GoogleFonts.getTextTheme('Jua'),
          ),
      home: isOnboarded ? HomePage() : OnboardingPage(),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            ////// 0번째 페이지
            PageViewModel(
              reverse: true,
              title: "",
              body: "",
              image: Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.network(
                  'https://user-images.githubusercontent.com/101466300/168020338-4f40d118-d097-44dd-86ea-b447db6693fc.png',
                ),
              ),
              decoration: PageDecoration(
                fullScreen: true,
                titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                bodyTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            ////// 첫 번째 페이지
            PageViewModel(
              title: "",
              body: "",
              image: Image.network(
                'https://user-images.githubusercontent.com/101466300/168013170-c080f05f-6e03-4b31-a872-b59a12175339.png',
              ),
              decoration: PageDecoration(
                  fullScreen: true,
                  titleTextStyle: TextStyle(
                    color: BucketColor.ocolor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  bodyTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  titlePadding: EdgeInsets.only(bottom: 50)),
            ),
            ////// 두 번째 페이지
            PageViewModel(
              reverse: true,
              title: "",
              body: "",
              image: Image.network(
                'https://user-images.githubusercontent.com/101466300/168019239-a1454590-6fc1-4da3-9fc7-8d8f57462336.png',
              ),
              decoration: PageDecoration(
                fullScreen: true,
                titleTextStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                bodyTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            ////// 세 번째 페이지
            PageViewModel(
              reverse: true,
              title: "",
              body: "",
              image: Image.network(
                  'https://user-images.githubusercontent.com/101466300/168019633-f83e501c-19f5-40bc-aac8-3b0dc3849c27.png'),
              decoration: PageDecoration(
                fullScreen: true,
                titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                bodyTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            // 마지막 페이지(로그인 선택 페이지)
            PageViewModel(
              title: "환영합니다!",
              body: "일상을 공유하는 인생 커뮤니티, 오르막",
              image: Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                ),
              ),
              footer: ElevatedButton(
                onPressed: () {
                  // On button presed
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    primary: BucketColor.ocolor),
                child: const Text(
                  "시작하기",
                ),
              ),
              decoration: PageDecoration(
                pageColor: BucketColor.grey1,
                titleTextStyle: TextStyle(
                  color: Colors.black,
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
          showBackButton: true,
          showSkipButton: false,
          showDoneButton: false,
          back: const Icon(
            Icons.arrow_back,
            color: BucketColor.ocolor,
          ),
          next: Text(
            "다음",
            style: TextStyle(
                fontWeight: FontWeight.w600, color: BucketColor.ocolor),
          ),
          baseBtnStyle: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          globalBackgroundColor: BucketColor.grey1,
          dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: BucketColor.ocolor,
              color: Colors.black26,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0))),
        ),
      ),
    );
  }
}
