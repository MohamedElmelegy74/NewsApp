import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/result_model.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/widgets/news_tile_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsSevices(Dio()).getTopNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ResultModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTileListView(
            resultes: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            // child: ErrorMassage(massage: ''),
            child: Center(child: Text('Error Try Later ')),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
            // child: LodingData(),
          );
        }
      },
    );
    // isLoding
    //       ? const SliverToBoxAdapter(
    //           child: Center(),
    //         )
    //       : resultes.isNotEmpty
    //           ? NewsTileListView(
    //               resultes: resultes,
    //             )
    // : const SliverToBoxAdapter(
    //     child: Text('error try later'),
    //   );
    // }
  }
}

// class ErrorMassage extends StatelessWidget {
//   const ErrorMassage({
//     super.key,
//     required this.massage,
//   });
//   final String massage;
//   @override
//   Widget build(BuildContext context) {
//     return const Text(
//       'Error Try Later',
//       style: TextStyle(fontSize: 20),
//     );
//   }
// }

class LodingData extends StatelessWidget {
  const LodingData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
