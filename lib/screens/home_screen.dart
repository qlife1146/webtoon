import 'package:flutter/material.dart';
import 'package:webtoon/models/webtoon.dart';
import 'package:webtoon/services/api_service.dart';
import 'package:webtoon/widgets/webtoon_widget.dart';

//웹툰 중 '&' 후에 'amp;'가 나와서 삭제 후 출력하게 변경.

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2DB400),
        elevation: 1,
        centerTitle: true,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //snapshot에 데이터가 있으면 ListView로 데이터 출력
            // return ListView(
            //   children: [
            //     for (var webtoon in snapshot.data!)
            //       Text(
            //         webtoon.title,
            //         style: const TextStyle(
            //           fontSize: 20,
            //         ),
            //       ),
            //   ],
            // );
            // return makeList(snapshot);
            return Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Expanded(child: makeList(snapshot))
              ],
            );
          } else {
            //데이터가 없으면 로딩 서클을 출력.
            return const Center(
              child: CircularProgressIndicator(), //드디어 로딩 원에 대해서 알았다.
            );
          }
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      //ListView.builder: 무한 스크롤의 최적화에 도움을 주는 형식. 모든 데이터를 로드하지 않음.
      //ListView.separated: 구분자. 데이터를 문자열처럼 파이썬에서 sep과 비슷한 기능. 근데 위젯을 사용함.
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Webtoon(
          title: webtoon.title,
          thumb: webtoon.thumb,
          id: webtoon.id,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}
