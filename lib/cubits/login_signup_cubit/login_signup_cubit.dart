import 'package:ecommerc_app2/cubits/login_signup_cubit/login_signup_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit() : super(LoginCubitInitialState());

  void addUserEmailAndPasswordF(String email, String password) async {
    emit(LoginCubitLoadingState());
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(LoginCubitSucessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(LoginCubitFaliureState(failure: 'weak-password'));
      } else if (e.code == 'email-already-in-use') {
        emit(LoginCubitFaliureState(failure: 'email-already-in-use'));
      }
    } catch (e) {
      emit(LoginCubitFaliureState(failure: e.toString().substring(0, 40)));
    }
  }

  void signEmailPassword(String email, String password) async {
    emit(LoginCubitLoadingState());

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(LoginCubitSucessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginCubitLoadingState());
      } else if (e.code == 'wrong-password') {
        emit(LoginCubitLoadingState());
      }
    }
  }
}
