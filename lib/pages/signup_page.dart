import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:x_bucket/auth_service.dart';
import 'package:x_bucket/main.dart';
import '../config/colors.dart';
import 'package:transition/transition.dart';
import 'package:group_button/group_button.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  ///0번째 페이지
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthService>(
      builder: (context, authService, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: BucketColor.white,
            elevation: 0, //작업 완료후 0으로 설정
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
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 4.0, top: 40, bottom: 4.0),
                  child: Column(
                    children: [
                      Text(
                        '약관 동의',
                        style: TextStyle(
                          color: BucketColor.bluegrey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.08,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: BucketColor.grey1,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.check_box),
                        color: Colors.white,
                        splashColor: BucketColor.ocolor,
                      ),
                      Text('모두 확인, 동의합니다.'),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.03,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: BucketColor.grey1,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.check_box),
                        color: Colors.white,
                        splashColor: BucketColor.ocolor,
                      ),
                      Text('45세 이상 동의 (필수)'),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_right))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: BucketColor.grey1,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.check_box),
                        color: Colors.white,
                        splashColor: BucketColor.ocolor,
                      ),
                      Text('개인정보 처리방침 동의 (필수)'),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_right))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: BucketColor.grey1,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.check_box),
                        color: Colors.white,
                        splashColor: BucketColor.ocolor,
                      ),
                      Text('서비스 이용 약관 동의 (필수)'),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_right))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: BucketColor.grey1,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.check_box),
                        color: Colors.white,
                        splashColor: BucketColor.ocolor,
                      ),
                      Text('광고성 동의 (선택)'),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_right))
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.33,
                ),
                ElevatedButton(
                  onPressed: () {
                    // On button presed
                    Navigator.pushReplacement(
                        context,
                        Transition(
                            child: CreatePage0(),
                            transitionEffect: TransitionEffect.RIGHT_TO_LEFT));
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: BucketColor.ocolor),
                      ),
                      primary: BucketColor.ocolor),
                  child: const Text(
                    "다음",
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// 0번째 페이지
class CreatePage0 extends StatefulWidget {
  const CreatePage0({Key? key}) : super(key: key);

  @override
  State<CreatePage0> createState() => _CreatePage0State();
}

class _CreatePage0State extends State<CreatePage0> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthService>(
      builder: (context, authService, child) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    Transition(
                        child: SignUpPage(),
                        transitionEffect: TransitionEffect.LEFT_TO_RIGHT));
              },
              color: BucketColor.ocolor,
              icon: Icon(Icons.arrow_back),
            ),
            backgroundColor: BucketColor.white,
            elevation: 0, //작업 완료후 0으로 설정
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
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 4.0, top: 40, bottom: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "전화번호를 입력해 주세요.",
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
                        '본인인증 및 로그인을 위해 사용됩니다.',
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
                    color: BucketColor.grey1,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelStyle:
                            TextStyle(color: BucketColor.grey3, fontSize: 15),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        // border: OutlineInputBorder(),
                        hintText: '예) 010-1234-1234'),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "전화번호를 입력해주세요";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.67,
                ),
                ElevatedButton(
                  onPressed: () {
                    // On button presed
                    Navigator.pushReplacement(
                        context,
                        Transition(
                            child: CreatePage1(),
                            transitionEffect: TransitionEffect.RIGHT_TO_LEFT));
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: BucketColor.ocolor),
                      ),
                      primary: BucketColor.ocolor),
                  child: const Text(
                    "다음",
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

///첫번째 페이지
class CreatePage1 extends StatefulWidget {
  const CreatePage1({Key? key}) : super(key: key);

  @override
  State<CreatePage1> createState() => _CreatePage1State();
}

class _CreatePage1State extends State<CreatePage1> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthService>(
      builder: (context, authService, child) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    Transition(
                        child: CreatePage0(),
                        transitionEffect: TransitionEffect.LEFT_TO_RIGHT));
              },
              color: BucketColor.ocolor,
              icon: Icon(Icons.arrow_back),
            ),

            backgroundColor: BucketColor.white,
            elevation: 0, //작업 완료후 0으로 설정
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
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 4.0, top: 40, bottom: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "비밀번호를 설정해 주세요.",
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
                        '비밀번호를 입력해 주세요. 대소문자를 구분합니다.',
                        style: TextStyle(color: BucketColor.bluegrey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.11,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: BucketColor.grey1,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelStyle:
                            TextStyle(color: BucketColor.grey3, fontSize: 15),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        // border: OutlineInputBorder(),
                        hintText: '6자리 이상 입력'),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "비밀번호를 입력해주세요";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.04,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: BucketColor.grey1,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelStyle:
                            TextStyle(color: BucketColor.grey3, fontSize: 15),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        // border: OutlineInputBorder(),
                        hintText: '한 번 더 입력'),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "비밀번호를 한번 더 입력해주세요";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.56,
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
                        side: BorderSide(color: BucketColor.ocolor),
                      ),
                      primary: BucketColor.ocolor),
                  child: const Text(
                    "다음",
                  ),
                ),
              ],
            ),
          ),
        );
      },
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
                      child: CreatePage1(),
                      transitionEffect: TransitionEffect.LEFT_TO_RIGHT));
            },
            color: BucketColor.ocolor,
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: BucketColor.white,
          elevation: 0, //작업 완료후 0으로 설정
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
          color: BucketColor.white,
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
                      '오르막 서비스는 만 45세 이상부터 가입이 가능합니다.',
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
                      side: BorderSide(color: BucketColor.ocolor),
                    ),
                    primary: BucketColor.ocolor),
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

/// 세번째 페이지 - 관심사 선택
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
          color: BucketColor.ocolor,
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: BucketColor.white,
        elevation: 0, //작업 완료후 0으로 설정
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
        color: BucketColor.white,
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
                    '아래 키워드 중 3가지 이상 선택해주세요.',
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
                  selectedColor: BucketColor.ocolor,
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
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
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
                    side: BorderSide(color: BucketColor.ocolor),
                  ),
                  primary: BucketColor.ocolor),
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

/// 네번째 페이지 - 프로필 사진 / 소개 입력
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
                    child: CreatePage3(),
                    transitionEffect: TransitionEffect.LEFT_TO_RIGHT));
          },
          color: BucketColor.ocolor,
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: BucketColor.white,
        elevation: 0, //작업 완료후 0으로 설정
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
        color: BucketColor.white,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 4.0, top: 40, bottom: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "프로필을 완성해 주세요.",
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
                    '프로필 사진과 본인의 이름, 자기소개를 입력해 주세요.',
                    style: TextStyle(color: BucketColor.bluegrey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.18,
            ),
            Container(
              decoration: BoxDecoration(
                color: BucketColor.grey1,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: '닉네임',
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  labelStyle: TextStyle(color: BucketColor.grey3, fontSize: 15),
                  hintText: 'ex) 고양이집사',
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "닉네임을 입력해주세요";
                  }
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.04,
            ),
            Container(
              decoration: BoxDecoration(
                color: BucketColor.grey1,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: '자기소개를 입력해 주세요.',
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  labelStyle: TextStyle(color: BucketColor.grey3, fontSize: 15),
                  hintText: 'ex) 저는 고양이 2마리를 키우고 있는 집사랍니다!',
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "닉네임을 입력해주세요";
                  }
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.48,
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
                    side: BorderSide(color: BucketColor.ocolor),
                  ),
                  primary: BucketColor.ocolor),
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
                    child: CreatePage4(),
                    transitionEffect: TransitionEffect.LEFT_TO_RIGHT));
          },
          color: BucketColor.ocolor,
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: BucketColor.white,
        elevation: 0, //작업 완료후 0으로 설정
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
        color: BucketColor.white,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 4.0, top: 40, bottom: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "가입 성공!",
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
                    '오르막에 오신 것을 환영합니다.\n이제 오르막을 마음껏 이용하실 수 있습니다!',
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
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                color: BucketColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                '저는 고양이 집사랍니다!',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.57,
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
                    side: BorderSide(color: BucketColor.ocolor),
                  ),
                  primary: BucketColor.ocolor),
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
