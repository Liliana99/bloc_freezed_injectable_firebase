import 'package:flutter/material.dart';
import 'package:flutter_bloc_freezed_injectable/pages/sign_in/sign_in_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key key}) : super(key: key);
  static const flat_key = Key('flat_key');

  void _navigateToSignInPage(BuildContext context) {
    final route = MaterialPageRoute(builder: (_) => SignInPage());
    Navigator.of(context).push(route);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Image.asset('assets/images/start.webp'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 28, color: Colors.blue[900]),
                ),
                Text(
                  'TELLSOUND ',
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(flex: 1),
                FlatButton(
                  key: flat_key,
                  onPressed: () {
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
                    child: Text(
                      'Login Start',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
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
                    Text(
                      'Sign Up?',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue[900],
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
