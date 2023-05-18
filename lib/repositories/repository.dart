import '../models/info_model.dart';

abstract class Repository {
  Future<List<InfoModel>> get();
  Future<InfoModel> getId(String id);
  Future<void> post(InfoModel model);
  Future<void> put(String id, InfoModel model);
  Future<void> delete(String id);
}
