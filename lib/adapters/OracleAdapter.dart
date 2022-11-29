import 'package:adapter_pattern/adaptee/Oracle.dart';
import 'package:adapter_pattern/interfaces/Database.dart';

class OracleAdapter implements IDatabase {
  final Oracle? oracle;

  OracleAdapter(this.oracle);

  @override
  void delete() {
    oracle!.deleteOracle();
  }

  @override
  void insert() {
    oracle!.insertOracle();
  }

  @override
  void update() {
    oracle!.updateOracle();
  }
}
