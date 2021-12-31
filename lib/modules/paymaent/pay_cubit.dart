import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mylibrary/models/pay_model.dart';
import 'package:mylibrary/modules/paymaent/pay_states.dart';

class PayCubit extends Cubit<PayStates> {
  PayCubit() : super(PayInitialState());

  static PayCubit get(context) => BlocProvider.of(context);
  void paymentMethod({
    required String name,
    required String serial,
    required String cvv,
  })
  {
    emit(PayLoadingState());

    PayModel model = PayModel(
      name: name,
      serial: serial,
      cvv: cvv,
    );

    FirebaseFirestore.instance
        .collection('payment')
        .add(model.toMap())
        .then((value)
    {
      emit(PaySuccessState());
    })
        .catchError((error)
    {
      emit(PayErrorState(error.toString()));
    });
  }
}