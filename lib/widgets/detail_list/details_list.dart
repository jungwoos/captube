import 'package:flutter/material.dart';
import 'package:captube/datamodels/detail_item_model.dart';
import 'package:captube/widgets/detail_list/detail_item.dart';

class DetailList extends StatelessWidget {
  final List<DetailItemModel> details;
  DetailList({this.details});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: <Widget>[
        ...details.map(
          (detail) => DetailItem(model: detail),
        )
      ],
    );
  }
}
