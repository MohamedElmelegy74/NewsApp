import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';

class NewsTileListView extends StatelessWidget {
  const NewsTileListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const NewsTile();
      },
    );
  }
}
