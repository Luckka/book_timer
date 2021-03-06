import 'package:book_timer/app/core/database/database.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseImpl implements Database {

  Isar? _databaseInstance;

  @override
  Future<Isar> openConnection() async{
    if(_databaseInstance == null){
      final dir = await getApplicationSupportDirectory();
      _databaseInstance = await Isar.open(
        schemas: [],
        directory: dir.path,
        inspector: true
      );
    }

    return _databaseInstance!;
  }
  
}