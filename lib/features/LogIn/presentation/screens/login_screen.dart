import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guestlistvk/features/GuestList/presentation/Screens/main_screen.dart';
import '../../bloc/login_cubit.dart';
import '../../bloc/login_state.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final errMsg = context.select(
      (LoginCubit value) => value.state.errorMessage,
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // color: Colors.pinkAccent[100],
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.pinkAccent[100],
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Welcome",
                style: TextStyle(
                  // backgroundColor: Colors.pinkAccent[100],
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextField(
                onChanged: (value) =>
                    context.read<LoginCubit>().getemail(value),
                // style: TextStyle(
                //   backgroundColor: Colors.pink[200],
                // ),
                decoration: InputDecoration(
                    helperText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)))),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextField(
              obscureText: true,
              onChanged: (value) =>
                  context.read<LoginCubit>().getpassword(value),
              decoration: InputDecoration(
                helperText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
          BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state.isLoaded) {
                Navigator.pushReplacementNamed(context, '/mainScreen');
              }
            },
            builder: (context, state) {
              // return BlocBuilder<LoginCubit, LoginState>(
              //     builder: (context, state) {
              return Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<LoginCubit>().login();
                    },
                    child: state.isLoading
                        ? const CircularProgressIndicator()
                        : const Text("LogIn"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  errMsg.isNotEmpty
                      ? Text(
                          state.errorMessage,
                          style: const TextStyle(color: Colors.red),
                        )
                      : const SizedBox(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
