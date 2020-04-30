import 'package:captube/viewmodels/episode_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/viewmodel_provider.dart';
import 'package:captube/datamodels/episode_item_model.dart';
import 'episode_item.dart';
//import 'package:captube/viewmodels/episode_list_view_model.dart';


class EpisodesList extends StatelessWidget {
  final List<EpisodeItemModel> episodes;
  EpisodesList({this.episodes});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<EpisodeListViewModel>.withConsumer(
      viewModel: EpisodeListViewModel(),
      builder: (context, model, child) => Wrap(
        spacing: 10,
        runSpacing: 10,
        children: <Widget>[
          ...episodes
              .asMap()
              .map((index, episode) => MapEntry(
                    index,
                    GestureDetector(
                      child: EpisodeItem(model: episode),
                      onTap: () => model.navigateToEpisode(episode.id),
                    ),
                )
              )
              .values
              .toList()
        ],
      ),
    );
  }
}
