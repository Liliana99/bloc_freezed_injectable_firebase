import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_freezed_injectable/domain/blocs/sign_up_form/bloc/sign_up_bloc_bloc.dart';

import 'package:flutter_bloc_freezed_injectable/pages/register/widgets/sign_up_form.dart';


import '../../injection.dart';


class SignUpPage extends StatelessWidget {

  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Create Account',
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
                        child: Image.asset('assets/images/sig_in_logo.webp')),
                    Expanded(
                      flex: 2,
                      child: BlocProvider(
                        create: (_) => getIt<SignUpBlocBloc>(),
                        child: SignUpForm(),
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
