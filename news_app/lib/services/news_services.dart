import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/result_model.dart';

class NewsSevices {
  final Dio dio;
  NewsSevices(this.dio);
  Future<List<ResultModel>> getNews() async {
    var response = await dio.get(
        'https://newsdata.io/api/1/news?country=eg&apikey=pub_297772c788a1791585668b3968d310a7b7d13&image=1');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> results = jsonData['results'];

    List<ResultModel> resultList = [];
    for (var result in results) {
      ResultModel reslutModel = ResultModel(
        image: result['image_url'],
        title: result['title'],
        description: result['description'],
      );
      resultList.add(reslutModel);
      print(resultList);
    }
    return resultList;
  }
}
