import 'dart:developer';
import 'package:equatable/equatable.dart';
import 'package:login_server/features/domain/entities/eks_server_entity.dart';

class ApiResult<T> extends Equatable {
  final Status status;
  final T? data;
  final String? message;
  final ErrorType? errorType;

  ApiResult._({required this.status, this.data, this.message, this.errorType});

  ApiResult.error(this.message,
      {this.status = Status.error,
      this.errorType = ErrorType.generic,
      this.data});

  ApiResult.loading({
    this.status = Status.loading,
    this.data,
    this.message,
    this.errorType,
  });

  ApiResult.success(this.data,
      {this.status = Status.success, this.message, this.errorType});

  ApiResult.noInternet(
      {this.status = Status.error,
      this.data,
      this.message =
          "Action Failed: No internet connection. Please connect to the internet and try again",
      this.errorType = ErrorType.noInternet});

  ApiResult.serverDown(
      {this.status = Status.error,
      this.data,
      this.message = "Action Failed: Server is offline. Please try again later",
      this.errorType = ErrorType.serverDown});
  ApiResult.sessionExpired({
    this.status = Status.error,
    this.data,
    this.message = "Please login to continue",
    this.errorType = ErrorType.sessionExpired,
  });

  ApiResult.noSession({
    this.status = Status.error,
    this.data,
    this.message = "Please login to continue",
    this.errorType = ErrorType.noSession,
  });
  ApiResult.serverNotSupported({
    this.status = Status.error,
    this.data,
    this.message = "Server is not supported/not found",
    this.errorType = ErrorType.serverNotSupported,
  });
  ApiResult.noServerConfigured({
    this.status = Status.error,
    this.data,
    this.message = "Please add a server to continue",
    this.errorType = ErrorType.noServerConfigured,
  });
  ApiResult.connectionFailed({
    this.status = Status.error,
    this.data,
    this.message = "Failed to connect to server",
    this.errorType = ErrorType.connectionFailed,
  });

  @override
  List<Object?> get props => [status, data, message, errorType];
}

enum Status { loading, success, error }

enum ErrorType {
  noInternet,
  serverDown,
  sessionExpired,
  noSession,
  serverNotSupported,
  noServerConfigured,
  generic,
  connectionFailed
}
