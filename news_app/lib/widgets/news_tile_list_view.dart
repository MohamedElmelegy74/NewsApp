import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/result_model.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';

class NewsTileListView extends StatefulWidget {
  const NewsTileListView({
    super.key,
  });

  @override
  State<NewsTileListView> createState() => _NewsTileListViewState();
}

class _NewsTileListViewState extends State<NewsTileListView> {
  List<ResultModel> resultes = [];
  @override
  void initState() {
    super.initState();
    getTopNews();
  }

  Future<void> getTopNews() async {
    resultes = await NewsSevices(Dio()).getNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: resultes.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(
              resultModel: resultes[index],
            ),
          );
        },
      ),
    );
  }
}
