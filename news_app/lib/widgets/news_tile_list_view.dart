import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';

class NewsTileListView extends StatelessWidget {
  const NewsTileListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 22),
            child: NewsTile(),
          );
        },
      ),
    );
  }
}
