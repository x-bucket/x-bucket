import 'package:flutter/material.dart';
import 'package:x_bucket/pages/follower_page.dart';
import 'package:x_bucket/pages/option_pages/account_cancellation_page.dart';
import 'package:x_bucket/pages/option_pages/blocked_accounts_page.dart';
import 'package:x_bucket/pages/option_pages/customer_center_page.dart';
import 'package:x_bucket/pages/option_pages/service_regulation_page.dart';
import 'package:x_bucket/pages/profile_edit.dart';

import '../config/colors.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        backgroundColor: BucketColor.grey1,
        elevation: 1, //작업 완료후 0으로 설정
        title: Text(
          '설정',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: BucketColor.grey1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: BucketColor.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "안내",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        leading: Text('공지사항'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('자주 묻는 질문'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('고객센터'),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const CustomerCenterPage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: BucketColor.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "사용자 설정",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        leading: Text('차단 멤버 관리'),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BlockedAccountsPage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: BucketColor.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "계정",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        leading: Text('회원 탈퇴'),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const AccountCancellationPage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('서비스 이용 약관'),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ServiceRegulationPage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: BucketColor.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      ListTile(
                        leading: Text('현재 버젼'),
                        trailing: Text(
                          '1.36.1 (348)',
                          style: TextStyle(
                            color: Colors.grey,
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
      ),
    );
  }
}
