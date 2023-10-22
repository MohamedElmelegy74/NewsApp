import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/result_model.dart';

class NewsSevices {
  final Dio dio;
  NewsSevices(this.dio);
  Future<List<ResultModel>> getTopNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsdata.io/api/1/news?language=ar&apikey=pub_297772c788a1791585668b3968d310a7b7d13&image=1&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> results = jsonData['results'];

      List<ResultModel> resultList = [];
      for (var result in results) {
        ResultModel reslutModel = ResultModel.fromJson(result);
        resultList.add(reslutModel);
      }
      return resultList;
    } catch (e) {
      return [];
    }
  }
}
