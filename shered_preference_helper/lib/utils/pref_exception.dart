class WrongDatatypeException implements Exception {
  String message;
  String key;
  WrongDatatypeException(this.key, this.message);

  @override
  String toString() {
    return message;
  }
}

class KeyNotFoundException implements Exception {
  String message;
  String key;
  KeyNotFoundException(this.key, this.message);

  @override
  String toString() {
    return message;
  }
}
