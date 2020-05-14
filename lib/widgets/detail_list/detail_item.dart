import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:captube/datamodels/detail_item_model.dart';

class DetailItem extends StatelessWidget {
  final DetailItemModel model;
  const DetailItem({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: CachedNetworkImage(
            //placeholder: CircularProgressIndicator(),
            imageUrl: model.url,
      )
      //child: Image.network(model.url, width: 640, height: 360)
      ,fit: BoxFit.fill,
    );
  }
}
