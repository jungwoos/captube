import 'package:flutter/material.dart';
import 'package:captube/datamodels/detail_item_model.dart';
import 'package:captube/locator.dart';
import 'package:captube/services/api.dart';

class EpisodeDetailsViewModel extends ChangeNotifier {
  final _api = locator<Api>();

  List<DetailItemModel> _details;
  List<DetailItemModel> get details => _details;

  Future getDetail(String id) async {
    var detailResults = await _api.getDetails(id);

    if (detailResults is String) {
      // show error
    } else {
      _details = detailResults;
    }

    notifyListeners();
  }
}
