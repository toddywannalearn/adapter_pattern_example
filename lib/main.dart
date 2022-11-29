import 'package:adapter_pattern/adaptee/Oracle.dart';
import 'package:adapter_pattern/adaptee/SQLite.dart';
import 'package:adapter_pattern/adapters/OracleAdapter.dart';
import 'package:adapter_pattern/adapters/SQLiteAdapter.dart';

void main(List<String> args) {
  //Calls not using the adapter
  var noAdapter = SQLite();

  print('\nSQLite without adapter');

  noAdapter.insertSQLite();
  noAdapter.updateSQLite();

  //Calls using the adapter
  var adapter = SQLiteAdapter(SQLite());

  print('\nSQLite Adapter');
  adapter.insert();
  adapter.update();
  adapter.delete();

  var adapter2 = OracleAdapter(Oracle());

  print('\nOracle Adapter');
  adapter2.insert();
  adapter2.update();
  adapter2.delete();
}
