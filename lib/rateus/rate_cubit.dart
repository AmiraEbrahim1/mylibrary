import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mylibrary/models/rate_model.dart';
import 'package:mylibrary/rateus/rate_states.dart';

class RateCubit extends Cubit<RateStates> {
  RateCubit() : super(RateInitialState());

  static RateCubit get(context) => BlocProvider.of(context);
  void rateUS({
    required double rate,
    required String feedback,
  })
  {
    emit(RateLoadingState());

    RateModel model = RateModel(
      rate: rate,
      feedback: feedback,
    );

    FirebaseFirestore.instance
        .collection('Rate')
        .add(model.toMap())
        .then((value)
    {
      emit(RateSuccessState());
    })
        .catchError((error)
    {
      emit(RateErrorState(error.toString()));
    });
  }
}