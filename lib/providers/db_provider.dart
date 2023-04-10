import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io';

class DBProvider {
  static Database? _database;
  //creacion de mi instancia
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database?> get database async {
    if (_database != null) return _database!;

    _database = await initDB();

    return _database;
  }

  Future initDB() async {
    //Path de donde almacenaremos la base de datos
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'ScansDB.db');
    print(path);

    //Creacion de la base de datos
    return _database = await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('''
        CREATE TABLE Scans(
          apellido VARCHAR(20),
          nombre VARCHAR(20),
          sexo VARCHAR(10),
          dni INTEGER PRIMARY KEY,
          fecha VARCHAR(10)


        )
        
        ''');
    });
  }
}
/*
required this.apellido,
    required this.nombre,
    required this.sexo,
    required this.dni,
    required this.fecha,
*/