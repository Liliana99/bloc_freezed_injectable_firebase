import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_bloc_freezed_injectable/application/auth/sign_up_form/bloc/sign_up_bloc_bloc.dart';
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
      if (state.authFailureOrSuccess == AuthFailureOrSuccess.success()) {
        showSnackBar(
          context,
          SnackBar(
            backgroundColor: Colors.blue,
            content: Text('Success'),
          ),
        );
      } else if (state.authFailureOrSuccess ==
          AuthFailureOrSuccess.emailAlreadyInUse()) {
        showSnackBar(
          context,
          SnackBar(
            backgroundColor: Colors.red,
            content: Text('Email Already In Use'),
          ),
        );
      } else if (state.authFailureOrSuccess ==
          AuthFailureOrSuccess.invalidEmailAndPassword()) {
        showSnackBar(
          context,
          SnackBar(
            backgroundColor: Colors.red,
            content: Text('Invalid Email And Password'),
          ),
        );
      } else if (state.authFailureOrSuccess ==
          AuthFailureOrSuccess.serverError()) {
        showSnackBar(
          context,
          SnackBar(
            backgroundColor: Colors.red,
            content: Text('Server Error'),
          ),
        );
      }
    },
     builder: (context, state) {
      return Container(
        padding: EdgeInsets.only(
          left: 30,
          right: 30,
          top: 30,
          bottom: 30,
        ),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.only(
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
                decoration: InputDecoration(
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
                decoration: InputDecoration(
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
                  side: BorderSide(color: Colors.blue),
                ),
                child: Container(
                  child: Text(
                    'Let\'s Get Started',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  BlocProvider.of<SignUpBlocBloc>(context).add(
                    SignUpBlocEvent.registerWithEmailAndPassword(),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
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

  void showSnackBar(BuildContext context, Widget snackBar) {
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
