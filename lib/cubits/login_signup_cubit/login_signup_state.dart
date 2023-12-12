
class LoginCubitState {}
class LoginCubitInitialState extends LoginCubitState {}

class LoginCubitSucessState extends LoginCubitState {}

class LoginCubitFaliureState extends LoginCubitState {
 final String failure;

  LoginCubitFaliureState({required this.failure});
}

class LoginCubitLoadingState extends LoginCubitState {}
