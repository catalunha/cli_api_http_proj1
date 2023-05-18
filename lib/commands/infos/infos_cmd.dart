import 'package:args/command_runner.dart';
import 'package:cli_api_http_proj1/datasource/datasource.dart';
import 'package:cli_api_http_proj1/datasource/info_http_datasource.dart';

import '../../repositories/info_repository.dart';
import '../../repositories/repository.dart';
import 'subcmds/infos_delete_subcmd.dart';
import 'subcmds/infos_get_id_subcmd.dart';
import 'subcmds/infos_get_subcmd.dart';
import 'subcmds/infos_patch_subcmd.dart';
import 'subcmds/infos_post_subcmd.dart';
import 'subcmds/infos_put_subcmd.dart';

class InfosCommand extends Command {
  @override
  String get name => 'infos';
  @override
  String get description => 'Infos Operations';

  InfosCommand() {
    try {
      // final DataSource dataSource = InfoDio();
      final DataSource dataSource = InfoHttpDataSource();
      final Repository repository = InfoRepository(dataSource: dataSource);
      addSubcommand(InfosGetSubcommand(
        repository: repository,
      ));
      addSubcommand(InfosGetIdSubcommand(
        repository: repository,
      ));
      addSubcommand(InfosPostSubcommand(
        repository: repository,
      ));
      addSubcommand(InfosPutSubcommand(
        repository: repository,
      ));
      addSubcommand(InfosPatchSubcommand(
        repository: repository,
      ));
      addSubcommand(InfosDeleteSubcommand(
        repository: repository,
      ));
    } catch (e) {
      print('Infos SubComandos com erro. Veja -h');
    }
  }
}
