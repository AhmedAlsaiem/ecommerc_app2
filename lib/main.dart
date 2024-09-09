import 'package:ecommerc_app2/cubits/login_signup_cubit/login_signup_cubit.dart';
import 'package:ecommerc_app2/firebase_options.dart';
import 'package:ecommerc_app2/views/logo_view/logo_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// Flutter Developer
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const TokotoApp());
}
// Ahmed Alsaien
class TokotoApp extends StatelessWidget {
  const TokotoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const MaterialApp(
        routes: {},
        debugShowCheckedModeBanner: false,
        home: SplashScreenLogo(), //ProductHome(),
      ),
    );
  }
}
