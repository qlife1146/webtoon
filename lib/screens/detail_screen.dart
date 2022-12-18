import 'package:flutter/material.dart';

//직접 디자인. api에 작가는 없어서 제목으로 만족.

class DetailScreen extends StatelessWidget {
  final String title, thumb, id;

  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2DB400),
        elevation: 1,
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      // body: Column(
      //   children: [
      //     Container(
      //       margin: const EdgeInsets.symmetric(
      //         horizontal: 15,
      //         vertical: 15,
      //       ),
      //       child: Row(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Image.network(
      //             thumb,
      //             height: 200,
      //           ),
      //           const SizedBox(
      //             width: 10,
      //           ),
      //           Expanded(
      //             child: Text(
      //               title,
      //               overflow: TextOverflow.clip,
      //               style: const TextStyle(
      //                 fontSize: 35,
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 5,
                ),
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      offset: const Offset(10, 10),
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ],
                ),
                child: Image.network(
                  thumb,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
