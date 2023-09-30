import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.category});
  final Model category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            width: 160,
            height: 85,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(category.image),
                fit: BoxFit.fill,
              ),
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                category.categoryName,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
