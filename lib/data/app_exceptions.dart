class AppExceptions implements Exception {
  final _message;
  final _prefix;
  AppExceptions([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super(message, "Error During Communication");
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message]) : super(message, "Invalid Request");
}

class UnAuthorizedRequest extends AppExceptions {
  UnAuthorizedRequest([String? message]) : super(message, "UnAuthorized Error");
}

class InvalidInput extends AppExceptions {
  InvalidInput([String? message]) : super(message, "Invalid Input");
}
