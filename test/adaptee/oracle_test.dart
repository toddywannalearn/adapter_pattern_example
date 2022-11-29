import 'package:adapter_pattern/adaptee/Oracle.dart';
import 'package:test/test.dart';

void main() {
  group('Oracle', () {
    test('Should insert a register', () {
      final oracle = Oracle();

      expect(oracle.insertOracle, returnsNormally);
    });

    test('Should update a register', () {
      final oracle = Oracle();

      expect(oracle.updateOracle, returnsNormally);
    });

    test('Should delete a register', () {
      final oracle = Oracle();

      expect(oracle.deleteOracle, returnsNormally);
    });
  });
}
