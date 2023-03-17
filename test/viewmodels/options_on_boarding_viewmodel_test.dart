import 'package:flutter_test/flutter_test.dart';
import 'package:app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('OptionsOnBoardingViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
