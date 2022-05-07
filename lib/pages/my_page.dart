import 'package:flutter/material.dart';
import 'package:x_bucket/pages/followershow_page.dart';
import 'package:x_bucket/pages/profile_edit.dart';
import 'package:x_bucket/pages/settings_page.dart';
import 'package:x_bucket/pages/sub_mypages/guest_book_page.dart';
import 'package:x_bucket/pages/sub_mypages/mycategories_page.dart';

import '../config/colors.dart';
import 'follower_page.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 5,
            ),
            child: Image.asset(
              'assets/images/mainlogo.png',
              height: 150,
            ),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
            icon: Icon(Icons.settings, color: BucketColor.black),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 5,
          left: 10,
          right: 10,
        ),
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
                  ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/lynch.png'),
                          radius: 30,
                          backgroundColor: BucketColor.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 30,
                          ),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[350],
                            ),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ProfileEdit()),
                                );
                              },
                              elevation: 2.0,
                              child: Icon(
                                Icons.edit_outlined,
                                size: 15.0,
                                color: Colors.black,
                              ),
                              shape: CircleBorder(),
                            ),
                          ),
                        )
                      ],
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                      ),
                      child: Container(
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
                    ),
                    subtitle: Text(
                      "귀농을 준비하는 60년생 쥐띠입니다. 앞으로 잘 부탁드려요!",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                '북마크한 회원',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  '123',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                '좋아요',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  '5210',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                '올린 글',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  '21',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 280,
                      top: 10,
                    ),
                    child: Text(
                      '내 관심사',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GridView.builder(
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2.0 / 0.9,
                    ),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, index) {
                      return Column(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                child: Center(
                                  child: Text(
                                    '관심',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                width: 60,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 295,
                    ),
                    child: Container(
                      child: Center(
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MyCategoriesPage(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.add,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          '방명록',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const GuestBookPage(),
                              ),
                            );
                          },
                          child: Text(
                            '전체보기',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[850],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FollowerPage(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/lynch.png'),
                          radius: 15,
                          backgroundColor: BucketColor.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FollowerPage(),
                            ),
                          );
                        },
                        child: Expanded(
                          child: Text(
                            '왕눈이',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text('와 영상 잘 만드신다. 앞으로 잘 부탁드려요.'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          '3주 전',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
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
