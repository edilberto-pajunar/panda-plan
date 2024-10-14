// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $TaskTable extends Task with TableInfo<$TaskTable, TaskData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TaskTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _taskMeta = const VerificationMeta('task');
  @override
  late final GeneratedColumn<String> task = GeneratedColumn<String>(
      'task', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isDoneMeta = const VerificationMeta('isDone');
  @override
  late final GeneratedColumn<bool> isDone = GeneratedColumn<bool>(
      'isDone', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("isDone" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [id, task, description, isDone];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'task';
  @override
  VerificationContext validateIntegrity(Insertable<TaskData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('task')) {
      context.handle(
          _taskMeta, task.isAcceptableOrUnknown(data['task']!, _taskMeta));
    } else if (isInserting) {
      context.missing(_taskMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('isDone')) {
      context.handle(_isDoneMeta,
          isDone.isAcceptableOrUnknown(data['isDone']!, _isDoneMeta));
    } else if (isInserting) {
      context.missing(_isDoneMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TaskData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TaskData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      task: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}task'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      isDone: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}isDone'])!,
    );
  }

  @override
  $TaskTable createAlias(String alias) {
    return $TaskTable(attachedDatabase, alias);
  }
}

class TaskData extends DataClass implements Insertable<TaskData> {
  final int id;
  final String task;
  final String description;
  final bool isDone;
  const TaskData(
      {required this.id,
      required this.task,
      required this.description,
      required this.isDone});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['task'] = Variable<String>(task);
    map['description'] = Variable<String>(description);
    map['isDone'] = Variable<bool>(isDone);
    return map;
  }

  TaskCompanion toCompanion(bool nullToAbsent) {
    return TaskCompanion(
      id: Value(id),
      task: Value(task),
      description: Value(description),
      isDone: Value(isDone),
    );
  }

  factory TaskData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TaskData(
      id: serializer.fromJson<int>(json['id']),
      task: serializer.fromJson<String>(json['task']),
      description: serializer.fromJson<String>(json['description']),
      isDone: serializer.fromJson<bool>(json['isDone']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'task': serializer.toJson<String>(task),
      'description': serializer.toJson<String>(description),
      'isDone': serializer.toJson<bool>(isDone),
    };
  }

  TaskData copyWith(
          {int? id, String? task, String? description, bool? isDone}) =>
      TaskData(
        id: id ?? this.id,
        task: task ?? this.task,
        description: description ?? this.description,
        isDone: isDone ?? this.isDone,
      );
  TaskData copyWithCompanion(TaskCompanion data) {
    return TaskData(
      id: data.id.present ? data.id.value : this.id,
      task: data.task.present ? data.task.value : this.task,
      description:
          data.description.present ? data.description.value : this.description,
      isDone: data.isDone.present ? data.isDone.value : this.isDone,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TaskData(')
          ..write('id: $id, ')
          ..write('task: $task, ')
          ..write('description: $description, ')
          ..write('isDone: $isDone')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, task, description, isDone);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskData &&
          other.id == this.id &&
          other.task == this.task &&
          other.description == this.description &&
          other.isDone == this.isDone);
}

class TaskCompanion extends UpdateCompanion<TaskData> {
  final Value<int> id;
  final Value<String> task;
  final Value<String> description;
  final Value<bool> isDone;
  const TaskCompanion({
    this.id = const Value.absent(),
    this.task = const Value.absent(),
    this.description = const Value.absent(),
    this.isDone = const Value.absent(),
  });
  TaskCompanion.insert({
    this.id = const Value.absent(),
    required String task,
    required String description,
    required bool isDone,
  })  : task = Value(task),
        description = Value(description),
        isDone = Value(isDone);
  static Insertable<TaskData> custom({
    Expression<int>? id,
    Expression<String>? task,
    Expression<String>? description,
    Expression<bool>? isDone,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (task != null) 'task': task,
      if (description != null) 'description': description,
      if (isDone != null) 'isDone': isDone,
    });
  }

  TaskCompanion copyWith(
      {Value<int>? id,
      Value<String>? task,
      Value<String>? description,
      Value<bool>? isDone}) {
    return TaskCompanion(
      id: id ?? this.id,
      task: task ?? this.task,
      description: description ?? this.description,
      isDone: isDone ?? this.isDone,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (task.present) {
      map['task'] = Variable<String>(task.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (isDone.present) {
      map['isDone'] = Variable<bool>(isDone.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaskCompanion(')
          ..write('id: $id, ')
          ..write('task: $task, ')
          ..write('description: $description, ')
          ..write('isDone: $isDone')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $TaskTable task = $TaskTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [task];
}

typedef $$TaskTableCreateCompanionBuilder = TaskCompanion Function({
  Value<int> id,
  required String task,
  required String description,
  required bool isDone,
});
typedef $$TaskTableUpdateCompanionBuilder = TaskCompanion Function({
  Value<int> id,
  Value<String> task,
  Value<String> description,
  Value<bool> isDone,
});

class $$TaskTableFilterComposer extends FilterComposer<_$AppDb, $TaskTable> {
  $$TaskTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get task => $state.composableBuilder(
      column: $state.table.task,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isDone => $state.composableBuilder(
      column: $state.table.isDone,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TaskTableOrderingComposer
    extends OrderingComposer<_$AppDb, $TaskTable> {
  $$TaskTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get task => $state.composableBuilder(
      column: $state.table.task,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isDone => $state.composableBuilder(
      column: $state.table.isDone,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$TaskTableTableManager extends RootTableManager<
    _$AppDb,
    $TaskTable,
    TaskData,
    $$TaskTableFilterComposer,
    $$TaskTableOrderingComposer,
    $$TaskTableCreateCompanionBuilder,
    $$TaskTableUpdateCompanionBuilder,
    (TaskData, BaseReferences<_$AppDb, $TaskTable, TaskData>),
    TaskData,
    PrefetchHooks Function()> {
  $$TaskTableTableManager(_$AppDb db, $TaskTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TaskTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TaskTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> task = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<bool> isDone = const Value.absent(),
          }) =>
              TaskCompanion(
            id: id,
            task: task,
            description: description,
            isDone: isDone,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String task,
            required String description,
            required bool isDone,
          }) =>
              TaskCompanion.insert(
            id: id,
            task: task,
            description: description,
            isDone: isDone,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TaskTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $TaskTable,
    TaskData,
    $$TaskTableFilterComposer,
    $$TaskTableOrderingComposer,
    $$TaskTableCreateCompanionBuilder,
    $$TaskTableUpdateCompanionBuilder,
    (TaskData, BaseReferences<_$AppDb, $TaskTable, TaskData>),
    TaskData,
    PrefetchHooks Function()>;

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$TaskTableTableManager get task => $$TaskTableTableManager(_db, _db.task);
}
