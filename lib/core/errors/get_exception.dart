class MainException implements Exception {
  String? message;
  bool catchException = false;
  dynamic content;
  MainException({
    this.message,
    this.catchException = false,
    this.content,
  });

  @override
  String toString() => 'MainException(message: $message)';

  factory MainException.mock() {
    return MainException(message: 'Falha na operação');
  }

  String getMessage() {
    if (catchException || message == null) {
      return "Erro na requisição";
    }
    return message!;
  }
}
