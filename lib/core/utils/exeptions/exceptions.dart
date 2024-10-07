abstract class RoutesExceptions {}

class RemoteException extends RoutesExceptions {
  String errorMessage;

  RemoteException(this.errorMessage);

  @override
  String toString() {
    return errorMessage;
  }
}

class LocalException extends RoutesExceptions {
  String errorMessage;

  LocalException(this.errorMessage);

  @override
  String toString() {
    return errorMessage;
  }
}
