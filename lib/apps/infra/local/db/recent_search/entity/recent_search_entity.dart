import 'package:drift/drift.dart';

class RecentSearchEntity extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get image => text()();
  TextColumn get address => text()();
  TextColumn get openTime => text()();
  DateTimeColumn get createdAt => dateTime()();
}
