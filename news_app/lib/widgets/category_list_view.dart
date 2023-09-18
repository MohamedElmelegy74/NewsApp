import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/model.dart';
import 'package:news_app_ui_setup/widgets/category_cards.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  final List<Model> catogoris = const [
    Model(
      image: 'assets/business.avif',
      text: 'business',
    ),
    Model(
      image: 'assets/entertaiment.avif',
      text: 'Entertainment',
    ),
    Model(
      image: 'assets/general.avif',
      text: 'General',
    ),
    Model(
      image: 'assets/health.avif',
      text: 'Health',
    ),
    Model(
      image: 'assets/science.avif',
      text: 'Science',
    ),
    Model(
      image: 'assets/sports.avif',
      text: 'Sports',
    ),
    Model(
      image: 'assets/technology.jpeg',
      text: 'Technology',
    )

    // Add more Model objects as needed
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: catogoris.length,
      itemBuilder: (context, index) {
        return Category(
          category: catogoris[index],
        );
      },
    );
  }
}
