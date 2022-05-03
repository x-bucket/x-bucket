import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:x_bucket/config/colors.dart';
import 'package:x_bucket/pages/signup_page.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

// // SharedPreferences 인스턴스를 어디서든 접근 가능하도록 전역 변수로 선언
// late SharedPreferences prefs;

// void main() async {
//   // main() 함수에서 async를 쓰려면 필요
//   WidgetsFlutterBinding.ensureInitialized();

//   // shared_preferences 인스턴스 생성
//   prefs = await SharedPreferences.getInstance();

//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // SharedPreferences에서 온보딩 완료 여부 조회
//     // isOnboarded에 해당하는 값에서 null을 반환하는 경우 false 할당
//     bool isOnboarded = prefs.getBool("isOnboarded") ?? false;
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         textTheme: GoogleFonts.getTextTheme('Jua'),
//       ),
//       home: isOnboarded ? HomePage() : OnboardingPage(),
//     );
//   }
// }

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            // 첫 번째 페이지
            PageViewModel(
              title: "하고 싶었던 말 다 하는 \n우리끼리 즐기는 커뮤니티, \n오르막에 오신 걸 환영합니다👋",
              body:
                  "오르막은 성숙한 사람들이 모여 \n인생 2막, 라이프스타일을 함께 만들어 나가는 \n인생의 오르막길입니다.",
              image: Padding(
                padding: EdgeInsets.only(bottom: 60),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                ),
              ),
              decoration: PageDecoration(
                  titleTextStyle: TextStyle(
                    color: BucketColor.keycolor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  bodyTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  titlePadding: EdgeInsets.only(bottom: 50)),
            ),
            // 두 번째 페이지
            PageViewModel(
              reverse: true,
              title: "\n\n\n이미지와 영상으로 쉽게 \n일상과 추억을 나누고 기록해요",
              body: "",
              image: Image.asset('assets/images/blind.png'),
              decoration: PageDecoration(
                  titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  bodyTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  imagePadding: EdgeInsets.only(bottom: 50)),
            ),
            // 세 번째 페이지
            PageViewModel(
              reverse: true,
              title: "\n\n\n매일 올라오는 질문들에 답하며 \n인생을 돌아보고 나를 발견해요",
              body: "",
              image: Image.asset('assets/images/jurine.png'),
              decoration: PageDecoration(
                  titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  bodyTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  imagePadding: EdgeInsets.only(bottom: 50)),
            ),
            // 네 번째 페이지
            PageViewModel(
              reverse: true,
              title: "\n\n\n수많은 친구들이 당신을 기다리고 있어요 \n새로운 여러분의 모습을 만나보세요",
              body: "",
              image: Image.asset(
                'assets/images/burn.png',
              ),
              decoration: PageDecoration(
                  titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  bodyTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  imagePadding: EdgeInsets.only(bottom: 50)),
            ),
            // 마지막 페이지(로그인 선택 페이지)
            PageViewModel(
              title: "환영합니다!",
              body: "일상을 공유하는 인생 커뮤니티, 오르막",
              image: Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  color: Colors.white,
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
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.white),
                    ),
                    primary: BucketColor.keycolor),
                child: const Text(
                  "시작하기",
                ),
              ),
              decoration: PageDecoration(
                pageColor: BucketColor.keycolor,
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                bodyTextStyle: TextStyle(
                  color: Colors.white,
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
            color: BucketColor.keycolor,
          ),
          next: Text(
            "다음",
            style: TextStyle(
                fontWeight: FontWeight.w600, color: BucketColor.keycolor),
          ),
          //done 버튼 있을 경우
          // done: Text(
          //   "Done",
          //   style: TextStyle(
          //       fontWeight: FontWeight.w600, color: BucketColor.keycolor),
          // ),
          // onDone: () {
          //   // // Done 클릭시 isOnboarded = true로 저장
          //   // prefs.setBool("isOnboarded", true);
          //   // Done 클릭시 페이지 이동
          //   Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(builder: (context) => HomePage()),
          //   );
          // },
          baseBtnStyle: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: BucketColor.keycolor,
              color: Colors.black26,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0))),
        ),
      ),
    );
  }
}
