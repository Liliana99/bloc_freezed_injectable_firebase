import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_freezed_injectable/domain/blocs/sign_up_form/bloc/sign_up_bloc_bloc.dart';


import 'package:flutter_bloc_freezed_injectable/domain/core/value_validators.dart';
import 'package:flutter_bloc_freezed_injectable/infrastructure/auth/auth_failure_or_success.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBlocBloc, SignUpBlocState>(
        listener: (context, state) {
      if (state.authFailureOrSuccess == const AuthFailureOrSuccess.success()) {
        showSnackBar(
          context,
          const SnackBar(
            backgroundColor: Colors.blue,
            content: Text('Success'),
          ),
        );
      } else if (state.authFailureOrSuccess ==
          const AuthFailureOrSuccess.emailAlreadyInUse()) {
        showSnackBar(
          context,
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text('Email Already In Use'),
          ),
        );
      } else if (state.authFailureOrSuccess ==
          const AuthFailureOrSuccess.invalidEmailAndPassword()) {
        showSnackBar(
          context,
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text('Invalid Email And Password'),
          ),
        );
      } else if (state.authFailureOrSuccess ==
          const AuthFailureOrSuccess.serverError()) {
        showSnackBar(
          context,
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text('Server Error'),
          ),
        );
      }
    },
     builder: (context, state) {
      return Container(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 30,
          bottom: 30,
        ),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email address',
                ),
                autocorrect: false,
                autofocus: false,
                onChanged: (value) =>
                    BlocProvider.of<SignUpBlocBloc>(context).add(
                  SignUpBlocEvent.emailChange(value),
                ),
                validator: (_) => validateEmailAddress(
                        BlocProvider.of<SignUpBlocBloc>(context)
                            .state
                            .emailAddress)
                    ? null
                    : 'Invalid Email',
              ),
              TextFormField(
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                autocorrect: false,
                autofocus: false,
                obscureText: true,
                onChanged: (value) =>
                    BlocProvider.of<SignUpBlocBloc>(context).add(
                  SignUpBlocEvent.passwordChange(value),
                ),
                validator: (_) => validatePassword(
                        BlocProvider.of<SignUpBlocBloc>(context).state.password)
                    ? null
                    : 'Short Password',
              ),
              FlatButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: const BorderSide(color: Colors.blue),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: const Text(
                    'Let\'s Get Started',
                    // ignore: unnecessary_const
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  BlocProvider.of<SignUpBlocBloc>(context).add(
                    const SignUpBlocEvent.registerWithEmailAndPassword(),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login?',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    });
  }

  void showSnackBar(BuildContext context, SnackBar snackBar) {
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
