import 'package:flutter/material.dart';
import 'package:x_bucket/pages/followershow_page.dart';
import 'package:x_bucket/pages/profile_edit.dart';
import 'package:x_bucket/pages/settings_page.dart';

import '../../config/colors.dart';

class CustomerInterestPage extends StatefulWidget {
  const CustomerInterestPage({Key? key}) : super(key: key);

  @override
  State<CustomerInterestPage> createState() => _CustomerInterestPageState();
}

class _CustomerInterestPageState extends State<CustomerInterestPage> {
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
        elevation: 1,
        title: Text(
          '콘텐츠 관심없음 접수하기',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: BucketColor.black),
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
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                      top: 20,
                    ),
                    child: Text(
                      '해당 컨텐츠와 관련해서 관심없음을 접수하실 부분이 있으신가요?',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 30,
                    ),
                    child:
                        Text('밑에 접수하실 내용을 작성해주시면 오르막 고객지원팀이 5일 이내에 답변을 드립니다.'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        '접수 제목 :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '접수 제목을 입력하세요.',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 300,
                    ),
                    child: Text(
                      '신고 내용',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '접수하시는 이유를 입력하세요.',
                      contentPadding: EdgeInsets.only(
                        bottom: 90,
                        left: 10,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '접수 등록',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
