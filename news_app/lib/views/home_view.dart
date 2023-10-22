import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/category_list_view.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_bulider.dart';

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
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(
              category: 'top',
            ),
            // SliverFillRemaining(
            //   hasScrollBody: false,
            //   child: Center(child: LodingData()),
            // ),
            // SliverFillRemaining(
            //   hasScrollBody: false,
            //   child: Center(
            //     child: ErrorMassage(
            //       massage: '',
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      // body: const Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 16),
      //   child: Column(
      //     children: [
      //       CategoryListView(),
      //       SizedBox(
      //         height: 32,
      //       ),
      //       NewsTileListView(),
      //     ],
      //   ),
      // ),
    );
  }
}
