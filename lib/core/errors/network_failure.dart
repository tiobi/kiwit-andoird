import 'failure.dart';

class NetworkFailure extends Failure {
  NetworkFailure({
    required int code,
    required String message,
  }) : super(code: code, message: message);

  @override
  String toString() => 'NetworkFailure: $code, $message';

  @override
  String getMessage() => message;

  @override
  int getCode() => code;
}
