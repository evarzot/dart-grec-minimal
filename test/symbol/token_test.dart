import 'package:test/test.dart';
import 'package:grec_minimal/grec_minimal.dart';

void main() {
  group('for .getSimpleName', () {
    test('should get simple name of RRULE', () {
      expect(TokenOperator.getSimpleName(Token.RRULE), 'RRULE');
    });
    test('should get simple name of FREQ', () {
      expect(TokenOperator.getSimpleName(Token.FREQ), 'FREQ');
    });
    test('should get simple name of INTERNAL', () {
      expect(TokenOperator.getSimpleName(Token.INTERVAL), 'INTERVAL');
    });
    test('should get simple name of COUNT', () {
      expect(TokenOperator.getSimpleName(Token.COUNT), 'COUNT');
    });
    test('should get simple name of UNTIL', () {
      expect(TokenOperator.getSimpleName(Token.UNTIL), 'UNTIL');
    });
    test('should get simple name of BYDAY', () {
      expect(TokenOperator.getSimpleName(Token.BYDAY), 'BYDAY');
    });
    test('should fail to get simple name with invalid value', () {
      expect(
          () => TokenOperator.getSimpleName(null),
          throwsA(equals(
              'invalid token is given; something wrong in the library')));
    });
  });
}