import 'package:flutter/material.dart';
import 'package:x_bucket/pages/profile_edit.dart';
import 'package:x_bucket/pages/profile_type_page.dart';

import '../config/colors.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
            child: Image.asset(
              'assets/images/logo.png',
              height: 150,
            ),
          ),
          backgroundColor: BucketColor.white,
          elevation: 1, //작업 완료후 0으로 설정
          title: Text(
            '마이페이지',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                print('setting menu'); //추후 팝업 윈도우로 변경설정
              },
              icon: Icon(Icons.settings, color: BucketColor.black),
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/lynch.png'),
                        radius: 30,
                        backgroundColor: BucketColor.white,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 4.0),
                            //_my account name
                            child: Text(
                              '좋은 마음',
                              style: TextStyle(
                                color: BucketColor.keycolor,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(90, 20),
                              primary: Colors.green,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProfileTypePage()),
                              );
                            },
                            child: Text(
                              '왕눈이 타입',
                              style: TextStyle(
                                color: BucketColor.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            //_my introduction
                            Text(
                              "귀농을 준비하는 60년생 쥐띠입니다. 앞으로 잘 부탁드려요!",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w300),
                            ),
                            //_my categories
                            Text(
                              "#영화관람  #스포츠활동 #농사",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.green,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ProfileEdit()),
                                );
                              },
                              child: Text(
                                "프로필 수정하기",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
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
                    TabBar(
                      indicatorColor: BucketColor.keycolor,
                      indicatorWeight: 3.0,
                      unselectedLabelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            '내가 올린 게시물',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            '내가 저장한 게시물',
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
      ),
    );
  }
}
