import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/category_list_view.dart';
import 'package:news_app_ui_setup/widgets/news_tile_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(child: CategoryListView()),
            Expanded(
              flex: 6,
              child: NewsTileListView(),
            )
          ],
        ),
      ),
    );
  }
}
