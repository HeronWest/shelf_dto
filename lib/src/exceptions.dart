class DTOException implements Exception {
  final List<String> errors;

  DTOException(this.errors);

  @override
  String toString() {
    return errors.toString();
  }
}
