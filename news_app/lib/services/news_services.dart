import 'package:dio/dio.dart';

class NewsSevices {
  final Dio dio;
  NewsSevices(this.dio);
  getNews() async {
    var response = await dio.get(
        'https://newsdata.io/api/1/news?apikey=pub_297772c788a1791585668b3968d310a7b7d13&category=top&language=ar');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> results = jsonData['results'];
    for (var reslut in results) {
      print(reslut);
    }
  }
}
