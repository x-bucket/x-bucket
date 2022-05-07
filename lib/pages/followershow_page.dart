import 'package:flutter/material.dart';
import 'package:x_bucket/pages/follower_page.dart';
import 'package:x_bucket/pages/profile_edit.dart';

import '../config/colors.dart';

class FollowerShowPage extends StatefulWidget {
  const FollowerShowPage({Key? key}) : super(key: key);

  @override
  State<FollowerShowPage> createState() => _FollowerShowPage();
}

class _FollowerShowPage extends State<FollowerShowPage> {
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
            '팔로워 페이지',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
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
                      height: 5,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/wang.png'),
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FollowerPage()),
                          );
                        },
                        child: Text('프로필 보기'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: BucketColor.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/jurine.png'),
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: BucketColor.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
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
