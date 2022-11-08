import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';


class BaseServices {
  final String baseUrl = '	https://covid19.ddc.moph.go.th/api/Cases/timeline-cases-all';
   final Options defaultOptions = Options(
    sendTimeout: 60 * 1000,
    receiveTimeout: 60 * 1000,
  );


  // |=========================================================================
  // | Shorthand
  // |=========================================================================

Future<http.Response> post(dynamic data) async{
SharedPreferences prefs = await SharedPreferences.getInstance();
 return await http.post(
        Uri.parse(prefs.getInt('server') == 0
            ?? baseUrl),
            
        headers: <String, String>{
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: data);
}
}

class CustomClient {
  static BaseOptions options = BaseOptions(
    baseUrl: "",
    responseType: ResponseType.plain,
    connectTimeout: 60000,
    receiveTimeout: 60000,
    followRedirects: false,
    validateStatus: ((status) {
      return status < 500;
    })
  );

  Dio dio = Dio(options);
  

  Future<Response> get(String url) async {
  try {
    dio.interceptors.clear();
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: ((options, handler) async {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        final String accessToken = preferences.getString('access_token');
        options.headers = {"Authorization": "Barer $accessToken"};
        options.baseUrl = getBaseUri(preferences.getInt('server'));
        return handler.next(options); //continue
      }),
      onResponse: ((response, handler) async{
        return handler.next(response);
      })
    ));
    return dio.get('Cases/' + url);
    
  } catch (e) {
    print(e);
    throw e;
  }

  }
  


    // REST API Method
     String basePath(String path) => "$basePath$path";

  // Future<http.Response<Map<String, dynamic>>> _get(
  //   String path, {
  //   bool includeBasePath = true,
  //   Map<String, dynamic> queryParameters,
  //   Options options,
  // }) async {
  //   try {
  //     return await _dio.get<Map<String, dynamic>>(
  //       includeBasePath ? basePath(path) : path,
  //       queryParameters: queryParameters ?? {},
  //       options: options ?? defaultOptions,
  //     );
  //   } on http.DioError catch (e) {
  //     if (e.type == http.DioErrorType.response ||
  //         e.type == http.DioErrorType.other) throw e;
  //     return e.response
  //         .mapData((dynamic data) => data as Map<String, dynamic>?);
  //   }
  // }


  //   Future<http.Response<Map<String, dynamic>>> get(
  //   String path, {
  //   bool includeBasePath = true,
  //   Map<String, dynamic> queryParameters,
  //   // http.Response<Map<String, dynamic>>? mockResponse,
  //   Options options,
  // }) async {

  //   return await _get(
  //     path,
  //     includeBasePath: includeBasePath,
  //     queryParameters: queryParameters,
  //     options: options,
  //   );
  // }

  Future<Response> post(String url,dynamic data) async {
    try {
      dio.interceptors.clear();
      dio.interceptors.add(InterceptorsWrapper(
        
        onRequest: ((options, handler) async{
          SharedPreferences preferences = await SharedPreferences.getInstance();
          final String accessToken = preferences.getString('access_token');
           options.headers = {"Authorization": "Bearer $accessToken"};
          options.contentType = "application/json; charset=UTF-8";
          options.baseUrl = getBaseUri(preferences.getInt('server'));
          return handler.next(options);
        }),
        
      ));
      return await dio.post('Cases/'+ url,data: data);
    } catch (e) {
      print(e);
      throw e;
    }
  }


  

  
}
  // get base url
  String getBaseUri(int _selectServer) {
    String baseUri;
    if (_selectServer == 0) {
      baseUri = "${dotenv.env['DOMAIN']}/api/";
    } else {
      baseUri = "${dotenv.env['DOMAIN']}/api/";
    }
    return baseUri;
  }