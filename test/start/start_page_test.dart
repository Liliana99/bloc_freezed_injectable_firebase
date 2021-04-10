import 'package:flutter/material.dart';

import 'package:flutter_bloc_freezed_injectable/domain/blocs/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:flutter_bloc_freezed_injectable/pages/sign_in/sign_in_page.dart';
import 'package:flutter_bloc_freezed_injectable/pages/start/start_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class MockMyBloc extends Mock implements SignInFormBloc {}

void main() async {
  NavigatorObserver mockObserver;
  // ignore: unused_local_variable
  SignInFormBloc bloc;
  MockMyBloc mockMyBloc;

  // ignore: unused_local_variable
  final getIt = GetIt.instance;

  setUp(() {
    mockObserver = MockNavigatorObserver();
    mockMyBloc = MockMyBloc();
    // ignore: non_constant_identifier_names
    final dependency_injection = GetIt.instance;
    // ignore: cascade_invocations
    dependency_injection.registerFactory<SignInFormBloc>(() => mockMyBloc);
    bloc = dependency_injection<SignInFormBloc>();
  });

  

  Future<void> _buildMainPage(WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: const StartPage(),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        //It means StartPage.
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SignInPage(),
      },
       
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
    await tester.tap(find.byKey(StartPage.flatKey));
    await tester.pumpAndSettle();
  }

  group('StartPage navigation tests', () {
    // ...
    testWidgets(
        'when tapping "Login Start" button, should navigate to SigIn page',
        (WidgetTester tester) async {
      await _buildMainPage(tester);
      await _navigateToSigInPage(tester);

      // By tapping the button, we should've now navigated to the SigInPage
      // page. The didPush() method should've been called...
      verify(mockObserver.didPush(any, any));

      // ...and there should be a SignInPage present in the widget tree...
      expect(find.byType(SignInPage), findsOneWidget);
    });
  });

  
}
