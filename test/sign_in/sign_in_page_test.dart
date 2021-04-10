import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_freezed_injectable/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // ignore: unused_element
  Widget makeWidgetTestable({Widget child, SignInFormBloc signInBloc}) {
    return MaterialApp(
      home: BlocProvider<SignInFormBloc>(
        create: (context) {
          return signInBloc;
        },
        child: child,
      ),
    );
  }

  testWidgets('SigInPage', (WidgetTester tester) async {
    
     await tester.pumpWidget(MaterialApp( home: Container(),),);
  });
}
