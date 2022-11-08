import 'package:dio/dio.dart' as Http;
import 'package:dio/dio.dart';


class BaseServices {
  final String baseUrl = '';
  final String baseUrlDemo = '';
  


  // |=====================================================================
  // | Shorthand
  // |=====================================================================
Future<Http.Response<Map<String,dynamic>>> get(
  String path,{
    bool includeBasePath = true,
    Map<String,dynamic> queryParameters,
    Http.Response<Map<String,dynamic>> mockResponse,
    Options options,
}) async{
  // if (usingMockData) {
  // }
}

  
}