import 'package:flutter_test/flutter_test.dart';
import 'package:iso_languages/iso_languages.dart';

void main() {
  group('isoLanguage Function Tests', () {
    test('Returns the English name for a valid ISO code', () {
      String result = isoLanguage(shortName: 'ab');
      expect(result, 'Abkhaz');
    });

    test('Returns the native name for a valid ISO code when isNativeName is true', () {
      String result = isoLanguage(shortName: 'ab', isNativeName: true);
      expect(result, 'аҧсуа бызшәа');
    });

    test('Returns an empty string for an invalid ISO code', () {
      String result = isoLanguage(shortName: 'invalid_code');
      expect(result, '');
    });

    test('Handles case-insensitive ISO codes correctly', () {
      String resultLowerCase = isoLanguage(shortName: 'ab');
      String resultUpperCase = isoLanguage(shortName: 'AB');
      expect(resultLowerCase, resultUpperCase);
    });

    test('Handles empty input gracefully', () {
      String result = isoLanguage(shortName: '');
      expect(result, '');
    });
  });
}
