import 'package:adapter_pattern/adaptee/sqlite.dart';
import 'package:adapter_pattern/interfaces/database.dart';

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
