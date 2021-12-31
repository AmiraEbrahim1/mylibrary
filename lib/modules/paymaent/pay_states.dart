abstract class PayStates {}

class PayInitialState extends PayStates {}
class PayLoadingState extends PayStates {}

class PaySuccessState extends PayStates {}

class PayErrorState extends PayStates {
  final String error;

  PayErrorState(this.error);
}


class PaymentSuccessState extends PayStates {}

class PaymentErrorState extends PayStates {
  final String error;

  PaymentErrorState(this.error);
}
