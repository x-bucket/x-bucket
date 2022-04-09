import 'package:flutter/material.dart';

import 'package:x_bucket/config/colors.dart';

import 'package:x_bucket/pages/first_page.dart';
import 'package:x_bucket/pages/second_page.dart';
import 'package:x_bucket/pages/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'x-bucket',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          FirstPage(),
          SecondPage(),
          ThirdPage(),

          // Center(child: Text('4')),
          // Center(child: Text('5')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        iconSize: 24,
        unselectedItemColor: BucketColor.grey2,
        selectedItemColor: BucketColor.keycolor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: '버킷리스트'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: '회고록'),
          // BottomNavigationBarItem(icon: Icon(Icons.add), label: '홈'),
          // BottomNavigationBarItem(icon: Icon(Icons.add), label: '홈'),
        ],
      ),
    );
  }
}
