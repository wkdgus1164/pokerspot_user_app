import 'package:drift/drift.dart';

class RecentSearchEntity extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  DateTimeColumn get createdAt => dateTime()();
}
