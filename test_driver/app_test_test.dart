import 'package:flutter_driver/flutter_driver.dart';

import 'package:test/test.dart';

void main() {
  group('StartPage button click on SignInPage', () {
    final primaryFlatButton = find.byValueKey('flat_key');
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() {
      driver?.close();
    });

    test('StartPage ', () async {
      await driver.tap(primaryFlatButton);
    });
  });
}
