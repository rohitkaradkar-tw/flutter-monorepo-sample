import 'package:flutter_test/flutter_test.dart';
import 'package:homescreen_feature/awesome.dart';


void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
