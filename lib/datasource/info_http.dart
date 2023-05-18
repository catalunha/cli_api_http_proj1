import 'dart:convert';

import 'package:cli_api_http_proj1/datasource/datasource.dart';
import 'package:http/http.dart' as http;
import '../models/info_model.dart';

class InfoHttp extends DataSource {
  @override
  Future<List<InfoModel>> get() async {
    final response = await http.get(Uri.parse('http://localhost:8080/infos'));
    if (response.statusCode != 200) {
      throw Exception();
    }
    List<dynamic> responseBodyJson = jsonDecode(response.body);
    if (responseBodyJson.isEmpty) {
      throw Exception('DataSource Infos não encontrados');
    }
    return responseBodyJson
        .map<InfoModel>((e) => InfoModel.fromMap(e))
        .toList();
  }

  @override
  Future<InfoModel> getId(String id) async {
    final response =
        await http.get(Uri.parse('http://localhost:8080/infos/$id'));
    if (response.statusCode != 200) {
      throw Exception();
    }
    final responseBodyJson = jsonDecode(response.body);
    if (responseBodyJson.isEmpty) {
      throw Exception('DataSource Info não encontrado');
    }
    return InfoModel.fromMap(responseBodyJson);
  }

  @override
  Future<void> post(InfoModel model) async {
    final response = await http.post(Uri.parse('http://localhost:8080/infos'),
        body: model.toJson(), headers: {'content-type': 'application/json'});
    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  @override
  Future<void> put(String id, InfoModel model) async {
    final response = await http.put(
        Uri.parse('http://localhost:8080/infos/$id'),
        body: model.toJson(),
        headers: {'content-type': 'application/json'});
    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  @override
  Future<void> patch(String id, Map<String, dynamic> map) async {
    final response = await http.put(
        Uri.parse('http://localhost:8080/infos/$id'),
        body: json.encode(map),
        headers: {'content-type': 'application/json'});
    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  @override
  Future<void> delete(String id) async {
    final response = await http.delete(
      Uri.parse('http://localhost:8080/infos/$id'),
    );
    if (response.statusCode != 200) {
      throw Exception();
    }
  }
}
