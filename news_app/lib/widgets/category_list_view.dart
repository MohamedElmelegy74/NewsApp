import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_cards.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  final List<Model> catogoris = const [
    Model(
      image: 'assets/general.jpg',
      categoryName: 'Top',
    ),
    Model(
      image: 'assets/job-5382501_1280.jpg',
      categoryName: 'Business',
    ),
    Model(
      image: 'assets/entertaiment.jpg',
      categoryName: 'Entertainment',
    ),

    Model(
      image: 'assets/health.avif',
      categoryName: 'Health',
    ),
    Model(
      image: 'assets/science.avif',
      categoryName: 'Science',
    ),
    Model(
      image: 'assets/sports.jpg',
      categoryName: 'Sports',
    ),
    Model(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    Model(
      image: 'assets/news-426893_1280.jpg',
      categoryName: 'World',
    ),
    Model(
      image: 'assets/food.jpg',
      categoryName: 'Food',
    ),

    // Add more Model objects as needed
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catogoris.length,
        itemBuilder: (context, index) {
          return Category(
            category: catogoris[index],
          );
        },
      ),
    );
  }
}
