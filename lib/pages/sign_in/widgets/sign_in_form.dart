import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_freezed_injectable/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:flutter_bloc_freezed_injectable/domain/core/value_validators.dart';
import 'package:flutter_bloc_freezed_injectable/infrastructure/auth/auth_failure_or_success.dart';
import 'package:flutter_bloc_freezed_injectable/pages/sign_in/widgets/sign_up_button.dart';


class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
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
                      decoration: const InputDecoration(
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
                      decoration: const InputDecoration(
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
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Forgot your password?',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Column(
                  children: [
                    FlatButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: const BorderSide(color: Colors.blue),
                      ),
                      child: Container(
                        width: 160,
                        height: 40,
                        alignment: Alignment.center,
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        BlocProvider.of<SignInFormBloc>(context).add(
                          const SignInFormEvent.signInWithEmailAndPassword(),
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
                          'Don\'t have an account?',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const SignUpButton()
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

  // ignore: public_member_api_docs
  void showSnackBar(BuildContext context, SnackBar snackBar) {
    Scaffold.of(context).showSnackBar(snackBar);
  }
}

