import 'package:adapter_pattern/adaptee/SQLite.dart';
import 'package:adapter_pattern/interfaces/Database.dart';

class SQLiteAdapter implements IDatabase {
  final SQLite? sqLite;

  SQLiteAdapter(this.sqLite);

  @override
  void delete() {
    sqLite!.deleteSQLite();
  }

  @override
  void insert() {
    sqLite!.insertSQLite();
  }

  @override
  void update() {
    sqLite!.updateSQLite();
  }
}
