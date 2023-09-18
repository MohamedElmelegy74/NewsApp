import 'package:flutter/material.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'this image is maosidfgjuas;dlkfjasp[doifasdfklhasdg[poas[dflkjgisgj iougjsdkl;fgjaiopsdfgadls;kdfgjasghasid;flksajviaosersal;kjdghvals;dkfuasidfg',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'sadfgsadfkljsidfasldkvndficjsadlfgkasjdiofashdfasldkfjasdiughsladkfasdjfiohbv',
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
