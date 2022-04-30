import 'package:flutter/material.dart';

import '../config/colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        color: BucketColor.grey1,
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: BucketColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                leading: Icon(
                  Icons.search,
                  size: 40,
                  color: BucketColor.keycolor,
                ),
                title: Container(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    '투자중인 종목을 검색해 보세요.',
                    style: TextStyle(
                      color: BucketColor.keycolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                subtitle: Text(
                  '종목명 또는 티커로 검색',
                  style: TextStyle(
                    color: BucketColor.grey3,
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    print('searching button');
                  },
                  icon: Icon(Icons.arrow_forward_ios, size: 20),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                color: BucketColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          '오늘의 투자명언',
                          style: TextStyle(
                            color: BucketColor.bluegrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/lynch.png'),
                      radius: 30,
                      backgroundColor: BucketColor.white,
                    ),
                    title: Container(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        '주식시장은 확신을 요구하며, \n확신이 없는 사람들은 반드시 희생된다.',
                        style: TextStyle(
                          color: BucketColor.keycolor,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      '피터 린치 Peter Lynch 1944.1.14 ~ ',
                      style: TextStyle(
                        color: BucketColor.grey3,
                        fontSize: 10,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        print('wise saying button');
                      },
                      icon: Icon(Icons.bookmark_border, size: 30),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                color: BucketColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          '나의 투자MBTI',
                          style: TextStyle(
                            color: BucketColor.bluegrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/jurine.png',
                            width: 200,
                            height: 200,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.insights,
                      size: 40,
                      color: BucketColor.keycolor,
                    ),
                    title: Container(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        '투자유형 분석하기',
                        style: TextStyle(
                          color: BucketColor.keycolor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      '영혼의 투자를 시작하세요',
                      style: TextStyle(
                        color: BucketColor.grey3,
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        print('analytics button');
                      },
                      icon: Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
