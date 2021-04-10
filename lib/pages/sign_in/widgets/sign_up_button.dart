import 'package:flutter/material.dart';
import 'package:flutter_bloc_freezed_injectable/pages/register/sign_up.dart';
import 'package:page_transition/page_transition.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // ignore: unnecessary_statements
        FocusScope.of(context).unfocus;
        Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.leftToRight,
            child: const SignUpPage()),
      );
      },
      child: Text(
        'Sign Up?',
        style: TextStyle(
          color: Colors.blue[900],
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
