import 'dart:io';

import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'package:drift/drift.dart';

/// 로컬 데이터베이스 커넥션 헬퍼
LazyDatabase openDbConnection() {
  return LazyDatabase(() async {
    final dbDirectory = await getApplicationDocumentsDirectory();

    final file = File(
      p.join(dbDirectory.path, 'db.sqlite'),
    );

    return NativeDatabase.createInBackground(file);
  });
}
