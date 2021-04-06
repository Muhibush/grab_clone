import 'package:dio/dio.dart';
import 'package:grab_clone/models/discovery_model.dart';
import 'dart:convert';

class DiscoveryRepository {
  Future<List<DiscoveryModel>> getActionsRanking() async {
    try {
      List<DiscoveryModel> result = [];
      Response<String> response = await Dio().get(
          'https://5e940dd0c7393c0016de4d44.mockapi.io/discovery/list_post');

      if (response != null) {
        var json = jsonDecode(response.data);
        json.forEach((v) {
          result.add(DiscoveryModel.fromJson(v));
        });
      }

      return result;
    } on DioError catch (e) {
      if (e.response != null) {
        var json = jsonDecode(e.response.data);
        throw json["message"];
      } else {
        throw "error connection";
      }
    }
  }
}
