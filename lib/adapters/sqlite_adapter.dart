import '../adaptee/SQLite.dart';
import '../interfaces/Database.dart';

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
