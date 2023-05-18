// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cli_api_http_proj1/datasource/datasource.dart';
import 'package:cli_api_http_proj1/repositories/repository.dart';

import '../models/info_model.dart';

class InfoRepository extends Repository {
  final DataSource dataSource;
  InfoRepository({
    required this.dataSource,
  });

  @override
  Future<List<InfoModel>> get() => dataSource.get();
  @override
  Future<InfoModel> getId(String id) => dataSource.getId(id);
  @override
  Future<void> post(InfoModel model) => dataSource.post(model);
  @override
  Future<void> put(String id, InfoModel model) => dataSource.put(id, model);
  @override
  Future<void> delete(String id) => dataSource.delete(id);
}
