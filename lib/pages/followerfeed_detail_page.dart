import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';
import 'package:x_bucket/pages/follower_page.dart';
import 'package:x_bucket/pages/followerfeed_search_page.dart';
import 'package:x_bucket/pages/option_pages/customer_report_page.dart';

import '../config/colors.dart';
import 'option_pages/customer_interest_page.dart';

class FollowerFeedDetailPage extends StatefulWidget {
  const FollowerFeedDetailPage({Key? key}) : super(key: key);

  @override
  State<FollowerFeedDetailPage> createState() => _FollowerFeedDetailPageState();
}

class _FollowerFeedDetailPageState extends State<FollowerFeedDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    height: 220,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const CustomerInterestPage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 370,
                            height: 80,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                                top: 5,
                              ),
                              child: ListTile(
                                leading: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                  ),
                                  child: Icon(
                                    Icons.disabled_by_default_outlined,
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                ),
                                title: Text(
                                  '"이 유형의 피드를 받고 싶지 않아요"',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                subtitle: Text(
                                  '관심 없음',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const CustomerReportPage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 370,
                            height: 80,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                                top: 5,
                              ),
                              child: ListTile(
                                leading: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                  ),
                                  child: Icon(
                                    Icons.error_outline,
                                    color: Colors.red,
                                    size: 40,
                                  ),
                                ),
                                title: Text(
                                  '"부적절한 컨텐츠입니다"',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                subtitle: Text(
                                  '신고하기',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            icon: Icon(
              Icons.more_horiz,
            ),
          ),
          IconButton(
            onPressed: () {
              Share.share('앱스토어에 오르막을 검색해보세요!');
            },
            icon: Icon(
              Icons.share,
            ),
          ),
          IconButton(
            onPressed: () async {
              String url =
                  'https://hs.e-school.or.kr/webzine/vol13/assets/images/sub/sub07/sub07_img01.png';
              final tempDir = await getTemporaryDirectory();
              final tempPath = '${tempDir.path}/myfile.jpg';

              await Dio().download;

              await GallerySaver.saveVideo(tempPath, albumName: 'Ormak');

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('갤러리에 저장되었습니다!'),
                ),
              );
            },
            icon: Icon(
              Icons.file_download,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.brown[400],
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 550,
                  width: double.infinity,
                  child: FittedBox(
                    child: Image.asset('assets/images/wang.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 400,
                  ),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.black54.withOpacity(0.15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/blind.png'),
                                  radius: 15,
                                  backgroundColor: BucketColor.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '왕눈이',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                          ),
                          child: Text(
                            'Subject',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 25,
                              ),
                              child: Text(
                                '음악 듣기... 이 앨범이 벌써. 20년이나 지났다니....~! \n이젠 집에 테이프 Lorem Ipsum',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 8,
                              ),
                              child: Text(
                                "72",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
