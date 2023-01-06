import 'package:flutter/foundation.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:logger/logger.dart';

class LoggerInterceptor implements InterceptorContract {
  final Logger logger = Logger();

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    if (kDebugMode) {
      logger.i("Send request to ${data.url}");
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    if (kDebugMode) {
      logger.i("Response of ${data.url} \nStatus code: ${data.statusCode} \n${data.body}");
    }
    return data;
  }
}
