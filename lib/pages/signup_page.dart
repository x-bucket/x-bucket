import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_bucket/main.dart';
import '../config/colors.dart';
import 'package:transition/transition.dart';
import 'package:group_button/group_button.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  ///첫번째 페이지
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BucketColor.white,
        elevation: 1, //작업 완료후 0으로 설정
        title: Container(
          child: Image.asset(
            'assets/images/logo.png',
            height: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        color: BucketColor.grey1,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 4.0, top: 40, bottom: 4.0),
              child: Column(
                children: [
                  Text(
                    '전화번호를 인증해 주세요.',
                    style: TextStyle(
                      color: BucketColor.bluegrey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '본인 인증 및 안내를 위해 사용됩니다.',
                    style: TextStyle(color: BucketColor.bluegrey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.20,
            ),
            Container(
              decoration: BoxDecoration(
                color: BucketColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: '전화번호',
                    labelStyle:
                        TextStyle(color: BucketColor.grey3, fontSize: 15),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(),
                    hintText: '010-1234-1234'),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "전화번호를 입력해주세요";
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130),
              child: ElevatedButton(
                onPressed: () {
                  // print('Elevated button');
                },
                child: Text('인증번호 받기'),
                style: ElevatedButton.styleFrom(
                    primary: BucketColor.grey3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 0.0),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.53,
            ),
            ElevatedButton(
              onPressed: () {
                // On button presed
                Navigator.pushReplacement(
                    context,
                    Transition(
                        child: CreatePage2(),
                        transitionEffect: TransitionEffect.RIGHT_TO_LEFT));
              },
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: BucketColor.keycolor),
                  ),
                  primary: BucketColor.keycolor),
              child: const Text(
                "다음",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 두번째 페이지 - 생년월일 입력

class CreatePage2 extends StatefulWidget {
  const CreatePage2({Key? key}) : super(key: key);

  @override
  State<CreatePage2> createState() => _CreatePage2State();
}

class _CreatePage2State extends State<CreatePage2> {
  // TextField의 값을 가져올 때 사용합니다.
  TextEditingController textController = TextEditingController();

  DateTime _dateTime = DateTime.now();

  // 경고 메세지
  String? error;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... 앱 별 Localization Delegate를 여기에 정의
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // 영어
        const Locale('ko', 'KO'), // 히브리어
        // ... 앱이 지원하는 Locale 정보
      ],
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  Transition(
                      child: SignUpPage(),
                      transitionEffect: TransitionEffect.LEFT_TO_RIGHT));
            },
            color: BucketColor.keycolor,
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: BucketColor.white,
          elevation: 1, //작업 완료후 0으로 설정
          title: Container(
            child: Image.asset(
              'assets/images/logo.png',
              height: 30,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                // print('setting menu'); //추후 팝업 윈도우로 변경설정
              },
              icon: Icon(Icons.reorder, color: BucketColor.black),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          color: BucketColor.grey1,
          child: ListView(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 4.0, top: 40, bottom: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "생년월일을 입력해 주세요.",
                      style: TextStyle(
                        color: BucketColor.bluegrey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '오르막 서비스는 만 45세 이상만 이용할 수 있습니다.',
                      style: TextStyle(color: BucketColor.bluegrey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.20,
              ),
              Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    color: BucketColor.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: CupertinoDatePicker(
                      initialDateTime: _dateTime,
                      mode: CupertinoDatePickerMode.date,
                      onDateTimeChanged: (dateTime) {
                        setState(() {
                          _dateTime = dateTime;
                        });
                      })),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.31,
              ),
              ElevatedButton(
                onPressed: () {
                  // On button presed
                  Navigator.pushReplacement(
                      context,
                      Transition(
                          child: CreatePage3(),
                          transitionEffect: TransitionEffect.RIGHT_TO_LEFT));
                },
                style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: BucketColor.keycolor),
                    ),
                    primary: BucketColor.keycolor),
                child: const Text(
                  "다음",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 세번째 페이지 - 닉네임 입력
class CreatePage3 extends StatefulWidget {
  const CreatePage3({Key? key}) : super(key: key);

  @override
  State<CreatePage3> createState() => _CreatePage3State();
}

class _CreatePage3State extends State<CreatePage3> {
  // TextField의 값을 가져올 때 사용합니다.
  TextEditingController textController = TextEditingController();

  // 경고 메세지
  String? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                Transition(
                    child: CreatePage2(),
                    transitionEffect: TransitionEffect.LEFT_TO_RIGHT));
          },
          color: BucketColor.keycolor,
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: BucketColor.white,
        elevation: 1, //작업 완료후 0으로 설정
        title: Container(
          child: Image.asset(
            'assets/images/logo.png',
            height: 30,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // print('setting menu'); //추후 팝업 윈도우로 변경설정
            },
            icon: Icon(Icons.reorder, color: BucketColor.black),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        color: BucketColor.grey1,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 4.0, top: 40, bottom: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "닉네임을 입력해 주세요.",
                    style: TextStyle(
                      color: BucketColor.bluegrey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '본인의 개성을 드러낼 수 있는 별명을 만들어 보세요!',
                    style: TextStyle(color: BucketColor.bluegrey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.20,
            ),
            Container(
              decoration: BoxDecoration(
                color: BucketColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'ex) 고양이집사',
                    labelStyle:
                        TextStyle(color: BucketColor.grey3, fontSize: 15),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(),
                    hintText: '한글, 영어, 숫자만 입력 가능합니다.'),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "닉네임을 입력해주세요";
                  }
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.65,
            ),
            ElevatedButton(
              onPressed: () {
                // On button presed
                Navigator.pushReplacement(
                    context,
                    Transition(
                        child: CreatePage5(),
                        transitionEffect: TransitionEffect.RIGHT_TO_LEFT));
              },
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: BucketColor.keycolor),
                  ),
                  primary: BucketColor.keycolor),
              child: const Text(
                "다음",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 추가된 페이지 - 성향
class CreatePage5 extends StatefulWidget {
  const CreatePage5({Key? key}) : super(key: key);

  @override
  State<CreatePage5> createState() => _CreatePage5State();
}

class _CreatePage5State extends State<CreatePage5> {
  // TextField의 값을 가져올 때 사용합니다.
  TextEditingController textController = TextEditingController();

  // 경고 메세지
  String? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                Transition(
                    child: CreatePage3(),
                    transitionEffect: TransitionEffect.LEFT_TO_RIGHT));
          },
          color: BucketColor.keycolor,
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: BucketColor.white,
        elevation: 1, //작업 완료후 0으로 설정
        title: Container(
          child: Image.asset(
            'assets/images/logo.png',
            height: 30,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // print('setting menu'); //추후 팝업 윈도우로 변경설정
            },
            icon: Icon(Icons.reorder, color: BucketColor.black),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        color: BucketColor.grey1,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 4.0, top: 40, bottom: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "관심사를 선택해 주세요.",
                    style: TextStyle(
                      color: BucketColor.bluegrey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '내 관심사와 딱 맞는 친구들을 소개해 드려요.',
                    style: TextStyle(color: BucketColor.bluegrey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.06,
            ),
            Container(
              decoration: BoxDecoration(
                color: BucketColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: GroupButton(
                buttons: [
                  '공연/전시',
                  '영화/드라마',
                  '운동/액티비티',
                  '스포츠 관람',
                  '음악',
                  '여행',
                  '반려동물',
                  '취미/일상',
                  '가족',
                  '독서/글쓰기',
                  '시사/경제',
                  '공부/자격증',
                  '외식',
                  '게임',
                  '패션',
                  '인테리어',
                  '요리',
                  '철학',
                  '종교'
                ],
                options: GroupButtonOptions(
                  selectedShadow: const [],
                  selectedTextStyle: TextStyle(
                    fontSize: 15,
                    color: BucketColor.white,
                  ),
                  selectedColor: BucketColor.keycolor,
                  unselectedShadow: const [],
                  unselectedColor: BucketColor.grey1,
                  unselectedTextStyle:
                      TextStyle(fontSize: 15, color: BucketColor.black),
                  borderRadius: BorderRadius.circular(100),
                  spacing: 10,
                  runSpacing: 10,
                  groupingType: GroupingType.wrap,
                  direction: Axis.horizontal,
                  mainGroupAlignment: MainGroupAlignment.center,
                  elevation: 0,
                ),
                isRadio: false,
                maxSelected: 5,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.06,
            ),
            ElevatedButton(
              onPressed: () {
                // On button presed
                Navigator.pushReplacement(
                    context,
                    Transition(
                        child: CreatePage4(),
                        transitionEffect: TransitionEffect.RIGHT_TO_LEFT));
              },
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: BucketColor.keycolor),
                  ),
                  primary: BucketColor.keycolor),
              child: const Text(
                "다음",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 마지막 페이지 - 환영합니다
class CreatePage4 extends StatefulWidget {
  const CreatePage4({Key? key}) : super(key: key);

  @override
  State<CreatePage4> createState() => _CreatePage4State();
}

class _CreatePage4State extends State<CreatePage4> {
  // TextField의 값을 가져올 때 사용합니다.
  TextEditingController textController = TextEditingController();

  // 경고 메세지
  String? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                Transition(
                    child: CreatePage5(),
                    transitionEffect: TransitionEffect.LEFT_TO_RIGHT));
          },
          color: BucketColor.keycolor,
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: BucketColor.white,
        elevation: 1, //작업 완료후 0으로 설정
        title: Container(
          child: Image.asset(
            'assets/images/logo.png',
            height: 30,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // print('setting menu'); //추후 팝업 윈도우로 변경설정
            },
            icon: Icon(Icons.reorder, color: BucketColor.black),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        color: BucketColor.grey1,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 4.0, top: 40, bottom: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "환영합니다!",
                    style: TextStyle(
                      color: BucketColor.bluegrey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '오르막에서 의미 있고 새로운 경험을 해볼까요?',
                    style: TextStyle(color: BucketColor.bluegrey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.20,
            ),
            Container(
              decoration: BoxDecoration(
                color: BucketColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                '고양이집사',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.73,
            ),
            ElevatedButton(
              onPressed: () {
                // On button presed
                Navigator.pushReplacement(
                    context,
                    Transition(
                        child: HomePage(),
                        transitionEffect: TransitionEffect.RIGHT_TO_LEFT));
              },
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: BucketColor.keycolor),
                  ),
                  primary: BucketColor.keycolor),
              child: const Text(
                "완료",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
