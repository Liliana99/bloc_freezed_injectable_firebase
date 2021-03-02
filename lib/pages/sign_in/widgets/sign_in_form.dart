import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_freezed_injectable/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:flutter_bloc_freezed_injectable/domain/core/value_validators.dart';
import 'package:flutter_bloc_freezed_injectable/infrastructure/auth/auth_failure_or_success.dart';
import 'package:flutter_bloc_freezed_injectable/pages/sing_up/sign_up.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
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
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
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
                          BlocProvider.of<SignInFormBloc>(context).add(
                        SignInFormEvent.emailChange(value),
                      ),
                      validator: (_) => validateEmailAddress(
                              BlocProvider.of<SignInFormBloc>(context)
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
                          BlocProvider.of<SignInFormBloc>(context).add(
                        SignInFormEvent.passwordChange(value),
                      ),
                      validator: (_) => validatePassword(
                              BlocProvider.of<SignInFormBloc>(context)
                                  .state
                                  .password)
                          ? null
                          : 'Short Password',
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot your password?',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                Column(
                  children: [
                    FlatButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.blue),
                      ),
                      child: Container(
                        width: 160,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        BlocProvider.of<SignInFormBloc>(context).add(
                          SignInFormEvent.signInWithEmailAndPassword(),
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
                          'Don\'t have an account?',
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
                            FocusScope.of(context).unfocus;
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return SignUpPage();
                              }),
                            );
                          },
                          child: Text(
                            'Sign Up?',
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
              ],
            ),
          ),
        );
      },
    );
  }

  void showSnackBar(BuildContext context, Widget snackBar) {
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
