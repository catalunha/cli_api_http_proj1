import 'package:args/command_runner.dart';
import 'package:cli_api_http_proj1/datasource/datasource.dart';
import 'package:cli_api_http_proj1/datasource/info_http.dart';

import '../../repositories/info_repository.dart';
import 'subcmds/infos_get_id_subcmd.dart';
import 'subcmds/infos_get_subcmd.dart';

class InfosCommand extends Command {
  @override
  String get name => 'infos';
  @override
  String get description => 'Infos Operations';

  InfosCommand() {
    try {
      final DataSource dataSource = InfoHttp();
      final InfoRepository infoRepository =
          InfoRepository(dataSource: dataSource);
      addSubcommand(InfosGetSubcommand(
        repository: infoRepository,
      ));
      addSubcommand(InfosGetIdSubcommand(
        repository: infoRepository,
      ));
      // addSubcommand(InfosSaveSubcommand(
      //   studentRepository: studentRepository,
      // ));
      // addSubcommand(InfosDeleteSubcommand(
      //   studentRepository: studentRepository,
      // ));
    } catch (e) {
      print('Infos SubComandos com erro. Veja -h');
    }
  }
}
