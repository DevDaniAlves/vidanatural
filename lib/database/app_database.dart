import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void createDatabase(){
  getDatabasesPath().then((dbPath){
    final String path = join(dbPath, "vidanatural.db");
    openDatabase(path, onCreate: (db, version) {
      db.execute("CREATE TABLE produtos ("
          "id INTENGER PRIMARY KEY, "
          "nome TEXT, "
          "Valor_Custo DECIMAL(6,2), "
          "Valor_Venda DECIMAL(6,2), "
          "Peso DECIMAL(6,2), "
          "Codigo_Barras VARCHAR(13), "
          "Quantidade INT(10)");
    }, version: 1);
  });
}