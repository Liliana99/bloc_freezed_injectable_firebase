import 'package:flutter/material.dart';
import 'package:flutter_bloc_freezed_injectable/pages/sign_in/sign_in_page.dart';
import 'package:flutter_bloc_freezed_injectable/pages/sign_in/widgets/sign_up_button.dart';


class StartPage extends StatelessWidget {

  const StartPage({Key key}) : super(key: key);
  static const flatKey = Key('flat_key');

  void _navigateToSignInPage(BuildContext context) {
    final route = MaterialPageRoute(builder: (_) => const SignInPage());
    Navigator.of(context).push(route);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          // ignore: sized_box_for_whitespace
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                Expanded(
                  flex: 4,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Image.asset('assets/images/start.webp'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 28, color: Colors.blue[900]),
                ),
                const Text(
                  'TELLSOUND ',
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(flex: 1),
                FlatButton(
                  key: flatKey,
                  onPressed: () {
                    //Navigate to SignInPage
                    _navigateToSignInPage(context);
                  },
                  color: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Colors.blue[700],
                    ),
                  ),
                  child: Container(
                    width: 160,
                    height: 40,
                    alignment: Alignment.center,
                    child: const Text(
                      'Login Start',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                   const SignUpButton(),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
