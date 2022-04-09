import 'package:flutter/material.dart';

import '../config/colors.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

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
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 4.0, bottom: 4.0),
                  child: Text(
                    '나의 투자명언',
                    style: TextStyle(
                      color: BucketColor.bluegrey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: BucketColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                children: [
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
                      icon: Icon(Icons.bookmark, size: 30),
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
                      icon: Icon(Icons.bookmark, size: 30),
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
                      icon: Icon(Icons.bookmark, size: 30),
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
                      icon: Icon(Icons.bookmark, size: 30),
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
                      icon: Icon(Icons.bookmark, size: 30),
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
                      icon: Icon(Icons.bookmark, size: 30),
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
