class PrefException implements Exception {
  String message;
  String key;
  PrefException(this.key, this.message);

  @override
  String toString() {
    return message;
  }
}