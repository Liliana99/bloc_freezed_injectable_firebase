import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_freezed_injectable/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:flutter_bloc_freezed_injectable/pages/start/start_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() async {
  NavigatorObserver mockObserver;

  setUp(() {
    mockObserver = MockNavigatorObserver();
  });

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

  Future<void> _buildMainPage(WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: StartPage(),

      // This mocked observer will now receive all navigation events
      // that happen in our app.
      navigatorObservers: [mockObserver],
    ));

    // The tester.pumpWidget() call above just built our app widget
    // and triggered the pushObserver method on the mockObserver once.
    verify(mockObserver.didPush(any, any));
  }

  Future<void> _navigateToSigInPage(WidgetTester tester) async {
    
    // Tap the button which should navigate to the details page.
    //
    // By calling tester.pumpAndSettle(), we ensure that all animations
    // have completed before we continue further.
   await tester.tap(find.byKey(StartPage.flat_key));
   await tester.pumpAndSettle();
  }

  
 
}
