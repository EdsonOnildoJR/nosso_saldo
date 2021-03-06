import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controllers/controllers.dart';
import 'widgets.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nosso Saldo",
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationUninitialized) {
            return SplashPage();
          }
          if (state is AuthenticationAuthenticated) {
            return HomePage();
          }
          if (state is AuthenticationLogin) {
            return LoginPage();
          }
          if (state is AuthenticationSignUp) {
            return SignupPage();
          }
          if (state is AuthenticationLoading) {
            return LoadingIndicator();
          }
          return SizedBox();
        },
      ),
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff181F3D),
        canvasColor: const Color(0xff181F3D),
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: const Color(0xffE42A61),
              secondary: const Color(0xff232C51),
              onSecondary: const Color(0xff2EB9E9),
            ),
        appBarTheme: AppBarTheme(
          elevation: 2,
          color: const Color(0xff232C51),
        ),
        fontFamily: "Montserrat",
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
