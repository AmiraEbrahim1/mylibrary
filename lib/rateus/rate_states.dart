abstract class RateStates {}

class RateInitialState extends RateStates {}
class RateLoadingState extends RateStates {}

class RateSuccessState extends RateStates {}

class RateErrorState extends RateStates {
  final String error;

  RateErrorState(this.error);
}


class RateUsSuccessState extends RateStates {}

class RateUsErrorState extends RateStates {
  final String error;

  RateUsErrorState(this.error);
}
