final class ApiException implements Exception {
  final String error;
  const ApiException(this.error);

  @override
  String toString() => "ApiException(error: $error)";
}