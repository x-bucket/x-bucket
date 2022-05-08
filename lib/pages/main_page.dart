import 'package:flutter/material.dart';

import '../config/colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: BucketColor.white,
          elevation: 1, //작업 완료후 0으로 설정
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 80,
                  ),
                ),
                Container(
                  child: Icon(Icons.person, color: BucketColor.black),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text(
                  '오늘의 질문',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://admin.itsnicethat.com/images/hIth9gqziTZ1FbHpbxVElntgJnI=/6826/format-webp%7Cwidth-1440/59fb502b7fa44c6ad6002000.jpg',
                      ),
                      fit: BoxFit.cover)),
              child: ListTile(
                title: Text(
                  '20년 전',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  '"20년 전 이맘때 무엇을 하셨나요?"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            //그리드뷰 앨범
            Container(
              decoration: BoxDecoration(
                color: BucketColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: BucketColor.keycolor,
                    indicatorWeight: 3.0,
                    unselectedLabelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    tabs: [
                      Tab(
                        child: Text(
                          '전체보기',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          '오늘의 질문',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        width: 80,
                        height: 500,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    },
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
