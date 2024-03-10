abstract class Failure {
  final int code;
  final String message;

  Failure({
    required this.code,
    required this.message,
  });

  @override
  String toString() => 'Failure: $code, $message';

  String getMessage() => message;

  int getCode() => code;
}
