import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/result_model.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';

class NewsTileListView extends StatelessWidget {
  final List<ResultModel> resultes;

  const NewsTileListView({
    required this.resultes,
    super.key,
  });
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
