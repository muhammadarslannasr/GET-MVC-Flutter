import 'dart:async';
import 'package:floor/floor.dart';
import 'package:flutter_get_api_mvc/local_database/task.dart';
import 'package:flutter_get_api_mvc/local_database/task_dao.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
part 'database.g.dart';

@Database(version: 1, entities: [Task])
abstract class FlutterDatabase extends FloorDatabase {
  TaskDao get taskDao;
}