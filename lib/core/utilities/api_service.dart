import 'package:dio/dio.dart';

class ApiService{

  final baseUrl = 'https://fakestoreapi.com/';
  final Dio dio = Dio();


  Future<List<dynamic>> get ({
    required String endPoint,
})async{
    var response = await dio.get('$baseUrl$endPoint');
    List<dynamic> dd= response.data;
    print('******************');
    print(dd);
    return response.data;
  }
}