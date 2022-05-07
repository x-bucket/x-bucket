import 'package:flutter/material.dart';
import 'package:x_bucket/pages/follower_page.dart';
import 'package:x_bucket/pages/followerfeed_detail_page.dart';
import 'package:x_bucket/pages/followerfeed_search_page.dart';

import '../config/colors.dart';

class FollowFeedPage extends StatelessWidget {
  const FollowFeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Image.asset(
              'assets/images/mainlogo.png',
              height: 150,
            ),
          ),
        ),
        backgroundColor: BucketColor.white,
        elevation: 1, //작업 완료후 0으로 설정

        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FollowerFeedSearchPage(),
                ),
              );
            },
            icon: Icon(Icons.search, color: BucketColor.black),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        color: BucketColor.grey1,
        child: ListView(
          children: [
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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '함께가는 회원 글보기',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      GestureDetector(
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
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
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
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
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
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 15,
                      childAspectRatio: 150 / 370,
                    ),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (BuildContext ctx, index) {
                      return Column(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const FollowerFeedDetailPage(),
                                  ),
                                );
                              },
                              child: Card(
                                margin: EdgeInsets.all(0),
                                child: AspectRatio(
                                  aspectRatio: 1 / 2,
                                  child:
                                      Image.asset('assets/images/jurine.png'),
                                ),
                              ),
                              // child: Container(
                              //   child: Image.asset('assets/images/jurine.png'),
                              //   width: MediaQuery.of(context).size.width * 0.6,
                              //   height:
                              //       MediaQuery.of(context).size.height * 0.4,
                              //   decoration: BoxDecoration(
                              //     color: Colors.grey[300],
                              //     borderRadius: BorderRadius.circular(10),
                              //   ),
                              // ),
                            ),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const FollowerPage(),
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
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const FollowerPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  '왕눈이',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(width: 30),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                ),
                              ),
                              Text(
                                '71',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                            ),
                            child: Row(
                              children: [
                                GestureDetector(
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
                                    width: 50,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '1 day ago',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(
                    height: 30,
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
