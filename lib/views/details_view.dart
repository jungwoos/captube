import 'package:flutter/material.dart';
import 'package:provider_architecture/viewmodel_provider.dart';
import 'package:captube/viewmodels/episode_details_view_model.dart';
import 'package:captube/widgets/detail_list/details_list.dart';

class DetailsView extends StatelessWidget {
  final String id;
  const DetailsView({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<EpisodeDetailsViewModel>.withConsumer(
      viewModel: EpisodeDetailsViewModel(),
      onModelReady: (model) => model.getDetail(id),
      builder: (context, model, child) => SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              model.details == null
                ? CircularProgressIndicator()
                : DetailList(details: model.details),
            ],
        )
      ),
    );
  }
}
