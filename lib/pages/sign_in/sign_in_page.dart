import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_freezed_injectable/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:flutter_bloc_freezed_injectable/injection.dart';
import 'package:flutter_bloc_freezed_injectable/pages/sign_in/widgets/sign_in_form.dart';


class SignInPage extends StatelessWidget {

  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Welcome Back!',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: CustomScrollView(
            reverse: true,
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(10.0),
                        height: 270,
                        width: 270,
                        child: Image.asset('assets/images/home.webp')),
                    Expanded(
                      flex: 2,
                      child: BlocProvider(
                        create: (_) => getIt<SignInFormBloc>(),
                        child: SignInForm(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
