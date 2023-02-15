import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:login_server/common/eks_app_results.dart';

abstract class AppRepository {
  ApiResult<T> parseError<T>(DioError e, {T? data}) {
    if (e.type == DioErrorType.other) {
      var err = e.error;
      if (err is SocketException) {
        log("SocketException: ${e.message}");
        if (err.osError?.errorCode == 101) {
          return ApiResult.connectionFailed(data: data);
        }
      }
    }
    log("${runtimeType.toString()}: ${e.message}", stackTrace: e.stackTrace);
    if (e.type == DioErrorType.connectTimeout) {
      return ApiResult.error("Connection Timeout. Please try again",
          data: data);
    }
    if ([403].contains(e.response?.statusCode)) {
      return ApiResult.sessionExpired(data: data);
    } else if ([400].contains(e.response?.statusCode)) {
      var response = e.response!.data.toString();
      if (response.contains("ValidationError")) {
        var res = response.split("ValidationError: (u")[1];
        RegExp exp = RegExp("'(.*?)'");
        var result = exp.stringMatch(res) ?? "''";
        result = (result.substring(1, result.length - 1));
        return ApiResult.error(result, data: data);
      }
      return ApiResult.error(e.message, data: data);
    } else {
      return ApiResult.error(e.message, data: data);
    }
  }
}
