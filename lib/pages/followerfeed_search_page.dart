import 'package:flutter/material.dart';
import 'package:x_bucket/pages/follower_page.dart';

import '../config/colors.dart';

class FollowerFeedSearchPage extends StatefulWidget {
  const FollowerFeedSearchPage({Key? key}) : super(key: key);

  @override
  State<FollowerFeedSearchPage> createState() => _FollowerFeedSearchPage();
}

class _FollowerFeedSearchPage extends State<FollowerFeedSearchPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.grey,
              ),
            ),
          ),
          backgroundColor: BucketColor.white,
          elevation: 1, //작업 완료후 0으로 설정
          title: Text(
            '친구 검색',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: '아이디를 검색하세요.',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/blind.png'),
                      radius: 30,
                      backgroundColor: BucketColor.white,
                    ),
                    title: Container(
                      padding: EdgeInsets.only(bottom: 4.0),
                      //_my account name
                      child: Text(
                        '왕눈이',
                        style: TextStyle(
                          color: BucketColor.keycolor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    trailing: TextButton(
                      onPressed: () {},
                      child: Text('프로필 보기'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
