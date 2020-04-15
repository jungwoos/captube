//import 'package:captube/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:captube/datamodels/episode_item_model.dart';
import 'package:captube/locator.dart';
import 'package:captube/services/api.dart';
//import 'package:captube/routing/route_names.dart';

class EpisodesViewModel extends ChangeNotifier {
  final _api = locator<Api>();

  List<EpisodeItemModel> _episodes;
  List<EpisodeItemModel> get episodes => _episodes;

  Future getEpisodes() async {
    var episodeResults = await _api.getEpisodes();

    if (episodeResults is String) {
      // show error
    } else {
      _episodes = episodeResults;
    }

    notifyListeners();
  }
}
