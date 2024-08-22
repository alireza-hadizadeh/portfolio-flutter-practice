import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();
  late final Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;

    _database = await initDB();
    return _database;
  }

  initDB() async {
    return await openDatabase(
        path.join(await getDatabasesPath(), "portfolio.db"),
        onCreate: (db, version) async {
      db.execute(
        "create table tbl_note (id INTEGER PRIMARY KEY AUTOINCREMENT,)"
        "name Text m description Text, note_date Text, note_time)",
      );
    }, version: 1);
  }
}
