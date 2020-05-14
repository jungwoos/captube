import 'package:flutter/material.dart';
import 'package:captube/datamodels/episode_item_model.dart';

class EpisodeItem extends StatelessWidget {
  final EpisodeItemModel model;
  const EpisodeItem({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: SizedBox(
        width: 360,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //SizedBox(
            Container(
              height: 200,
              child: Image.network(model.imageUrl, fit: BoxFit.cover,),
              alignment: Alignment.center,
            ),
            Container(
            //SizedBox(
              height: 50,
              child: Padding(
                padding: EdgeInsets.fromLTRB(12, 10, 12, 0),
                child: Text(
                    model.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                    softWrap: true,
                    maxLines: 2,
                ), 
              ),
            ),
            Container(
            //SizedBox(
              height: 15,
              child: Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Text(
                    'ID: ${model.id}',
                    style: TextStyle(fontSize: 10),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
