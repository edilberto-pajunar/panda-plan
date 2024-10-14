import 'package:drift/drift.dart';

class Task extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get task => text().named("task")();
  TextColumn get description => text().named("description")();
  BoolColumn get isDone => boolean().named("isDone")();
}
