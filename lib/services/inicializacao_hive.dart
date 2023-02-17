import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class InicializandoHive {
  static void diretorio() async {
    final diretorio = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(diretorio.path);
  }
}
