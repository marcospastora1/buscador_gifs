class DefaultException implements Exception {
  final String message;
  final StackTrace? stackTrace;
  DefaultException({
    this.message = 'Erro ao carregar dados, verifique sua internet!',
    this.stackTrace,
  });

  @override
  String toString() => message;
}
