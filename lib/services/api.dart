import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:captube/datamodels/episode_item_model.dart';
import 'package:captube/datamodels/detail_item_model.dart';

class Api {
  static const String _apiEndpoint = 'http://captube.net/api/v1/archive';

  Future<dynamic> getEpisodes() async {
    var response;
    //try{
    response = await http.get('$_apiEndpoint/list');
    if (response.statusCode == 200) {
      var episodes = (json.decode(response.body)['archives'] as List)
          .map((episode) => EpisodeItemModel.fromJson(episode))
          .toList();
      return episodes;
    }
    return 'Could not fetch the episodes at this time';
  }

  Future<dynamic> getDetails(id) async {
    var response2;
    String _id = id;
    //var _id = '4969f623-014e-46a8-b82e-b2c5c268627d';

    response2 = await http.get('$_apiEndpoint/$_id');
    if (response2.statusCode == 200) {
      var details = (json.decode(response2.body)['items'] as List)
          .map((detail) => DetailItemModel.fromJson(detail))
          .toList();
      details.sort((a, b) => a.startTime.compareTo(b.startTime));
      return details;
    }

    // something wrong happened
    return 'Could not fetch the episodes at this time';
  }
}
