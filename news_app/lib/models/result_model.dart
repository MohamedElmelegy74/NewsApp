class ResultModel {
  final String? image;
  final String title;
  final String? description;
  final String? link;

  ResultModel({
    required this.link,
    required this.image,
    required this.title,
    required this.description,
  });
  factory ResultModel.fromJson(json) {
    return ResultModel(
      link: json['link'],
      image: json['image_url'],
      title: json['title'],
      description: json['description'],
    );
  }
}
