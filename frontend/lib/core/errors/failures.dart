abstract class Failure {}

class ServerFailure extends Failure {}

class NullParamFailure extends Failure {}

class UserNotFoundFailure extends Failure {}

class TeamNotFoundFailure extends Failure {}

class EmptyPersonsFailure extends Failure {
  final String message;
  EmptyPersonsFailure(this.message);
}

class InvalidDailyFailure extends Failure {}
