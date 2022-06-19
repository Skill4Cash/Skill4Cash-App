import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';

import 'failure.dart';

/// This class contains the [initial network call] setup for the app
/// It contains the [base url]. Other [urls] will be appended at the various ...
/// ...[services] in the services folder.
///
/// It also contains the initial headers, additional headers will be added ...
/// ...in the [services] folder.
/// [DIO] is the package used for network calls; Check [https://pub.dev/packages/dio]
/// [http] is the secondary package used. The API firewall is blocking some network calls...
/// however http was used to handle those cases.
class ApiService {
  // Url for  endpoints
  static final String _baseUrl = "https://skill4cash.herokuapp.com/api/v1/";

  ///Header for  endpoints
  static final Map<String, String> _headers = {
    'Content-type': 'application/json'
  };

  /// [DIO] setup for private endpoints
  final dio = Dio(
    BaseOptions(
      baseUrl: _baseUrl,
      headers: _headers,
      responseType: ResponseType.json,
      connectTimeout: 180000,
      receiveTimeout: 180000,
      followRedirects: false,
    ),
  );

  /// Method for performing  post request. It accepts [url] and [optional body]
  /// It returns the response as a decoded object [(Map or List)]
  /// It also returns error whenever there is
  ///
  Future<dynamic> post(
    String url, {
    dynamic body,
    Options? options,
  }) async {
    try {
      final response = await dio.post(url,
          data: body,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      var result = response.data;

      return result;
    } on SocketException {
      throw Failure('No Internet connection 😑');
    } on HttpException {
      throw Failure("Couldn't find the post 😱");
    } on FormatException {
      throw Failure("Bad response format 👎");
    } on TimeoutException {
      throw Failure('Connection Timeout: Check your internet connection');
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        throw Failure('Connection Timeout: Check your internet connection');
      } else {
        print(e.response!.data.toString());
        throw Failure('${e.response!.data[0]}');
      }
    }
  }

  Future<dynamic> get(
    String url, {
    Options? options,
  }) async {
    try {
      final response = await dio.get(url, options: options);
      var result = response.data;
      return result;
    } on SocketException {
      throw Failure('No Internet connection 😑');
    } on HttpException {
      throw Failure("Couldn't find the post 😱");
    } on FormatException {
      throw Failure("Bad response format 👎");
    } on TimeoutException {
      throw Failure('Connection Timeout: Check your internet connection');
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        throw Failure('Connection Timeout: Check your internet connection');
      } else {
        throw Failure('${e.response!.data[0]}');
      }
    }
  }
}
