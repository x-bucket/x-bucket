import 'package:flutter/material.dart';
import 'package:x_bucket/constants.dart';
import 'package:x_bucket/views/widgets/custom_icon.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            pageIdx = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        currentIndex: pageIdx,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera, size: 50),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 30),
            label: '',
          ),
        ],
      ),
      body: pages[pageIdx],
    );
  }
}
