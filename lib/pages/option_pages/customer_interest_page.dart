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
      body: SingleChildScrollView(
        child: Container(
          color: BucketColor.grey1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  "관심이 없는 이유를 선택해주세요.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
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
                        height: 10,
                      ),
                      ListTile(
                        leading: Text('마음에 들지 않는 콘텐츠입니다.'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('혐오 발언'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('사기 혹은 거짓'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('성적인 콘텐츠'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('폭력적인 컨텐츠'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('따돌림 또는 괴롭힘'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('스팸'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('불법 또는 규제 상품 판매'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('정치와 관련된 콘텐츠'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('기타'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
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
