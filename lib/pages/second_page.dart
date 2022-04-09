import 'package:flutter/material.dart';

import '../config/colors.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BucketColor.white,
        elevation: 1, //작업 완료후 0으로 설정
        title: Container(
          child: Image.asset(
            'assets/images/logo.png',
            height: 150,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print('setting menu'); //추후 팝업 윈도우로 변경설정
            },
            icon: Icon(Icons.reorder, color: BucketColor.black),
          ),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Text(
                    '나의 투자MBTI를 찾아보고,\n건강한 투자습관을 만들어 보세요.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: BucketColor.keycolor,
                    ),
                  ),
                  SizedBox(height: 38),
                  Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/blind.png',
                            width: 200,
                            height: 200,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 38),
                  GestureDetector(
                    onTap: () {
                      print('+ 분석하기 버튼 클릭 됨');
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 24,
                      ),
                      decoration: BoxDecoration(
                        color: BucketColor.keycolor,
                        borderRadius: BorderRadius.circular(64),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.search, color: BucketColor.white),
                          SizedBox(width: 6),
                          Text(
                            '분석하기',
                            style: TextStyle(
                              color: BucketColor.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
