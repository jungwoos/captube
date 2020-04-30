import 'package:captube/widgets/episodes_list/episodes_list.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/viewmodel_provider.dart';
//import 'package:captube/datamodels/season_details_model.dart';
import 'package:captube/viewmodels/episodes_view_model.dart';
//import 'package:captube/widgets/episodes_list/episodes_list.dart';
//import 'package:captube/widgets/season_details/season_details.dart';
import 'package:captube/datamodels/episode_item_model.dart';
//import 'package:captube/widgets/episodes_list/episode_item.dart';

class EpisodesView extends StatelessWidget {
  final List<EpisodeItemModel> episodes;
  const EpisodesView({Key key, this.episodes}) : super(key: key);
  //EpisodesView({this.episodes});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<EpisodesViewModel>.withConsumer(
      viewModel: EpisodesViewModel(),
      onModelReady: (model) => model.getEpisodes(),
      builder: (context, model, child) => SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              model.episodes == null
                ? CircularProgressIndicator()
                : EpisodesList(episodes: model.episodes),
            ],
        )
      ),
      
    );
  }
}
