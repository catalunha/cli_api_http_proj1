import 'package:args/command_runner.dart';

import '../../../repositories/repository.dart';

class InfosGetSubcommand extends Command {
  final Repository repository;
  InfosGetSubcommand({
    required this.repository,
  });

  @override
  String get name => 'get';
  @override
  String get description => 'Get all infos';

  @override
  Future<void> run() async {
    print('Search data...');
    try {
      final list = await repository.get();
      print('Infos count: ${list.length}');
      for (var info in list) {
        print('id: ${info.id} | typeString: ${info.typeString}');
        print(info.toString());
      }
    } catch (e) {
      print('Erro em Get Info');
      print(e);
    }
  }
}
