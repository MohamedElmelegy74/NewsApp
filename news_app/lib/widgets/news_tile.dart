import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/result_model.dart';
import 'package:news_app_ui_setup/views/web_view.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({
    Key? key,
    required this.resultModel,
  }) : super(key: key);

  final ResultModel resultModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (resultModel.image != null) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return WebView(
                  link: resultModel.link,
                );
              },
            ),
          );
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: resultModel.image != null
                ? CachedNetworkImage(
                    imageUrl: resultModel.image ?? '',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  )
                : const Icon(Icons.error),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            resultModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            resultModel.description ?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
