import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../models/message.dart';

class DBHelper {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  static Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'messages.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE messages(
            id TEXT PRIMARY KEY,
            toId TEXT,
            msg TEXT,
            read TEXT,
            type TEXT,
            fromId TEXT,
            sent TEXT
          )
        ''');
      },
    );
  }

  static Future<void> insertMessage(Message message) async {
    final db = await database;
    await db.insert('messages', message.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Message>> getMessages() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('messages');
    return List.generate(maps.length, (i) {
      return Message.fromJson(maps[i]);
    });
  }

  static Future<void> deleteMessage(String id) async {
    final db = await database;
    await db.delete('messages', where: 'id = ?', whereArgs: [id]);
  }
}