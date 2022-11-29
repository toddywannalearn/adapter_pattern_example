import 'package:adapter_pattern/adaptee/oracle.dart';
import 'package:adapter_pattern/adaptee/sqlite.dart';
import 'package:adapter_pattern/adapters/oracle_adapter.dart';
import 'package:adapter_pattern/adapters/sqlite_adapter.dart';

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
