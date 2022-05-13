import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:x_bucket/controllers/search_controller.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  final SearchController searchController = Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: TextFormField(
          decoration: const InputDecoration(
              filled: false,
              hintText: '유저 검색하기',
              hintStyle: TextStyle(
                fontSize: 18,
                color: Colors.white,
              )),
        ),
      ),
      body: const Center(
        child: Text(
          '유저 검색하기',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
