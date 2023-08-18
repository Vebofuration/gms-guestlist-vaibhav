import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guestlistvk/features/GuestList/bloc/guestlists_cubit.dart';
import 'package:guestlistvk/features/LogIn/bloc/login_cubit.dart';
import 'package:guestlistvk/features/LogIn/presentation/screens/login_screen.dart';
import 'package:guestlistvk/features/GuestList/presentation/Screens/main_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => GuestListsCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: MainScreen(),
        initialRoute: '/',
        routes: {
          '/': (context) =>  const LoginScreen(),
          '/mainScreen': (context) => const MainScreen(),
        },
      ),
    );
  }
}
