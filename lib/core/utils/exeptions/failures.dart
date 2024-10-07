abstract class RoutesFailures {}

class RemoteFailures extends RoutesFailures {
  String errorMessage;

  RemoteFailures(this.errorMessage);

  @override
  String toString() {
    return errorMessage;
  }
}

class LocalFailures extends RoutesFailures {
  String errorMessage;

  LocalFailures(this.errorMessage);

  @override
  String toString() {
    return errorMessage;
  }
}
