import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/result_model.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/widgets/news_tile_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ResultModel> resultes = [];
  bool isLoding = true;

  @override
  void initState() {
    super.initState();
    getTopNews();
  }

  Future<void> getTopNews() async {
    resultes = await NewsSevices(Dio()).getNews();
    isLoding = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoding
        ? const SliverToBoxAdapter(
            child: Center(
              child: SliverFillRemaining(),
            ),
          )
        : NewsTileListView(
            resultes: resultes,
          );
  }
}
