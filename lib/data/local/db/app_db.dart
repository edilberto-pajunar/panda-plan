import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:panda_plan/data/local/entity/task_entity.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'app_db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, "task.sqlite"));

    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [
  Task,
])
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<TaskData>> getTasks() async {
    return await select(task).get();
  }

  Future<TaskData> getTask(int id) async {
    return await (select(task)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future<bool> updateTask(TaskCompanion entity) async {
    return await update(task).replace(entity);
  }

  Future<int> insertTask(TaskCompanion entity) async {
    return await into(task).insert(entity);
  }

  Future<int> deleteTask(int id) async {
    return await (delete(task)..where((tbl) => tbl.id.equals(id))).go();
  }
}
