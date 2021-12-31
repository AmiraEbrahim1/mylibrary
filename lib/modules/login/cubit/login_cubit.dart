import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mylibrary/modules/login/cubit/login_states.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit() : super(LoginInitState());
  // to access to anything here in the login screen page
  static LoginCubit get(context) => BlocProvider.of(context);
  // function change visibility of password
  bool visible = true;
  IconData suffixIcon = Icons.visibility;
  void changeVisibility ()
  {
    visible = !visible;
    suffixIcon = visible?Icons.visibility:Icons.visibility_off;
    emit(LoginChangePasswordVisibilityState());
  }
  void userLogin({
    required String email,
    required String password,
  })
  {
    emit(LoginLoadingState());
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password
    ).then((value) {
      emit(LoginSuccessState(value.user!.uid));
    }
    ).catchError((error){
      print(error.toString());
      emit(LoginErrorState(error.toString()));
    });
  }
}